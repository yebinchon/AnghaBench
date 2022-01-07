; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_allocate_segment_for_resize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_allocate_segment_for_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"For resize: curseg of type %d: %u ==> %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @allocate_segment_for_resize(%struct.f2fs_sb_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.curseg_info*, align 8
  %10 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %11, i32 %12)
  store %struct.curseg_info* %13, %struct.curseg_info** %9, align 8
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %15 = call %struct.TYPE_3__* @SM_I(%struct.f2fs_sb_info* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  %18 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %19 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %22 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @down_write(i32* %23)
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %25, i32 %26)
  %28 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %4
  br label %62

38:                                               ; preds = %33
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %40 = call i64 @f2fs_need_SSR(%struct.f2fs_sb_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @get_ssr_segment(%struct.f2fs_sb_info* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @change_curseg(%struct.f2fs_sb_info* %48, i32 %49)
  br label %55

51:                                               ; preds = %42, %38
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @new_curseg(%struct.f2fs_sb_info* %52, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %57 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %58 = call i32 @stat_inc_seg_type(%struct.f2fs_sb_info* %56, %struct.curseg_info* %57)
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @locate_dirty_segment(%struct.f2fs_sb_info* %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %37
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %64 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @up_write(i32* %65)
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %69 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %77 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @f2fs_notice(%struct.f2fs_sb_info* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %62
  %81 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %82 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %85 = call %struct.TYPE_3__* @SM_I(%struct.f2fs_sb_info* %84)
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @up_read(i32* %86)
  ret void
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_3__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_need_SSR(%struct.f2fs_sb_info*) #1

declare dso_local i64 @get_ssr_segment(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @change_curseg(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @new_curseg(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @stat_inc_seg_type(%struct.f2fs_sb_info*, %struct.curseg_info*) #1

declare dso_local i32 @locate_dirty_segment(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @f2fs_notice(%struct.f2fs_sb_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
