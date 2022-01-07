; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_bmap_count_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_bmap_count_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xfs_btree_block = type { i32 }
%struct.xfs_ifork = type { i32, i32, %struct.xfs_btree_block* }

@NULLFSBLOCK = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"xfs_bmap_count_blocks(2)\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmap_count_blocks(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.xfs_mount*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xfs_btree_block*, align 8
  %15 = alloca %struct.xfs_ifork*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i32, i32* @NULLFSBLOCK, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %21 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %20, i32 0, i32 0
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %21, align 8
  store %struct.xfs_mount* %22, %struct.xfs_mount** %12, align 8
  %23 = load i64*, i64** %10, align 8
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %11, align 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %25, i32 %26)
  store %struct.xfs_ifork* %27, %struct.xfs_ifork** %15, align 8
  %28 = load %struct.xfs_ifork*, %struct.xfs_ifork** %15, align 8
  %29 = icmp ne %struct.xfs_ifork* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %121

31:                                               ; preds = %5
  %32 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @XFS_IFORK_FORMAT(%struct.xfs_inode* %32, i32 %33)
  switch i32 %34, label %120 [
    i32 128, label %35
    i32 129, label %40
  ]

35:                                               ; preds = %31
  %36 = load %struct.xfs_ifork*, %struct.xfs_ifork** %15, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = call i64 @xfs_bmap_count_leaves(%struct.xfs_ifork* %36, i64* %37)
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %6, align 4
  br label %121

40:                                               ; preds = %31
  %41 = load %struct.xfs_ifork*, %struct.xfs_ifork** %15, align 8
  %42 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @XFS_IFEXTENTS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %40
  %48 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %49 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @xfs_iread_extents(%struct.xfs_trans* %48, %struct.xfs_inode* %49, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %6, align 4
  br label %121

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.xfs_ifork*, %struct.xfs_ifork** %15, align 8
  %59 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %58, i32 0, i32 2
  %60 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %59, align 8
  store %struct.xfs_btree_block* %60, %struct.xfs_btree_block** %14, align 8
  %61 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %14, align 8
  %62 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be16_to_cpu(i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp sgt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %70 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %14, align 8
  %71 = load %struct.xfs_ifork*, %struct.xfs_ifork** %15, align 8
  %72 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount* %69, %struct.xfs_btree_block* %70, i32 1, i32 %73)
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be64_to_cpu(i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @NULLFSBLOCK, align 4
  %80 = icmp ne i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount* %83, i32 %84)
  %86 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %87 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %85, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @ASSERT(i32 %91)
  %93 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount* %93, i32 %94)
  %96 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %97 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %95, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %104 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %105 = load %struct.xfs_ifork*, %struct.xfs_ifork** %15, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i64*, i64** %10, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = call i32 @xfs_bmap_count_tree(%struct.xfs_mount* %103, %struct.xfs_trans* %104, %struct.xfs_ifork* %105, i32 %106, i32 %107, i64* %108, i64* %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %57
  %114 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %115 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %116 = call i32 @XFS_ERROR_REPORT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %114, %struct.xfs_mount* %115)
  %117 = load i32, i32* @EFSCORRUPTED, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %121

119:                                              ; preds = %57
  store i32 0, i32* %6, align 4
  br label %121

120:                                              ; preds = %31
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %119, %113, %54, %35, %30
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i32 @XFS_IFORK_FORMAT(%struct.xfs_inode*, i32) #1

declare dso_local i64 @xfs_bmap_count_leaves(%struct.xfs_ifork*, i64*) #1

declare dso_local i32 @xfs_iread_extents(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount*, %struct.xfs_btree_block*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @XFS_FSB_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_FSB_TO_AGBNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_bmap_count_tree(%struct.xfs_mount*, %struct.xfs_trans*, %struct.xfs_ifork*, i32, i32, i64*, i64*) #1

declare dso_local i32 @XFS_ERROR_REPORT(i8*, i32, %struct.xfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
