; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_to_bmdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_bmap_btree.c_xfs_bmbt_to_bmdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.xfs_btree_block = type { i64, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@XFS_BMAP_CRC_MAGIC = common dso_local global i32 0, align 4
@XFS_BUF_DADDR_NULL = common dso_local global i32 0, align 4
@XFS_BMAP_MAGIC = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_bmbt_to_bmdr(%struct.xfs_mount* %0, %struct.xfs_btree_block* %1, i32 %2, %struct.TYPE_10__* %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_btree_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_btree_block* %1, %struct.xfs_btree_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_11__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %5
  %21 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @XFS_BMAP_CRC_MAGIC, align 4
  %25 = call i64 @cpu_to_be32(i32 %24)
  %26 = icmp eq i64 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %30 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %34 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = call i32 @uuid_equal(i32* %32, i32* %35)
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %39 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @XFS_BUF_DADDR_NULL, align 4
  %44 = call i64 @cpu_to_be64(i32 %43)
  %45 = icmp eq i64 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  br label %57

48:                                               ; preds = %5
  %49 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %50 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @XFS_BMAP_MAGIC, align 4
  %53 = call i64 @cpu_to_be32(i32 %52)
  %54 = icmp eq i64 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  br label %57

57:                                               ; preds = %48, %20
  %58 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %59 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @NULLFSBLOCK, align 4
  %64 = call i64 @cpu_to_be64(i32 %63)
  %65 = icmp eq i64 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %69 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @NULLFSBLOCK, align 4
  %74 = call i64 @cpu_to_be64(i32 %73)
  %75 = icmp eq i64 %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %79 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %85 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %90 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @xfs_bmdr_maxrecs(i32 %94, i32 0)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %97 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %98 = call i32* @XFS_BMBT_KEY_ADDR(%struct.xfs_mount* %96, %struct.xfs_btree_block* %97, i32 1)
  store i32* %98, i32** %12, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = call i32* @XFS_BMDR_KEY_ADDR(%struct.TYPE_10__* %99, i32 1)
  store i32* %100, i32** %14, align 8
  %101 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %102 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32* @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount* %101, %struct.xfs_btree_block* %102, i32 1, i32 %103)
  store i32* %104, i32** %13, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32* @XFS_BMDR_PTR_ADDR(%struct.TYPE_10__* %105, i32 1, i32 %106)
  store i32* %107, i32** %15, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @be16_to_cpu(i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i32* %112, i32* %113, i32 %117)
  %119 = load i32*, i32** %15, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 4, %122
  %124 = trunc i64 %123 to i32
  %125 = call i32 @memcpy(i32* %119, i32* %120, i32 %124)
  ret void
}

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @xfs_bmdr_maxrecs(i32, i32) #1

declare dso_local i32* @XFS_BMBT_KEY_ADDR(%struct.xfs_mount*, %struct.xfs_btree_block*, i32) #1

declare dso_local i32* @XFS_BMDR_KEY_ADDR(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount*, %struct.xfs_btree_block*, i32, i32) #1

declare dso_local i32* @XFS_BMDR_PTR_ADDR(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
