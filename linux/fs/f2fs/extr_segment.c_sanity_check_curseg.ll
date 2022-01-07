; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_sanity_check_curseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_sanity_check_curseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32, i64, i32 }
%struct.seg_entry = type { i32 }

@NO_CHECK_TYPE = common dso_local global i32 0, align 4
@SSR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [127 x i8] c"Current segment's next free block offset is inconsistent with bitmap, logtype:%u, segno:%u, type:%u, next_blkoff:%u, blkofs:%u\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @sanity_check_curseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanity_check_curseg(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.curseg_info*, align 8
  %6 = alloca %struct.seg_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %76, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NO_CHECK_TYPE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %79

12:                                               ; preds = %8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %13, i32 %14)
  store %struct.curseg_info* %15, %struct.curseg_info** %5, align 8
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %17 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %18 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %16, i32 %19)
  store %struct.seg_entry* %20, %struct.seg_entry** %6, align 8
  %21 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %22 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.seg_entry*, %struct.seg_entry** %6, align 8
  %26 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @f2fs_test_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  br label %56

31:                                               ; preds = %12
  %32 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %33 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SSR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %76

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %72, %38
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %44 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.seg_entry*, %struct.seg_entry** %6, align 8
  %50 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @f2fs_test_bit(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %72

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %30
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %60 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %63 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.curseg_info*, %struct.curseg_info** %5, align 8
  %66 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @f2fs_err(%struct.f2fs_sb_info* %57, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i64 %64, i32 %67, i32 %68)
  %70 = load i32, i32* @EFSCORRUPTED, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %80

72:                                               ; preds = %54
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %41

75:                                               ; preds = %41
  br label %76

76:                                               ; preds = %75, %37
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %8

79:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_test_bit(i32, i32) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
