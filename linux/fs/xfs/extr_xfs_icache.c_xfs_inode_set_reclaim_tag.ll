; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_inode_set_reclaim_tag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.c_xfs_inode_set_reclaim_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_perag = type { i32, i32 }

@XFS_ICI_RECLAIM_TAG = common dso_local global i32 0, align 4
@XFS_IRECLAIMABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inode_set_reclaim_tag(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_perag*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %5 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %5, i32 0, i32 2
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  store %struct.xfs_mount* %7, %struct.xfs_mount** %3, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @XFS_INO_TO_AGNO(%struct.xfs_mount* %9, i32 %12)
  %14 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %8, i32 %13)
  store %struct.xfs_perag* %14, %struct.xfs_perag** %4, align 8
  %15 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %19 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %21, i32 0, i32 1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %25 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @XFS_INO_TO_AGINO(%struct.xfs_mount* %23, i32 %26)
  %28 = load i32, i32* @XFS_ICI_RECLAIM_TAG, align 4
  %29 = call i32 @radix_tree_tag_set(i32* %22, i32 %27, i32 %28)
  %30 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %31 = call i32 @xfs_perag_set_reclaim_tag(%struct.xfs_perag* %30)
  %32 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %33 = load i32, i32* @XFS_IRECLAIMABLE, align 4
  %34 = call i32 @__xfs_iflags_set(%struct.xfs_inode* %32, i32 %33)
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %39 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.xfs_perag*, %struct.xfs_perag** %4, align 8
  %42 = call i32 @xfs_perag_put(%struct.xfs_perag* %41)
  ret void
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_INO_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_tag_set(i32*, i32, i32) #1

declare dso_local i32 @XFS_INO_TO_AGINO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_perag_set_reclaim_tag(%struct.xfs_perag*) #1

declare dso_local i32 @__xfs_iflags_set(%struct.xfs_inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
