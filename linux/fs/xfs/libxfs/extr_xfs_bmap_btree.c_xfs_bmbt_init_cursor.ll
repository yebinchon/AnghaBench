; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_init_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_init_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, %struct.TYPE_7__, i32*, i32, i32, i32, i64, %struct.xfs_mount*, %struct.xfs_trans* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, %struct.xfs_inode*, i32 }
%struct.xfs_mount = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_ifork = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@XFS_COW_FORK = common dso_local global i32 0, align 4
@xfs_btree_cur_zone = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@XFS_BTNUM_BMAP = common dso_local global i32 0, align 4
@xs_bmbt_2 = common dso_local global i32 0, align 4
@xfs_bmbt_ops = common dso_local global i32 0, align 4
@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4
@XFS_BTREE_ROOT_IN_INODE = common dso_local global i32 0, align 4
@XFS_BTREE_CRC_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_btree_cur* @xfs_bmbt_init_cursor(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_inode* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_ifork*, align 8
  %10 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %6, align 8
  store %struct.xfs_inode* %2, %struct.xfs_inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %11, i32 %12)
  store %struct.xfs_ifork* %13, %struct.xfs_ifork** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @XFS_COW_FORK, align 4
  %16 = icmp ne i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32, i32* @xfs_btree_cur_zone, align 4
  %20 = load i32, i32* @KM_NOFS, align 4
  %21 = call %struct.xfs_btree_cur* @kmem_zone_zalloc(i32 %19, i32 %20)
  store %struct.xfs_btree_cur* %21, %struct.xfs_btree_cur** %10, align 8
  %22 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %23 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %24 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %23, i32 0, i32 8
  store %struct.xfs_trans* %22, %struct.xfs_trans** %24, align 8
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %26 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %27 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %26, i32 0, i32 7
  store %struct.xfs_mount* %25, %struct.xfs_mount** %27, align 8
  %28 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %29 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @be16_to_cpu(i32 %32)
  %34 = add nsw i64 %33, 1
  %35 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %36 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @XFS_BTNUM_BMAP, align 4
  %38 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %39 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %45 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @xs_bmbt_2, align 4
  %47 = call i32 @XFS_STATS_CALC_INDEX(i32 %46)
  %48 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %49 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %51 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %50, i32 0, i32 2
  store i32* @xfs_bmbt_ops, i32** %51, align 8
  %52 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %53 = load i32, i32* @XFS_BTREE_ROOT_IN_INODE, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %56 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 0
  %59 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_8__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %4
  %62 = load i32, i32* @XFS_BTREE_CRC_BLOCKS, align 4
  %63 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %64 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %4
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @XFS_IFORK_SIZE(%struct.xfs_inode* %68, i32 %69)
  %71 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %72 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  store i32 %70, i32* %74, align 8
  %75 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %76 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %77 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  store %struct.xfs_inode* %75, %struct.xfs_inode** %79, align 8
  %80 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %81 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %85 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %90 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  ret %struct.xfs_btree_cur* %93
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_btree_cur* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @XFS_STATS_CALC_INDEX(i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_8__*) #1

declare dso_local i32 @XFS_IFORK_SIZE(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
