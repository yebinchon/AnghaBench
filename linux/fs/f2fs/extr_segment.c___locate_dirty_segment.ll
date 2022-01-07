; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___locate_dirty_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___locate_dirty_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.dirty_seglist_info = type { i32*, i32* }
%struct.seg_entry = type { i32 }

@DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32)* @__locate_dirty_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__locate_dirty_segment(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
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
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @IS_CURSEG(%struct.f2fs_sb_info* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %78

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %20 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @test_and_set_bit(i32 %18, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %17
  %29 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %30 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %28, %17
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DIRTY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %42, i32 %43)
  store %struct.seg_entry* %44, %struct.seg_entry** %8, align 8
  %45 = load %struct.seg_entry*, %struct.seg_entry** %8, align 8
  %46 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @DIRTY, align 4
  %50 = icmp uge i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %56 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %55, i32 1)
  br label %78

57:                                               ; preds = %41
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %60 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @test_and_set_bit(i32 %58, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %57
  %69 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %7, align 8
  %70 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %68, %57
  br label %78

78:                                               ; preds = %16, %54, %77, %37
  ret void
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_CURSEG(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
