; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_ifork_init_cow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_ifork_init_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@xfs_ifork_zone = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_EXTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_ifork_init_cow(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %3 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load i32, i32* @xfs_ifork_zone, align 4
  %10 = load i32, i32* @KM_NOFS, align 4
  %11 = call %struct.TYPE_2__* @kmem_zone_zalloc(i32 %9, i32 %10)
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %12, i32 0, i32 2
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = load i32, i32* @XFS_IFEXTENTS, align 4
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @XFS_DINODE_FMT_EXTENTS, align 4
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %21 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %8, %7
  ret void
}

declare dso_local %struct.TYPE_2__* @kmem_zone_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
