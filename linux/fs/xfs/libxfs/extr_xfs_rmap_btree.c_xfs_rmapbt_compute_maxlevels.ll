; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap_btree.c_xfs_rmapbt_compute_maxlevels.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap_btree.c_xfs_rmapbt_compute_maxlevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@XFS_BTREE_MAXLEVELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_rmapbt_compute_maxlevels(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %3 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %3, i32 0, i32 0
  %5 = call i64 @xfs_sb_version_hasreflink(%struct.TYPE_2__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %10 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xfs_btree_compute_maxlevels(i32 %14, i32 %18)
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %11, %7
  ret void
}

declare dso_local i64 @xfs_sb_version_hasreflink(%struct.TYPE_2__*) #1

declare dso_local i32 @xfs_btree_compute_maxlevels(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
