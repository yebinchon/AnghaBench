; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_inode_supports_dax.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_inode_supports_dax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_5__, %struct.xfs_mount* }
%struct.TYPE_5__ = type { i32 }
%struct.xfs_mount = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@XFS_MOUNT_DAX = common dso_local global i32 0, align 4
@XFS_DIFLAG2_DAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*)* @xfs_inode_supports_dax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_inode_supports_dax(%struct.xfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  %5 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %5, i32 0, i32 1
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  store %struct.xfs_mount* %7, %struct.xfs_mount** %4, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %9 = call %struct.TYPE_7__* @VFS_I(%struct.xfs_inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @S_ISREG(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %16 = call i64 @xfs_is_reflink_inode(%struct.xfs_inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %49

19:                                               ; preds = %14
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @XFS_MOUNT_DAX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @XFS_DIFLAG2_DAX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %49

35:                                               ; preds = %26, %19
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %49

43:                                               ; preds = %35
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %45 = call %struct.TYPE_7__* @VFS_I(%struct.xfs_inode* %44)
  %46 = call i32* @xfs_find_daxdev_for_inode(%struct.TYPE_7__* %45)
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %42, %34, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_7__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i64 @xfs_is_reflink_inode(%struct.xfs_inode*) #1

declare dso_local i32* @xfs_find_daxdev_for_inode(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
