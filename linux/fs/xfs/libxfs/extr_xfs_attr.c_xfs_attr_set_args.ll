; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_set_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_set_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.xfs_buf = type { i32 }

@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_DINODE_FMT_EXTENTS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_set_args(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %7 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %7, i32 0, i32 1
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  store %struct.xfs_inode* %9, %struct.xfs_inode** %4, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %5, align 8
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %16
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %23, %1
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %38 = call i32 @xfs_attr_shortform_create(%struct.xfs_da_args* %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %41 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %42 = call i32 @xfs_attr_try_sf_addname(%struct.xfs_inode* %40, %struct.xfs_da_args* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %93

49:                                               ; preds = %39
  %50 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %51 = call i32 @xfs_attr_shortform_to_leaf(%struct.xfs_da_args* %50, %struct.xfs_buf** %5)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %93

56:                                               ; preds = %49
  %57 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %61 = call i32 @xfs_trans_bhold(i32 %59, %struct.xfs_buf* %60)
  %62 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %63 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %62, i32 0, i32 0
  %64 = call i32 @xfs_defer_finish(i32* %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %66 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %69 = call i32 @xfs_trans_bhold_release(i32 %67, %struct.xfs_buf* %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %56
  %73 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %74 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %77 = call i32 @xfs_trans_brelse(i32 %75, %struct.xfs_buf* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %93

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79, %23, %16
  %81 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %82 = load i32, i32* @XFS_ATTR_FORK, align 4
  %83 = call i64 @xfs_bmap_one_block(%struct.xfs_inode* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %87 = call i32 @xfs_attr_leaf_addname(%struct.xfs_da_args* %86)
  store i32 %87, i32* %6, align 4
  br label %91

88:                                               ; preds = %80
  %89 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %90 = call i32 @xfs_attr_node_addname(%struct.xfs_da_args* %89)
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %72, %54, %47
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @xfs_attr_shortform_create(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr_try_sf_addname(%struct.xfs_inode*, %struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr_shortform_to_leaf(%struct.xfs_da_args*, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_trans_bhold(i32, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_defer_finish(i32*) #1

declare dso_local i32 @xfs_trans_bhold_release(i32, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_brelse(i32, %struct.xfs_buf*) #1

declare dso_local i64 @xfs_bmap_one_block(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_attr_leaf_addname(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr_node_addname(%struct.xfs_da_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
