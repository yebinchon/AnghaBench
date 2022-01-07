; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_get_ilocked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_get_ilocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_da_args = type { i32 }

@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_ATTR_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_get_ilocked(%struct.xfs_inode* %0, %struct.xfs_da_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_da_args*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_da_args* %1, %struct.xfs_da_args** %5, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %7 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %8 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @xfs_isilocked(%struct.xfs_inode* %6, i32 %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %13 = call i32 @xfs_inode_hasattr(%struct.xfs_inode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOATTR, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %27 = call i32 @xfs_attr_shortform_getvalue(%struct.xfs_da_args* %26)
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %30 = load i32, i32* @XFS_ATTR_FORK, align 4
  %31 = call i64 @xfs_bmap_one_block(%struct.xfs_inode* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %35 = call i32 @xfs_attr_leaf_get(%struct.xfs_da_args* %34)
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %38 = call i32 @xfs_attr_node_get(%struct.xfs_da_args* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %33, %25, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_inode_hasattr(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_attr_shortform_getvalue(%struct.xfs_da_args*) #1

declare dso_local i64 @xfs_bmap_one_block(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_attr_leaf_get(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr_node_get(%struct.xfs_da_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
