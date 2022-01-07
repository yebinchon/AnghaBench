; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_num_base_meta_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_num_base_meta_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext4_num_base_meta_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_num_base_meta_clusters(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %7)
  store %struct.ext4_sb_info* %8, %struct.ext4_sb_info** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ext4_bg_has_super(%struct.super_block* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @ext4_has_feature_meta_bg(%struct.super_block* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = icmp slt i32 %16, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %15, %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @ext4_bg_num_gdb(%struct.super_block* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le16_to_cpu(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %31, %28
  br label %58

50:                                               ; preds = %15
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @ext4_bg_num_gdb(%struct.super_block* %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %50, %49
  %59 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @EXT4_NUM_B2C(%struct.ext4_sb_info* %59, i32 %60)
  ret i32 %61
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_bg_has_super(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_has_feature_meta_bg(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_bg_num_gdb(%struct.super_block*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_NUM_B2C(%struct.ext4_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
