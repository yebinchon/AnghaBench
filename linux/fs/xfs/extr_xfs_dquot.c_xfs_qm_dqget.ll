; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.xfs_quotainfo* }
%struct.xfs_quotainfo = type { i32 }
%struct.xfs_dquot = type { i32 }
%struct.radix_tree_root = type { i32 }

@xs_qm_dquot_dups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_dqget(%struct.xfs_mount* %0, i32 %1, i32 %2, i32 %3, %struct.xfs_dquot** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_dquot**, align 8
  %12 = alloca %struct.xfs_quotainfo*, align 8
  %13 = alloca %struct.radix_tree_root*, align 8
  %14 = alloca %struct.xfs_dquot*, align 8
  %15 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_dquot** %4, %struct.xfs_dquot*** %11, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %17, align 8
  store %struct.xfs_quotainfo* %18, %struct.xfs_quotainfo** %12, align 8
  %19 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.radix_tree_root* @xfs_dquot_tree(%struct.xfs_quotainfo* %19, i32 %20)
  store %struct.radix_tree_root* %21, %struct.radix_tree_root** %13, align 8
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @xfs_qm_dqget_checks(%struct.xfs_mount* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %6, align 4
  br label %71

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %60, %29
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %32 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %12, align 8
  %33 = load %struct.radix_tree_root*, %struct.radix_tree_root** %13, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.xfs_dquot* @xfs_qm_dqget_cache_lookup(%struct.xfs_mount* %31, %struct.xfs_quotainfo* %32, %struct.radix_tree_root* %33, i32 %34)
  store %struct.xfs_dquot* %35, %struct.xfs_dquot** %14, align 8
  %36 = load %struct.xfs_dquot*, %struct.xfs_dquot** %14, align 8
  %37 = icmp ne %struct.xfs_dquot* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.xfs_dquot*, %struct.xfs_dquot** %14, align 8
  %40 = load %struct.xfs_dquot**, %struct.xfs_dquot*** %11, align 8
  store %struct.xfs_dquot* %39, %struct.xfs_dquot** %40, align 8
  store i32 0, i32* %6, align 4
  br label %71

41:                                               ; preds = %30
  %42 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @xfs_qm_dqread(%struct.xfs_mount* %42, i32 %43, i32 %44, i32 %45, %struct.xfs_dquot** %14)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %6, align 4
  br label %71

51:                                               ; preds = %41
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %53 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %12, align 8
  %54 = load %struct.radix_tree_root*, %struct.radix_tree_root** %13, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.xfs_dquot*, %struct.xfs_dquot** %14, align 8
  %57 = call i32 @xfs_qm_dqget_cache_insert(%struct.xfs_mount* %52, %struct.xfs_quotainfo* %53, %struct.radix_tree_root* %54, i32 %55, %struct.xfs_dquot* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.xfs_dquot*, %struct.xfs_dquot** %14, align 8
  %62 = call i32 @xfs_qm_dqdestroy(%struct.xfs_dquot* %61)
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %64 = load i32, i32* @xs_qm_dquot_dups, align 4
  %65 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %63, i32 %64)
  br label %30

66:                                               ; preds = %51
  %67 = load %struct.xfs_dquot*, %struct.xfs_dquot** %14, align 8
  %68 = call i32 @trace_xfs_dqget_miss(%struct.xfs_dquot* %67)
  %69 = load %struct.xfs_dquot*, %struct.xfs_dquot** %14, align 8
  %70 = load %struct.xfs_dquot**, %struct.xfs_dquot*** %11, align 8
  store %struct.xfs_dquot* %69, %struct.xfs_dquot** %70, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %49, %38, %27
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.radix_tree_root* @xfs_dquot_tree(%struct.xfs_quotainfo*, i32) #1

declare dso_local i32 @xfs_qm_dqget_checks(%struct.xfs_mount*, i32) #1

declare dso_local %struct.xfs_dquot* @xfs_qm_dqget_cache_lookup(%struct.xfs_mount*, %struct.xfs_quotainfo*, %struct.radix_tree_root*, i32) #1

declare dso_local i32 @xfs_qm_dqread(%struct.xfs_mount*, i32, i32, i32, %struct.xfs_dquot**) #1

declare dso_local i32 @xfs_qm_dqget_cache_insert(%struct.xfs_mount*, %struct.xfs_quotainfo*, %struct.radix_tree_root*, i32, %struct.xfs_dquot*) #1

declare dso_local i32 @xfs_qm_dqdestroy(%struct.xfs_dquot*) #1

declare dso_local i32 @XFS_STATS_INC(%struct.xfs_mount*, i32) #1

declare dso_local i32 @trace_xfs_dqget_miss(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
