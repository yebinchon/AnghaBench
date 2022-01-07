; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount_btree.c_xfs_refcountbt_init_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount_btree.c_xfs_refcountbt_init_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_10__, i32, i32, i32, i32*, i32, i32, %struct.xfs_mount*, %struct.xfs_trans* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, %struct.xfs_buf* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.xfs_mount = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_agf = type { i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@xfs_btree_cur_zone = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@XFS_BTNUM_REFC = common dso_local global i32 0, align 4
@xfs_refcountbt_ops = common dso_local global i32 0, align 4
@xs_refcbt_2 = common dso_local global i32 0, align 4
@XFS_BTREE_CRC_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_btree_cur* @xfs_refcountbt_init_cursor(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_buf* %2, i64 %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xfs_agf*, align 8
  %10 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %6, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %12 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %11)
  store %struct.xfs_agf* %12, %struct.xfs_agf** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @NULLAGNUMBER, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @xfs_btree_cur_zone, align 4
  %27 = load i32, i32* @KM_NOFS, align 4
  %28 = call %struct.xfs_btree_cur* @kmem_zone_zalloc(i32 %26, i32 %27)
  store %struct.xfs_btree_cur* %28, %struct.xfs_btree_cur** %10, align 8
  %29 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %30 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %31 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %30, i32 0, i32 8
  store %struct.xfs_trans* %29, %struct.xfs_trans** %31, align 8
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %33 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %34 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %33, i32 0, i32 7
  store %struct.xfs_mount* %32, %struct.xfs_mount** %34, align 8
  %35 = load i32, i32* @XFS_BTNUM_REFC, align 4
  %36 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %37 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %39 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %43 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %45 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %44, i32 0, i32 4
  store i32* @xfs_refcountbt_ops, i32** %45, align 8
  %46 = load i32, i32* @xs_refcbt_2, align 4
  %47 = call i32 @XFS_STATS_CALC_INDEX(i32 %46)
  %48 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %49 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.xfs_agf*, %struct.xfs_agf** %9, align 8
  %51 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %55 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %57 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %58 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store %struct.xfs_buf* %56, %struct.xfs_buf** %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %63 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i64 %61, i64* %65, align 8
  %66 = load i32, i32* @XFS_BTREE_CRC_BLOCKS, align 4
  %67 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %68 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %72 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %78 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  ret %struct.xfs_btree_cur* %83
}

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_btree_cur* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @XFS_STATS_CALC_INDEX(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
