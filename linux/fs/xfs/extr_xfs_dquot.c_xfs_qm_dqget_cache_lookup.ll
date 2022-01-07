; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dquot = type { i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_quotainfo = type { i32 }
%struct.radix_tree_root = type { i32 }

@xs_qm_dqcachemisses = common dso_local global i32 0, align 4
@XFS_DQ_FREEING = common dso_local global i32 0, align 4
@xs_qm_dqcachehits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_dquot* (%struct.xfs_mount*, %struct.xfs_quotainfo*, %struct.radix_tree_root*, i32)* @xfs_qm_dqget_cache_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_dquot* @xfs_qm_dqget_cache_lookup(%struct.xfs_mount* %0, %struct.xfs_quotainfo* %1, %struct.radix_tree_root* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_dquot*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_quotainfo*, align 8
  %8 = alloca %struct.radix_tree_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_dquot*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_quotainfo* %1, %struct.xfs_quotainfo** %7, align 8
  store %struct.radix_tree_root* %2, %struct.radix_tree_root** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %11

11:                                               ; preds = %36, %4
  %12 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %7, align 8
  %13 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.radix_tree_root*, %struct.radix_tree_root** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.xfs_dquot* @radix_tree_lookup(%struct.radix_tree_root* %15, i32 %16)
  store %struct.xfs_dquot* %17, %struct.xfs_dquot** %10, align 8
  %18 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %19 = icmp ne %struct.xfs_dquot* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %25 = load i32, i32* @xs_qm_dqcachemisses, align 4
  %26 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %24, i32 %25)
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %5, align 8
  br label %59

27:                                               ; preds = %11
  %28 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %29 = call i32 @xfs_dqlock(%struct.xfs_dquot* %28)
  %30 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %31 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XFS_DQ_FREEING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %38 = call i32 @xfs_dqunlock(%struct.xfs_dquot* %37)
  %39 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %7, align 8
  %40 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %43 = call i32 @trace_xfs_dqget_freeing(%struct.xfs_dquot* %42)
  %44 = call i32 @delay(i32 1)
  br label %11

45:                                               ; preds = %27
  %46 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %47 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %7, align 8
  %51 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  %54 = call i32 @trace_xfs_dqget_hit(%struct.xfs_dquot* %53)
  %55 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %56 = load i32, i32* @xs_qm_dqcachehits, align 4
  %57 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %55, i32 %56)
  %58 = load %struct.xfs_dquot*, %struct.xfs_dquot** %10, align 8
  store %struct.xfs_dquot* %58, %struct.xfs_dquot** %5, align 8
  br label %59

59:                                               ; preds = %45, %20
  %60 = load %struct.xfs_dquot*, %struct.xfs_dquot** %5, align 8
  ret %struct.xfs_dquot* %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xfs_dquot* @radix_tree_lookup(%struct.radix_tree_root*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @XFS_STATS_INC(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_dqlock(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_dqunlock(%struct.xfs_dquot*) #1

declare dso_local i32 @trace_xfs_dqget_freeing(%struct.xfs_dquot*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @trace_xfs_dqget_hit(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
