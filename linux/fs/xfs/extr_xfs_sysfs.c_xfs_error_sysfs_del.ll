; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_xfs_error_sysfs_del.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_xfs_error_sysfs_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32, %struct.xfs_error_cfg** }
%struct.xfs_error_cfg = type { i32 }

@XFS_ERR_CLASS_MAX = common dso_local global i32 0, align 4
@XFS_ERR_ERRNO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_error_sysfs_del(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca %struct.xfs_error_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @XFS_ERR_CLASS_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @XFS_ERR_ERRNO_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 2
  %18 = load %struct.xfs_error_cfg**, %struct.xfs_error_cfg*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %18, i64 %20
  %22 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %22, i64 %24
  store %struct.xfs_error_cfg* %25, %struct.xfs_error_cfg** %3, align 8
  %26 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %26, i32 0, i32 0
  %28 = call i32 @xfs_sysfs_del(i32* %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %11

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %38 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %37, i32 0, i32 1
  %39 = call i32 @xfs_sysfs_del(i32* %38)
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %41 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %40, i32 0, i32 0
  %42 = call i32 @xfs_sysfs_del(i32* %41)
  ret void
}

declare dso_local i32 @xfs_sysfs_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
