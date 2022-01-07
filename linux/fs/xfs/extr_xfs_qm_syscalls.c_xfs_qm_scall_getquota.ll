; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_scall_getquota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_scall_getquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.qc_dqblk = type { i32 }
%struct.xfs_dquot = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_scall_getquota(%struct.xfs_mount* %0, i32 %1, i32 %2, %struct.qc_dqblk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qc_dqblk*, align 8
  %10 = alloca %struct.xfs_dquot*, align 8
  %11 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.qc_dqblk* %3, %struct.qc_dqblk** %9, align 8
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @xfs_qm_dqget(%struct.xfs_mount* %12, i32 %13, i32 %14, i32 0, %struct.xfs_dquot** %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %22 = call i64 @XFS_IS_DQUOT_UNINITIALIZED(%struct.xfs_dquot* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %31 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %32 = call i32 @xfs_qm_scall_getquota_fill_qc(%struct.xfs_mount* %28, i32 %29, %struct.xfs_dquot* %30, %struct.qc_dqblk* %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %35 = call i32 @xfs_qm_dqput(%struct.xfs_dquot* %34)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %18
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @xfs_qm_dqget(%struct.xfs_mount*, i32, i32, i32, %struct.xfs_dquot**) #1

declare dso_local i64 @XFS_IS_DQUOT_UNINITIALIZED(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_qm_scall_getquota_fill_qc(%struct.xfs_mount*, i32, %struct.xfs_dquot*, %struct.qc_dqblk*) #1

declare dso_local i32 @xfs_qm_dqput(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
