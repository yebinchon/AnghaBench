; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_check_feature_compatibility.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_check_feature_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nilfs_super_block = type { i32, i32 }

@NILFS_FEATURE_INCOMPAT_SUPP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"couldn't mount because of unsupported optional features (%llx)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NILFS_FEATURE_COMPAT_RO_SUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"couldn't mount RDWR because of unsupported optional features (%llx)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_check_feature_compatibility(%struct.super_block* %0, %struct.nilfs_super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nilfs_super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.nilfs_super_block* %1, %struct.nilfs_super_block** %5, align 8
  %7 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %8 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le64_to_cpu(i32 %9)
  %11 = load i32, i32* @NILFS_FEATURE_INCOMPAT_SUPP, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32 @nilfs_msg(%struct.super_block* %17, i32 %18, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %5, align 8
  %26 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le64_to_cpu(i32 %27)
  %29 = load i32, i32* @NILFS_FEATURE_COMPAT_RO_SUPP, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = call i32 @sb_rdonly(%struct.super_block* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 @nilfs_msg(%struct.super_block* %39, i32 %40, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %35, %24
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %38, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i64) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
