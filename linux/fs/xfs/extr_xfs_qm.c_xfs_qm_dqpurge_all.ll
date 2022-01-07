; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm.c_xfs_qm_dqpurge_all.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm.c_xfs_qm_dqpurge_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }

@XFS_QMOPT_UQUOTA = common dso_local global i32 0, align 4
@XFS_DQ_USER = common dso_local global i32 0, align 4
@xfs_qm_dqpurge = common dso_local global i32 0, align 4
@XFS_QMOPT_GQUOTA = common dso_local global i32 0, align 4
@XFS_DQ_GROUP = common dso_local global i32 0, align 4
@XFS_QMOPT_PQUOTA = common dso_local global i32 0, align 4
@XFS_DQ_PROJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_qm_dqpurge_all(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XFS_QMOPT_UQUOTA, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %11 = load i32, i32* @XFS_DQ_USER, align 4
  %12 = load i32, i32* @xfs_qm_dqpurge, align 4
  %13 = call i32 @xfs_qm_dquot_walk(%struct.xfs_mount* %10, i32 %11, i32 %12, i32* null)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @XFS_QMOPT_GQUOTA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %21 = load i32, i32* @XFS_DQ_GROUP, align 4
  %22 = load i32, i32* @xfs_qm_dqpurge, align 4
  %23 = call i32 @xfs_qm_dquot_walk(%struct.xfs_mount* %20, i32 %21, i32 %22, i32* null)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @XFS_QMOPT_PQUOTA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %31 = load i32, i32* @XFS_DQ_PROJ, align 4
  %32 = load i32, i32* @xfs_qm_dqpurge, align 4
  %33 = call i32 @xfs_qm_dquot_walk(%struct.xfs_mount* %30, i32 %31, i32 %32, i32* null)
  br label %34

34:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @xfs_qm_dquot_walk(%struct.xfs_mount*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
