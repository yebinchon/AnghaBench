; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_foreach_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_foreach_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_log_descriptor = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_log_header_host = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFS2_METATYPE_LH = common dso_local global i64 0, align 8
@GFS2_METATYPE_LD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, i32, i32, i32)* @foreach_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_descriptor(%struct.gfs2_jdesc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_jdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.gfs2_log_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.gfs2_log_header_host, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %19 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.gfs2_sbd* @GFS2_SB(i32 %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 8, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, 3
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = zext i32 %26 to i64
  %28 = and i64 %27, -4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %16, align 4
  br label %30

30:                                               ; preds = %135, %75, %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %138

34:                                               ; preds = %30
  %35 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @gfs2_replay_read_block(%struct.gfs2_jdesc* %35, i32 %36, %struct.buffer_head** %11)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %139

42:                                               ; preds = %34
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %45 = call i64 @gfs2_meta_check(%struct.gfs2_sbd* %43, %struct.buffer_head* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = call i32 @brelse(%struct.buffer_head* %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %139

52:                                               ; preds = %42
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.gfs2_log_descriptor*
  store %struct.gfs2_log_descriptor* %56, %struct.gfs2_log_descriptor** %12, align 8
  %57 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %12, align 8
  %58 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32_to_cpu(i32 %59)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %12, align 8
  %63 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @be32_to_cpu(i32 %65)
  %67 = load i64, i64* @GFS2_METATYPE_LH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %52
  %70 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @get_log_header(%struct.gfs2_jdesc* %70, i32 %71, %struct.gfs2_log_header_host* %17)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %77 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc* %76, i32* %7)
  %78 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %79 = call i32 @brelse(%struct.buffer_head* %78)
  br label %30

80:                                               ; preds = %69
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %85 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @GFS2_I(i32 %86)
  %88 = call i32 @gfs2_consist_inode(i32 %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %83, %80
  %92 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %5, align 4
  br label %139

95:                                               ; preds = %52
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %98 = load i32, i32* @GFS2_METATYPE_LD, align 4
  %99 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %96, %struct.buffer_head* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %139

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %109 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %15, align 8
  %115 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %12, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @lops_scan_elements(%struct.gfs2_jdesc* %115, i32 %116, %struct.gfs2_log_descriptor* %117, i32* %118, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %107
  %124 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %5, align 4
  br label %139

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %132, %127
  %129 = load i32, i32* %14, align 4
  %130 = add i32 %129, -1
  store i32 %130, i32* %14, align 4
  %131 = icmp ne i32 %129, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %6, align 8
  %134 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc* %133, i32* %7)
  br label %128

135:                                              ; preds = %128
  %136 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %137 = call i32 @brelse(%struct.buffer_head* %136)
  br label %30

138:                                              ; preds = %30
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %123, %101, %91, %47, %40
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @gfs2_replay_read_block(%struct.gfs2_jdesc*, i32, %struct.buffer_head**) #1

declare dso_local i64 @gfs2_meta_check(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @get_log_header(%struct.gfs2_jdesc*, i32, %struct.gfs2_log_header_host*) #1

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc*, i32*) #1

declare dso_local i32 @gfs2_consist_inode(i32) #1

declare dso_local i32 @GFS2_I(i32) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @lops_scan_elements(%struct.gfs2_jdesc*, i32, %struct.gfs2_log_descriptor*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
