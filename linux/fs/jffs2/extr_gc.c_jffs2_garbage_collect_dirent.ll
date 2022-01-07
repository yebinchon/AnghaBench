; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_gc.c_jffs2_garbage_collect_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_gc.c_jffs2_garbage_collect_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_eraseblock = type { i32 }
%struct.jffs2_inode_info = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.jffs2_full_dirent = type { i64, %struct.jffs2_raw_dirent*, i32 }
%struct.jffs2_raw_dirent = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_DIRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"jffs2_reserve_space_gc of %zd bytes for garbage_collect_dirent failed: %d\0A\00", align 1
@ALLOC_GC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"jffs2_write_dirent in garbage_collect_dirent failed: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_inode_info*, %struct.jffs2_full_dirent*)* @jffs2_garbage_collect_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_garbage_collect_dirent(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, %struct.jffs2_inode_info* %2, %struct.jffs2_full_dirent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.jffs2_sb_info*, align 8
  %7 = alloca %struct.jffs2_eraseblock*, align 8
  %8 = alloca %struct.jffs2_inode_info*, align 8
  %9 = alloca %struct.jffs2_full_dirent*, align 8
  %10 = alloca %struct.jffs2_full_dirent*, align 8
  %11 = alloca %struct.jffs2_raw_dirent, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %6, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %7, align 8
  store %struct.jffs2_inode_info* %2, %struct.jffs2_inode_info** %8, align 8
  store %struct.jffs2_full_dirent* %3, %struct.jffs2_full_dirent** %9, align 8
  %14 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %15 = call i8* @cpu_to_je16(i32 %14)
  %16 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 11
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @JFFS2_NODETYPE_DIRENT, align 4
  %18 = call i8* @cpu_to_je16(i32 %17)
  %19 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 10
  store i8* %18, i8** %19, align 8
  %20 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %21 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %20, i32 0, i32 1
  %22 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %21, align 8
  %23 = call i32 @strlen(%struct.jffs2_raw_dirent* %22)
  %24 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add i64 96, %27
  %29 = call i8* @cpu_to_je32(i64 %28)
  %30 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 9
  store i8* %29, i8** %30, align 8
  %31 = call i64 @crc32(i32 0, %struct.jffs2_raw_dirent* %11, i32 0)
  %32 = call i8* @cpu_to_je32(i64 %31)
  %33 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 8
  store i8* %32, i8** %33, align 8
  %34 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %35 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @cpu_to_je32(i64 %38)
  %40 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 7
  store i8* %39, i8** %40, align 8
  %41 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %42 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = call i8* @cpu_to_je32(i64 %44)
  %46 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 6
  store i8* %45, i8** %46, align 8
  %47 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %48 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @cpu_to_je32(i64 %49)
  %51 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 5
  store i8* %50, i8** %51, align 8
  %52 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %53 = call i64 @JFFS2_F_I_MTIME(%struct.jffs2_inode_info* %52)
  %54 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %55 = call i64 @JFFS2_F_I_CTIME(%struct.jffs2_inode_info* %54)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %4
  %58 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %59 = call i64 @JFFS2_F_I_MTIME(%struct.jffs2_inode_info* %58)
  %60 = call i8* @cpu_to_je32(i64 %59)
  %61 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 4
  store i8* %60, i8** %61, align 8
  br label %65

62:                                               ; preds = %4
  %63 = call i8* @cpu_to_je32(i64 0)
  %64 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 4
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %67 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 3
  store i32 %68, i32* %69, align 8
  %70 = call i64 @crc32(i32 0, %struct.jffs2_raw_dirent* %11, i32 88)
  %71 = call i8* @cpu_to_je32(i64 %70)
  %72 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %74 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %73, i32 0, i32 1
  %75 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %74, align 8
  %76 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @crc32(i32 0, %struct.jffs2_raw_dirent* %75, i32 %77)
  %79 = call i8* @cpu_to_je32(i64 %78)
  %80 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %82 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add i64 96, %84
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32 %88)
  %90 = call i32 @jffs2_reserve_space_gc(%struct.jffs2_sb_info* %81, i32 %86, i32* %12, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %65
  %94 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add i64 96, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %13, align 4
  %100 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %5, align 4
  br label %127

102:                                              ; preds = %65
  %103 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %104 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %105 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %106 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %105, i32 0, i32 1
  %107 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %106, align 8
  %108 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ALLOC_GC, align 4
  %111 = call %struct.jffs2_full_dirent* @jffs2_write_dirent(%struct.jffs2_sb_info* %103, %struct.jffs2_inode_info* %104, %struct.jffs2_raw_dirent* %11, %struct.jffs2_raw_dirent* %107, i32 %109, i32 %110)
  store %struct.jffs2_full_dirent* %111, %struct.jffs2_full_dirent** %10, align 8
  %112 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %113 = call i64 @IS_ERR(%struct.jffs2_full_dirent* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %117 = call i32 @PTR_ERR(%struct.jffs2_full_dirent* %116)
  %118 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %120 = call i32 @PTR_ERR(%struct.jffs2_full_dirent* %119)
  store i32 %120, i32* %5, align 4
  br label %127

121:                                              ; preds = %102
  %122 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %123 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %10, align 8
  %124 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %125 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %124, i32 0, i32 1
  %126 = call i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info* %122, %struct.jffs2_full_dirent* %123, i32* %125)
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %121, %115, %93
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i32 @strlen(%struct.jffs2_raw_dirent*) #1

declare dso_local i8* @cpu_to_je32(i64) #1

declare dso_local i64 @crc32(i32, %struct.jffs2_raw_dirent*, i32) #1

declare dso_local i64 @JFFS2_F_I_MTIME(%struct.jffs2_inode_info*) #1

declare dso_local i64 @JFFS2_F_I_CTIME(%struct.jffs2_inode_info*) #1

declare dso_local i32 @jffs2_reserve_space_gc(%struct.jffs2_sb_info*, i32, i32*, i32) #1

declare dso_local i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local %struct.jffs2_full_dirent* @jffs2_write_dirent(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.jffs2_full_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.jffs2_full_dirent*) #1

declare dso_local i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info*, %struct.jffs2_full_dirent*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
