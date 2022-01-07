; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmdr_to_bmbt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmdr_to_bmbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.xfs_btree_block = type { i32, i32 }

@XFS_BUF_DADDR_NULL = common dso_local global i32 0, align 4
@XFS_BTNUM_BMAP = common dso_local global i32 0, align 4
@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_bmdr_to_bmbt(%struct.xfs_inode* %0, %struct.TYPE_5__* %1, i32 %2, %struct.xfs_btree_block* %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_btree_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_mount*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.xfs_btree_block* %3, %struct.xfs_btree_block** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %17, i32 0, i32 1
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %18, align 8
  store %struct.xfs_mount* %19, %struct.xfs_mount** %11, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %21 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %22 = load i32, i32* @XFS_BUF_DADDR_NULL, align 4
  %23 = load i32, i32* @XFS_BTNUM_BMAP, align 4
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %28 = call i32 @xfs_btree_init_block_int(%struct.xfs_mount* %20, %struct.xfs_btree_block* %21, i32 %22, i32 %23, i32 0, i32 0, i32 %26, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %33 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %35 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16_to_cpu(i32 %36)
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %45 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @xfs_bmdr_maxrecs(i32 %46, i32 0)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = call i32* @XFS_BMDR_KEY_ADDR(%struct.TYPE_5__* %48, i32 1)
  store i32* %49, i32** %13, align 8
  %50 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %51 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %52 = call i32* @XFS_BMBT_KEY_ADDR(%struct.xfs_mount* %50, %struct.xfs_btree_block* %51, i32 1)
  store i32* %52, i32** %15, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32* @XFS_BMDR_PTR_ADDR(%struct.TYPE_5__* %53, i32 1, i32 %54)
  store i32* %55, i32** %14, align 8
  %56 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %57 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32* @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount* %56, %struct.xfs_btree_block* %57, i32 1, i32 %58)
  store i32* %59, i32** %16, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be16_to_cpu(i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(i32* %64, i32* %65, i32 %69)
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(i32* %71, i32* %72, i32 %76)
  ret void
}

declare dso_local i32 @xfs_btree_init_block_int(%struct.xfs_mount*, %struct.xfs_btree_block*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_bmdr_maxrecs(i32, i32) #1

declare dso_local i32* @XFS_BMDR_KEY_ADDR(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @XFS_BMBT_KEY_ADDR(%struct.xfs_mount*, %struct.xfs_btree_block*, i32) #1

declare dso_local i32* @XFS_BMDR_PTR_ADDR(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount*, %struct.xfs_btree_block*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
