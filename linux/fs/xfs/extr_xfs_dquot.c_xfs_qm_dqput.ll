; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqput.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dquot = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.xfs_quotainfo* }
%struct.xfs_quotainfo = type { i32 }

@xs_qm_dquot_unused = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_qm_dqput(%struct.xfs_dquot* %0) #0 {
  %2 = alloca %struct.xfs_dquot*, align 8
  %3 = alloca %struct.xfs_quotainfo*, align 8
  store %struct.xfs_dquot* %0, %struct.xfs_dquot** %2, align 8
  %4 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %11 = call i32 @XFS_DQ_IS_LOCKED(%struct.xfs_dquot* %10)
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %14 = call i32 @trace_xfs_dqput(%struct.xfs_dquot* %13)
  %15 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %22 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %24, align 8
  store %struct.xfs_quotainfo* %25, %struct.xfs_quotainfo** %3, align 8
  %26 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %27 = call i32 @trace_xfs_dqput_free(%struct.xfs_dquot* %26)
  %28 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %3, align 8
  %29 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %28, i32 0, i32 0
  %30 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %31 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %30, i32 0, i32 2
  %32 = call i64 @list_lru_add(i32* %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* @xs_qm_dquot_unused, align 4
  %39 = call i32 @XFS_STATS_INC(%struct.TYPE_2__* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %20
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.xfs_dquot*, %struct.xfs_dquot** %2, align 8
  %43 = call i32 @xfs_dqunlock(%struct.xfs_dquot* %42)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_DQ_IS_LOCKED(%struct.xfs_dquot*) #1

declare dso_local i32 @trace_xfs_dqput(%struct.xfs_dquot*) #1

declare dso_local i32 @trace_xfs_dqput_free(%struct.xfs_dquot*) #1

declare dso_local i64 @list_lru_add(i32*, i32*) #1

declare dso_local i32 @XFS_STATS_INC(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @xfs_dqunlock(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
