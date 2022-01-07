; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_databuf_lo_scan_elements.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_databuf_lo_scan_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32, i32, i32 }
%struct.gfs2_log_descriptor = type { i32, i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32 }
%struct.buffer_head = type { i64, i32 }

@GFS2_LOG_DESC_JDATA = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, i32, %struct.gfs2_log_descriptor*, i32*, i32)* @databuf_lo_scan_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @databuf_lo_scan_elements(%struct.gfs2_jdesc* %0, i32 %1, %struct.gfs2_log_descriptor* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_jdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_log_descriptor*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_glock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.gfs2_log_descriptor* %2, %struct.gfs2_log_descriptor** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %22 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.gfs2_inode* @GFS2_I(i32 %23)
  store %struct.gfs2_inode* %24, %struct.gfs2_inode** %12, align 8
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 0
  %27 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  store %struct.gfs2_glock* %27, %struct.gfs2_glock** %13, align 8
  %28 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %29 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %41, label %34

34:                                               ; preds = %5
  %35 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %36 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = load i32, i32* @GFS2_LOG_DESC_JDATA, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %5
  store i32 0, i32* %6, align 4
  br label %117

42:                                               ; preds = %34
  %43 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %44 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc* %43, i32* %8)
  br label %45

45:                                               ; preds = %110, %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %115

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %10, align 8
  %51 = load i32, i32* %49, align 4
  %52 = call i64 @be64_to_cpu(i32 %51)
  store i64 %52, i64* %17, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %10, align 8
  %55 = load i32, i32* %53, align 4
  %56 = call i64 @be64_to_cpu(i32 %55)
  store i64 %56, i64* %18, align 8
  %57 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %58 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @gfs2_revoke_check(%struct.gfs2_jdesc* %61, i64 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  br label %110

67:                                               ; preds = %48
  %68 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @gfs2_replay_read_block(%struct.gfs2_jdesc* %68, i32 %69, %struct.buffer_head** %15)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %19, align 4
  store i32 %74, i32* %6, align 4
  br label %117

75:                                               ; preds = %67
  %76 = load %struct.gfs2_glock*, %struct.gfs2_glock** %13, align 8
  %77 = load i64, i64* %17, align 8
  %78 = call %struct.buffer_head* @gfs2_meta_new(%struct.gfs2_glock* %76, i64 %77)
  store %struct.buffer_head* %78, %struct.buffer_head** %16, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i64 %81, i64 %84, i32 %87)
  %89 = load i64, i64* %18, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %75
  %92 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %93 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %20, align 8
  %96 = load i32, i32* @GFS2_MAGIC, align 4
  %97 = call i32 @cpu_to_be32(i32 %96)
  %98 = load i32*, i32** %20, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %75
  %100 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %101 = call i32 @mark_buffer_dirty(%struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  %106 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %107 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %99, %66
  %111 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %112 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc* %111, i32* %8)
  %113 = load i32, i32* %14, align 4
  %114 = add i32 %113, -1
  store i32 %114, i32* %14, align 4
  br label %45

115:                                              ; preds = %45
  %116 = load i32, i32* %19, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %73, %41
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @gfs2_revoke_check(%struct.gfs2_jdesc*, i64, i32) #1

declare dso_local i32 @gfs2_replay_read_block(%struct.gfs2_jdesc*, i32, %struct.buffer_head**) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(%struct.gfs2_glock*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
