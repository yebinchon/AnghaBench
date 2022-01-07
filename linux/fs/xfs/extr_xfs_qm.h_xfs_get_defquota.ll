; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm.h_xfs_get_defquota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm.h_xfs_get_defquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_def_quota = type { i32 }
%struct.xfs_dquot = type { i32 }
%struct.xfs_quotainfo = type { %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_def_quota* (%struct.xfs_dquot*, %struct.xfs_quotainfo*)* @xfs_get_defquota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_def_quota* @xfs_get_defquota(%struct.xfs_dquot* %0, %struct.xfs_quotainfo* %1) #0 {
  %3 = alloca %struct.xfs_dquot*, align 8
  %4 = alloca %struct.xfs_quotainfo*, align 8
  %5 = alloca %struct.xfs_def_quota*, align 8
  store %struct.xfs_dquot* %0, %struct.xfs_dquot** %3, align 8
  store %struct.xfs_quotainfo* %1, %struct.xfs_quotainfo** %4, align 8
  %6 = load %struct.xfs_dquot*, %struct.xfs_dquot** %3, align 8
  %7 = call i64 @XFS_QM_ISUDQ(%struct.xfs_dquot* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %10, i32 0, i32 2
  store %struct.xfs_def_quota* %11, %struct.xfs_def_quota** %5, align 8
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.xfs_dquot*, %struct.xfs_dquot** %3, align 8
  %14 = call i64 @XFS_QM_ISGDQ(%struct.xfs_dquot* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %17, i32 0, i32 1
  store %struct.xfs_def_quota* %18, %struct.xfs_def_quota** %5, align 8
  br label %25

19:                                               ; preds = %12
  %20 = load %struct.xfs_dquot*, %struct.xfs_dquot** %3, align 8
  %21 = call i32 @XFS_QM_ISPDQ(%struct.xfs_dquot* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %23, i32 0, i32 0
  store %struct.xfs_def_quota* %24, %struct.xfs_def_quota** %5, align 8
  br label %25

25:                                               ; preds = %19, %16
  br label %26

26:                                               ; preds = %25, %9
  %27 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %5, align 8
  ret %struct.xfs_def_quota* %27
}

declare dso_local i64 @XFS_QM_ISUDQ(%struct.xfs_dquot*) #1

declare dso_local i64 @XFS_QM_ISGDQ(%struct.xfs_dquot*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_QM_ISPDQ(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
