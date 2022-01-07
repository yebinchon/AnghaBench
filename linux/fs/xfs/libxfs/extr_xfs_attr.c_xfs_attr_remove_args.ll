; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_remove_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_remove_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ENOATTR = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_IFINLINE = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_remove_args(%struct.xfs_da_args* %0) #0 {
  %2 = alloca %struct.xfs_da_args*, align 8
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %2, align 8
  %5 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %5, i32 0, i32 0
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  store %struct.xfs_inode* %7, %struct.xfs_inode** %3, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %9 = call i32 @xfs_inode_hasattr(%struct.xfs_inode* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOATTR, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XFS_IFINLINE, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %31 = call i32 @xfs_attr_shortform_remove(%struct.xfs_da_args* %30)
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %14
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %34 = load i32, i32* @XFS_ATTR_FORK, align 4
  %35 = call i64 @xfs_bmap_one_block(%struct.xfs_inode* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %39 = call i32 @xfs_attr_leaf_removename(%struct.xfs_da_args* %38)
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %42 = call i32 @xfs_attr_node_removename(%struct.xfs_da_args* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %21
  br label %45

45:                                               ; preds = %44, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @xfs_inode_hasattr(%struct.xfs_inode*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_attr_shortform_remove(%struct.xfs_da_args*) #1

declare dso_local i64 @xfs_bmap_one_block(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_attr_leaf_removename(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr_node_removename(%struct.xfs_da_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
