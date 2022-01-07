; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_remap_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_remap_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.xfs_inode = type { i32 }

@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_reflink_remap_unlock(%struct.file* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.xfs_inode* @XFS_I(%struct.inode* %12)
  store %struct.xfs_inode* %13, %struct.xfs_inode** %6, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.xfs_inode* @XFS_I(%struct.inode* %16)
  store %struct.xfs_inode* %17, %struct.xfs_inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = icmp eq %struct.inode* %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %23 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %24 = call i32 @xfs_iunlock(%struct.xfs_inode* %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %29 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %30 = call i32 @xfs_iunlock(%struct.xfs_inode* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i32 @inode_unlock(%struct.inode* %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @inode_unlock(%struct.inode* %37)
  br label %39

39:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
