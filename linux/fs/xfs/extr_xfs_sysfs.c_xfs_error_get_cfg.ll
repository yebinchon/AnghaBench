; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_xfs_error_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_xfs_error_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_error_cfg = type { i32 }
%struct.xfs_mount = type { %struct.xfs_error_cfg** }

@XFS_ERR_EIO = common dso_local global i64 0, align 8
@XFS_ERR_ENOSPC = common dso_local global i64 0, align 8
@XFS_ERR_ENODEV = common dso_local global i64 0, align 8
@XFS_ERR_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_error_cfg* @xfs_error_get_cfg(%struct.xfs_mount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_error_cfg*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %45 [
    i32 130, label %15
    i32 128, label %25
    i32 129, label %35
  ]

15:                                               ; preds = %13
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = load %struct.xfs_error_cfg**, %struct.xfs_error_cfg*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %18, i64 %20
  %22 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %21, align 8
  %23 = load i64, i64* @XFS_ERR_EIO, align 8
  %24 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %22, i64 %23
  store %struct.xfs_error_cfg* %24, %struct.xfs_error_cfg** %7, align 8
  br label %55

25:                                               ; preds = %13
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %26, i32 0, i32 0
  %28 = load %struct.xfs_error_cfg**, %struct.xfs_error_cfg*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %28, i64 %30
  %32 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %31, align 8
  %33 = load i64, i64* @XFS_ERR_ENOSPC, align 8
  %34 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %32, i64 %33
  store %struct.xfs_error_cfg* %34, %struct.xfs_error_cfg** %7, align 8
  br label %55

35:                                               ; preds = %13
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %36, i32 0, i32 0
  %38 = load %struct.xfs_error_cfg**, %struct.xfs_error_cfg*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %38, i64 %40
  %42 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %41, align 8
  %43 = load i64, i64* @XFS_ERR_ENODEV, align 8
  %44 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %42, i64 %43
  store %struct.xfs_error_cfg* %44, %struct.xfs_error_cfg** %7, align 8
  br label %55

45:                                               ; preds = %13
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %46, i32 0, i32 0
  %48 = load %struct.xfs_error_cfg**, %struct.xfs_error_cfg*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %48, i64 %50
  %52 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %51, align 8
  %53 = load i64, i64* @XFS_ERR_DEFAULT, align 8
  %54 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %52, i64 %53
  store %struct.xfs_error_cfg* %54, %struct.xfs_error_cfg** %7, align 8
  br label %55

55:                                               ; preds = %45, %35, %25, %15
  %56 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %7, align 8
  ret %struct.xfs_error_cfg* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
