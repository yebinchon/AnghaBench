; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqget_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.xfs_quotainfo* }
%struct.xfs_quotainfo = type { i32 }
%struct.xfs_dquot = type { i32 }
%struct.radix_tree_root = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@xs_qm_dquot_dups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_dqget_inode(%struct.xfs_inode* %0, i32 %1, i32 %2, %struct.xfs_dquot** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_dquot**, align 8
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca %struct.xfs_quotainfo*, align 8
  %12 = alloca %struct.radix_tree_root*, align 8
  %13 = alloca %struct.xfs_dquot*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfs_dquot*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.xfs_dquot** %3, %struct.xfs_dquot*** %9, align 8
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %17, i32 0, i32 0
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %18, align 8
  store %struct.xfs_mount* %19, %struct.xfs_mount** %10, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 0
  %22 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %21, align 8
  store %struct.xfs_quotainfo* %22, %struct.xfs_quotainfo** %11, align 8
  %23 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.radix_tree_root* @xfs_dquot_tree(%struct.xfs_quotainfo* %23, i32 %24)
  store %struct.radix_tree_root* %25, %struct.radix_tree_root** %12, align 8
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @xfs_qm_dqget_checks(%struct.xfs_mount* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  br label %122

33:                                               ; preds = %4
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %35 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %36 = call i32 @xfs_isilocked(%struct.xfs_inode* %34, i32 %35)
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.xfs_dquot* @xfs_inode_dquot(%struct.xfs_inode* %38, i32 %39)
  %41 = icmp eq %struct.xfs_dquot* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @xfs_qm_id_for_quotatype(%struct.xfs_inode* %44, i32 %45)
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %106, %33
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %49 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %11, align 8
  %50 = load %struct.radix_tree_root*, %struct.radix_tree_root** %12, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call %struct.xfs_dquot* @xfs_qm_dqget_cache_lookup(%struct.xfs_mount* %48, %struct.xfs_quotainfo* %49, %struct.radix_tree_root* %50, i32 %51)
  store %struct.xfs_dquot* %52, %struct.xfs_dquot** %13, align 8
  %53 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %54 = icmp ne %struct.xfs_dquot* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %57 = load %struct.xfs_dquot**, %struct.xfs_dquot*** %9, align 8
  store %struct.xfs_dquot* %56, %struct.xfs_dquot** %57, align 8
  store i32 0, i32* %5, align 4
  br label %122

58:                                               ; preds = %47
  %59 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %60 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %61 = call i32 @xfs_iunlock(%struct.xfs_inode* %59, i32 %60)
  %62 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @xfs_qm_dqread(%struct.xfs_mount* %62, i32 %63, i32 %64, i32 %65, %struct.xfs_dquot** %13)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %68 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %69 = call i32 @xfs_ilock(%struct.xfs_inode* %67, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %5, align 4
  br label %122

74:                                               ; preds = %58
  %75 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @xfs_this_quota_on(%struct.xfs_mount* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call %struct.xfs_dquot* @xfs_inode_dquot(%struct.xfs_inode* %80, i32 %81)
  store %struct.xfs_dquot* %82, %struct.xfs_dquot** %16, align 8
  %83 = load %struct.xfs_dquot*, %struct.xfs_dquot** %16, align 8
  %84 = icmp ne %struct.xfs_dquot* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %87 = call i32 @xfs_qm_dqdestroy(%struct.xfs_dquot* %86)
  %88 = load %struct.xfs_dquot*, %struct.xfs_dquot** %16, align 8
  store %struct.xfs_dquot* %88, %struct.xfs_dquot** %13, align 8
  %89 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %90 = call i32 @xfs_dqlock(%struct.xfs_dquot* %89)
  br label %113

91:                                               ; preds = %79
  br label %97

92:                                               ; preds = %74
  %93 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %94 = call i32 @xfs_qm_dqdestroy(%struct.xfs_dquot* %93)
  %95 = load i32, i32* @ESRCH, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %122

97:                                               ; preds = %91
  %98 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %99 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %11, align 8
  %100 = load %struct.radix_tree_root*, %struct.radix_tree_root** %12, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %103 = call i32 @xfs_qm_dqget_cache_insert(%struct.xfs_mount* %98, %struct.xfs_quotainfo* %99, %struct.radix_tree_root* %100, i32 %101, %struct.xfs_dquot* %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %108 = call i32 @xfs_qm_dqdestroy(%struct.xfs_dquot* %107)
  %109 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %110 = load i32, i32* @xs_qm_dquot_dups, align 4
  %111 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %109, i32 %110)
  br label %47

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %85
  %114 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %115 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %116 = call i32 @xfs_isilocked(%struct.xfs_inode* %114, i32 %115)
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %119 = call i32 @trace_xfs_dqget_miss(%struct.xfs_dquot* %118)
  %120 = load %struct.xfs_dquot*, %struct.xfs_dquot** %13, align 8
  %121 = load %struct.xfs_dquot**, %struct.xfs_dquot*** %9, align 8
  store %struct.xfs_dquot* %120, %struct.xfs_dquot** %121, align 8
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %113, %92, %72, %55, %31
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.radix_tree_root* @xfs_dquot_tree(%struct.xfs_quotainfo*, i32) #1

declare dso_local i32 @xfs_qm_dqget_checks(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local %struct.xfs_dquot* @xfs_inode_dquot(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_qm_id_for_quotatype(%struct.xfs_inode*, i32) #1

declare dso_local %struct.xfs_dquot* @xfs_qm_dqget_cache_lookup(%struct.xfs_mount*, %struct.xfs_quotainfo*, %struct.radix_tree_root*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_qm_dqread(%struct.xfs_mount*, i32, i32, i32, %struct.xfs_dquot**) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i64 @xfs_this_quota_on(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_qm_dqdestroy(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_dqlock(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_qm_dqget_cache_insert(%struct.xfs_mount*, %struct.xfs_quotainfo*, %struct.radix_tree_root*, i32, %struct.xfs_dquot*) #1

declare dso_local i32 @XFS_STATS_INC(%struct.xfs_mount*, i32) #1

declare dso_local i32 @trace_xfs_dqget_miss(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
