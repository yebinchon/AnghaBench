; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_init_free_segmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_init_free_segmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.seg_entry = type { i64 }
%struct.curseg_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@CURSEG_COLD_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @init_free_segmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_free_segmap(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.seg_entry*, align 8
  %6 = alloca %struct.curseg_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %10 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %13, i32 %14)
  store %struct.seg_entry* %15, %struct.seg_entry** %5, align 8
  %16 = load %struct.seg_entry*, %struct.seg_entry** %5, align 8
  %17 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @__set_free(%struct.f2fs_sb_info* %21, i32 %22)
  br label %35

24:                                               ; preds = %12
  %25 = load %struct.seg_entry*, %struct.seg_entry** %5, align 8
  %26 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %29 = call %struct.TYPE_2__* @SIT_I(%struct.f2fs_sb_info* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %27
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  br label %35

35:                                               ; preds = %24, %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %54, %39
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @CURSEG_COLD_NODE, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %46, i32 %47)
  store %struct.curseg_info* %48, %struct.curseg_info** %6, align 8
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %50 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %51 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__set_test_and_inuse(%struct.f2fs_sb_info* %49, i32 %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %41

57:                                               ; preds = %41
  ret void
}

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__set_free(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_2__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__set_test_and_inuse(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
