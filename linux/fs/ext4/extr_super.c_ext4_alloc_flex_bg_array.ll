; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_alloc_flex_bg_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_alloc_flex_bg_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.flex_groups*, i32 }
%struct.flex_groups = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"not enough memory for %d flex groups\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_alloc_flex_bg_array(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca %struct.flex_groups*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %9)
  store %struct.ext4_sb_info* %10, %struct.ext4_sb_info** %6, align 8
  %11 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %12 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

16:                                               ; preds = %2
  %17 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @ext4_flex_group(%struct.ext4_sb_info* %17, i64 %19)
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %78

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @roundup_pow_of_two(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.flex_groups* @kvzalloc(i32 %34, i32 %35)
  store %struct.flex_groups* %36, %struct.flex_groups** %7, align 8
  %37 = load %struct.flex_groups*, %struct.flex_groups** %7, align 8
  %38 = icmp ne %struct.flex_groups* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %28
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sdiv i32 %42, 4
  %44 = call i32 @ext4_msg(%struct.super_block* %40, i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %78

47:                                               ; preds = %28
  %48 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %49 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %48, i32 0, i32 1
  %50 = load %struct.flex_groups*, %struct.flex_groups** %49, align 8
  %51 = icmp ne %struct.flex_groups* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.flex_groups*, %struct.flex_groups** %7, align 8
  %54 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %55 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %54, i32 0, i32 1
  %56 = load %struct.flex_groups*, %struct.flex_groups** %55, align 8
  %57 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %58 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcpy(%struct.flex_groups* %53, %struct.flex_groups* %56, i32 %62)
  %64 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %65 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %64, i32 0, i32 1
  %66 = load %struct.flex_groups*, %struct.flex_groups** %65, align 8
  %67 = call i32 @kvfree(%struct.flex_groups* %66)
  br label %68

68:                                               ; preds = %52, %47
  %69 = load %struct.flex_groups*, %struct.flex_groups** %7, align 8
  %70 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %71 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %70, i32 0, i32 1
  store %struct.flex_groups* %69, %struct.flex_groups** %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %77 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %68, %39, %27, %15
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_flex_group(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local %struct.flex_groups* @kvzalloc(i32, i32) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.flex_groups*, %struct.flex_groups*, i32) #1

declare dso_local i32 @kvfree(%struct.flex_groups*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
