; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_locate_dirty_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_locate_dirty_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i16 }
%struct.dirty_seglist_info = type { i32 }

@NULL_SEGNO = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@PRE = common dso_local global i32 0, align 4
@DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32)* @locate_dirty_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locate_dirty_segment(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dirty_seglist_info*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = call %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info* %8)
  store %struct.dirty_seglist_info* %9, %struct.dirty_seglist_info** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NULL_SEGNO, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @IS_CURSEG(%struct.f2fs_sb_info* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  br label %77

19:                                               ; preds = %13
  %20 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %5, align 8
  %21 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call zeroext i16 @get_valid_blocks(%struct.f2fs_sb_info* %23, i32 %24, i32 0)
  store i16 %25, i16* %6, align 2
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call zeroext i16 @get_ckpt_valid_blocks(%struct.f2fs_sb_info* %26, i32 %27)
  store i16 %28, i16* %7, align 2
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %19
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %34 = load i32, i32* @SBI_CP_DISABLED, align 4
  %35 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 0
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37, %32
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PRE, align 4
  %49 = call i32 @__locate_dirty_segment(%struct.f2fs_sb_info* %46, i32 %47, i32 %48)
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @DIRTY, align 4
  %53 = call i32 @__remove_dirty_segment(%struct.f2fs_sb_info* %50, i32 %51, i32 %52)
  br label %73

54:                                               ; preds = %37, %19
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i32
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %58 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DIRTY, align 4
  %66 = call i32 @__locate_dirty_segment(%struct.f2fs_sb_info* %63, i32 %64, i32 %65)
  br label %72

67:                                               ; preds = %54
  %68 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @DIRTY, align 4
  %71 = call i32 @__remove_dirty_segment(%struct.f2fs_sb_info* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %45
  %74 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %5, align 8
  %75 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  br label %77

77:                                               ; preds = %73, %18
  ret void
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_CURSEG(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local zeroext i16 @get_ckpt_valid_blocks(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__locate_dirty_segment(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @__remove_dirty_segment(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
