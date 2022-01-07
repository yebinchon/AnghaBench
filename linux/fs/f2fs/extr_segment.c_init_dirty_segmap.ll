; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_init_dirty_segmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_init_dirty_segmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i16 }
%struct.dirty_seglist_info = type { i32 }
%struct.free_segmap_info = type { i32 }

@DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @init_dirty_segmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dirty_segmap(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.dirty_seglist_info*, align 8
  %4 = alloca %struct.free_segmap_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %9 = call %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info* %8)
  store %struct.dirty_seglist_info* %9, %struct.dirty_seglist_info** %3, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %11 = call %struct.free_segmap_info* @FREE_I(%struct.f2fs_sb_info* %10)
  store %struct.free_segmap_info* %11, %struct.free_segmap_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %1, %39, %48, %51
  %13 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %15 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @find_next_inuse(%struct.free_segmap_info* %13, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %20 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %19)
  %21 = icmp uge i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %62

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call zeroext i16 @get_valid_blocks(%struct.f2fs_sb_info* %26, i32 %27, i32 0)
  store i16 %28, i16* %7, align 2
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %32 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load i16, i16* %7, align 2
  %38 = icmp ne i16 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %23
  br label %12

40:                                               ; preds = %36
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %44 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %43, i32 0, i32 0
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %50 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %49, i32 1)
  br label %12

51:                                               ; preds = %40
  %52 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %3, align 8
  %53 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DIRTY, align 4
  %58 = call i32 @__locate_dirty_segment(%struct.f2fs_sb_info* %55, i32 %56, i32 %57)
  %59 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %3, align 8
  %60 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  br label %12

62:                                               ; preds = %22
  ret void
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.free_segmap_info* @FREE_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @find_next_inuse(%struct.free_segmap_info*, i32, i32) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local zeroext i16 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__locate_dirty_segment(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
