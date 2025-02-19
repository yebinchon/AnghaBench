; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_dquot = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_dqget_next(%struct.xfs_mount* %0, i32 %1, i32 %2, %struct.xfs_dquot** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_dquot**, align 8
  %10 = alloca %struct.xfs_dquot*, align 8
  %11 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.xfs_dquot** %3, %struct.xfs_dquot*** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.xfs_dquot**, %struct.xfs_dquot*** %9, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %12, align 8
  br label %13

13:                                               ; preds = %42, %4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @xfs_qm_dqget(%struct.xfs_mount* %18, i32 %19, i32 %20, i32 0, %struct.xfs_dquot** %10)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %42

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %46

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %34 = call i32 @XFS_IS_DQUOT_UNINITIALIZED(%struct.xfs_dquot* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %38 = load %struct.xfs_dquot**, %struct.xfs_dquot*** %9, align 8
  store %struct.xfs_dquot* %37, %struct.xfs_dquot** %38, align 8
  store i32 0, i32* %5, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %41 = call i32 @xfs_qm_dqput(%struct.xfs_dquot* %40)
  br label %42

42:                                               ; preds = %39, %26
  %43 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @xfs_dq_get_next_id(%struct.xfs_mount* %43, i32 %44, i32* %7)
  store i32 %45, i32* %11, align 4
  br label %13

46:                                               ; preds = %30, %13
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %36
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @xfs_qm_dqget(%struct.xfs_mount*, i32, i32, i32, %struct.xfs_dquot**) #1

declare dso_local i32 @XFS_IS_DQUOT_UNINITIALIZED(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_qm_dqput(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_dq_get_next_id(%struct.xfs_mount*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
