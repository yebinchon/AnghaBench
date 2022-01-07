; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_copy_value.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_copy_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, i32, i32, i32, i64 }

@ATTR_KERNOVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@XFS_DA_OP_ALLOCVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_da_args*, i8*, i32)* @xfs_attr_copy_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_attr_copy_value(%struct.xfs_da_args* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %9 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ATTR_KERNOVAL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %74

18:                                               ; preds = %3
  %19 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ERANGE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %74

30:                                               ; preds = %18
  %31 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %32 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @XFS_DA_OP_ALLOCVAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @kmem_alloc_large(i32 %38, i32 0)
  %40 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %74

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %55 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %60 = call i32 @xfs_attr_rmtval_get(%struct.xfs_da_args* %59)
  store i32 %60, i32* %4, align 4
  br label %74

61:                                               ; preds = %50
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %74

67:                                               ; preds = %61
  %68 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %69 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @memcpy(i32 %70, i8* %71, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %67, %64, %58, %46, %24, %14
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @kmem_alloc_large(i32, i32) #1

declare dso_local i32 @xfs_attr_rmtval_get(%struct.xfs_da_args*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
