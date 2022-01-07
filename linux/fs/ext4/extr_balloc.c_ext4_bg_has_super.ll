; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_bg_has_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_bg_has_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_super_block = type { i32* }
%struct.TYPE_2__ = type { %struct.ext4_super_block* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_bg_has_super(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ext4_super_block*, %struct.ext4_super_block** %9, align 8
  store %struct.ext4_super_block* %10, %struct.ext4_super_block** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call i64 @ext4_has_feature_sparse_super2(%struct.super_block* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %30 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  %35 = icmp eq i64 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %18
  store i32 1, i32* %3, align 4
  br label %65

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %65

38:                                               ; preds = %14
  %39 = load i64, i64* %5, align 8
  %40 = icmp sle i64 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = call i32 @ext4_has_feature_sparse_super(%struct.super_block* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %38
  store i32 1, i32* %3, align 4
  br label %65

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = and i64 %47, 1
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %65

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @test_root(i64 %52, i32 3)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @test_root(i64 %56, i32 5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @test_root(i64 %60, i32 7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55, %51
  store i32 1, i32* %3, align 4
  br label %65

64:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %63, %50, %45, %37, %36, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_sparse_super2(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_has_feature_sparse_super(%struct.super_block*) #1

declare dso_local i64 @test_root(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
