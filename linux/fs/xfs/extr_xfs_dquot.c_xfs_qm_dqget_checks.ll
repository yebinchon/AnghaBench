; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_checks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, i32)* @xfs_qm_dqget_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_qm_dqget_checks(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %7 = call i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ESRCH, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %42 [
    i32 128, label %18
    i32 130, label %26
    i32 129, label %34
  ]

18:                                               ; preds = %16
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %20 = call i32 @XFS_IS_UQUOTA_ON(%struct.xfs_mount* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ESRCH, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %46

26:                                               ; preds = %16
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %28 = call i32 @XFS_IS_GQUOTA_ON(%struct.xfs_mount* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ESRCH, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %46

34:                                               ; preds = %16
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %36 = call i32 @XFS_IS_PQUOTA_ON(%struct.xfs_mount* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ESRCH, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %16
  %43 = call i64 @WARN_ON_ONCE(i32 0)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %41, %38, %33, %30, %25, %22, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_IS_UQUOTA_ON(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_IS_GQUOTA_ON(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_IS_PQUOTA_ON(%struct.xfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
