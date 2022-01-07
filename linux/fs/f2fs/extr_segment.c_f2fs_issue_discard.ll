; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_issue_discard.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_issue_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.block_device = type { i32 }
%struct.seg_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i64, i64)* @f2fs_issue_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_issue_discard(%struct.f2fs_sb_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.block_device*, align 8
  %11 = alloca %struct.seg_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.block_device*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.block_device* @f2fs_target_device(%struct.f2fs_sb_info* %17, i64 %18, i32* null)
  store %struct.block_device* %19, %struct.block_device** %10, align 8
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %73, %3
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %21
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call %struct.block_device* @f2fs_target_device(%struct.f2fs_sb_info* %32, i64 %33, i32* null)
  store %struct.block_device* %34, %struct.block_device** %15, align 8
  %35 = load %struct.block_device*, %struct.block_device** %15, align 8
  %36 = load %struct.block_device*, %struct.block_device** %10, align 8
  %37 = icmp ne %struct.block_device* %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %40 = load %struct.block_device*, %struct.block_device** %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @__issue_discard_async(%struct.f2fs_sb_info* %39, %struct.block_device* %40, i64 %41, i64 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %4, align 4
  br label %89

48:                                               ; preds = %38
  %49 = load %struct.block_device*, %struct.block_device** %15, align 8
  store %struct.block_device* %49, %struct.block_device** %10, align 8
  %50 = load i64, i64* %13, align 8
  store i64 %50, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %51

51:                                               ; preds = %48, %31
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %54, i64 %55)
  %57 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %53, i32 %56)
  store %struct.seg_entry* %57, %struct.seg_entry** %11, align 8
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info* %58, i64 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.seg_entry*, %struct.seg_entry** %11, align 8
  %63 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @f2fs_test_and_set_bit(i32 %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %52
  %68 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %69 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %52
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %9, align 8
  br label %21

78:                                               ; preds = %21
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %83 = load %struct.block_device*, %struct.block_device** %10, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @__issue_discard_async(%struct.f2fs_sb_info* %82, %struct.block_device* %83, i64 %84, i64 %85)
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %46
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.block_device* @f2fs_target_device(%struct.f2fs_sb_info*, i64, i32*) #1

declare dso_local i32 @__issue_discard_async(%struct.f2fs_sb_info*, %struct.block_device*, i64, i64) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @GET_SEGNO(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @f2fs_test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
