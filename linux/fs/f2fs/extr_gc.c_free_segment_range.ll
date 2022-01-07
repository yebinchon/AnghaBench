; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_free_segment_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_free_segment_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i64 }
%struct.gc_inode_list = type { i32, i32 }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@NR_CURSEG_TYPE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@FG_GC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"segno %u should be free but still inuse!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, i32)* @free_segment_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_segment_range(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gc_inode_list, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %24, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NR_CURSEG_TYPE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @allocate_segment_for_resize(%struct.f2fs_sb_info* %19, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %62, %27
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %12, i32 0, i32 0
  %35 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %12, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_NOFS, align 4
  %38 = call i32 @RADIX_TREE_INIT(i32 %36, i32 %37)
  store i32 %38, i32* %34, align 4
  %39 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %12, i32 0, i32 1
  %40 = getelementptr inbounds %struct.gc_inode_list, %struct.gc_inode_list* %12, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @LIST_HEAD_INIT(i32 %41)
  store i32 %42, i32* %39, align 4
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @FG_GC, align 4
  %49 = call i32 @do_garbage_collect(%struct.f2fs_sb_info* %46, i32 %47, %struct.gc_inode_list* %12, i32 %48)
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = call i32 @put_gc_inode(%struct.gc_inode_list* %12)
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @get_valid_blocks(%struct.f2fs_sb_info* %54, i32 %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %33
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %97

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %64 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %9, align 4
  br label %29

70:                                               ; preds = %29
  %71 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %72 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @f2fs_sync_fs(i32 %73, i32 1)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %97

79:                                               ; preds = %70
  %80 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %81 = call i32 @FREE_I(%struct.f2fs_sb_info* %80)
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @find_next_inuse(i32 %81, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ule i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @f2fs_err(%struct.f2fs_sb_info* %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %94 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %93, i32 1)
  br label %95

95:                                               ; preds = %89, %79
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %77, %58
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @allocate_segment_for_resize(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @RADIX_TREE_INIT(i32, i32) #1

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_garbage_collect(%struct.f2fs_sb_info*, i32, %struct.gc_inode_list*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_gc_inode(%struct.gc_inode_list*) #1

declare dso_local i64 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @find_next_inuse(i32, i32, i32) #1

declare dso_local i32 @FREE_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
