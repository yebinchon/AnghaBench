; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_descriptor_loc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_descriptor_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EXT2_FEATURE_INCOMPAT_META_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, i64, i32)* @descriptor_loc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @descriptor_loc(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext2_sb_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %12)
  store %struct.ext2_sb_info* %13, %struct.ext2_sb_info** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %8, align 8
  %15 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* @EXT2_FEATURE_INCOMPAT_META_BG, align 4
  %22 = call i32 @EXT2_HAS_INCOMPAT_FEATURE(%struct.super_block* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24, %3
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %54

35:                                               ; preds = %24
  %36 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %8, align 8
  %37 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @ext2_bg_has_super(%struct.super_block* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @ext2_group_first_block_no(%struct.super_block* %48, i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %50, %52
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %47, %29
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT2_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @ext2_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i64 @ext2_group_first_block_no(%struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
