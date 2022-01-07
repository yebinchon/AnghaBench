; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_find_daxdev_for_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_find_daxdev_for_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_device = type { i32 }
%struct.inode = type { i32 }
%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.dax_device* }
%struct.TYPE_3__ = type { %struct.dax_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dax_device* @xfs_find_daxdev_for_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.dax_device*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.xfs_inode* @XFS_I(%struct.inode* %6)
  store %struct.xfs_inode* %7, %struct.xfs_inode** %4, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %8, i32 0, i32 0
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %5, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = call i64 @XFS_IS_REALTIME_INODE(%struct.xfs_inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.dax_device*, %struct.dax_device** %18, align 8
  store %struct.dax_device* %19, %struct.dax_device** %2, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.dax_device*, %struct.dax_device** %24, align 8
  store %struct.dax_device* %25, %struct.dax_device** %2, align 8
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.dax_device*, %struct.dax_device** %2, align 8
  ret %struct.dax_device* %27
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i64 @XFS_IS_REALTIME_INODE(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
