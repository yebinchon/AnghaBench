; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___remove_dirty_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___remove_dirty_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.dirty_seglist_info = type { i32, i32*, i32* }
%struct.seg_entry = type { i32 }

@DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32)* @__remove_dirty_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_dirty_segment(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dirty_seglist_info*, align 8
  %8 = alloca %struct.seg_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = call %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info* %10)
  store %struct.dirty_seglist_info* %11, %struct.dirty_seglist_info** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %14 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @test_and_clear_bit(i32 %12, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %24 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %22, %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DIRTY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %36, i32 %37)
  store %struct.seg_entry* %38, %struct.seg_entry** %8, align 8
  %39 = load %struct.seg_entry*, %struct.seg_entry** %8, align 8
  %40 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %44 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @test_and_clear_bit(i32 %42, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %35
  %53 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %54 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52, %35
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @get_valid_blocks(%struct.f2fs_sb_info* %62, i32 %63, i32 1)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info* %67, i32 %68)
  %70 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %71 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @clear_bit(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %66, %61
  br label %75

75:                                               ; preds = %74, %31
  ret void
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
