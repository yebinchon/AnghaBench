; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc_btree.c_xfs_allocbt_init_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc_btree.c_xfs_allocbt_init_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i64, i32, %struct.TYPE_5__, i8*, i32*, i8*, i32, %struct.xfs_mount*, %struct.xfs_trans* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.xfs_buf* }
%struct.xfs_mount = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_agf = type { i32* }

@XFS_BTNUM_BNO = common dso_local global i64 0, align 8
@XFS_BTNUM_CNT = common dso_local global i64 0, align 8
@xfs_btree_cur_zone = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@xs_abtc_2 = common dso_local global i32 0, align 4
@xfs_cntbt_ops = common dso_local global i32 0, align 4
@XFS_BTREE_LASTREC_UPDATE = common dso_local global i32 0, align 4
@xs_abtb_2 = common dso_local global i32 0, align 4
@xfs_bnobt_ops = common dso_local global i32 0, align 4
@XFS_BTREE_CRC_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_btree_cur* @xfs_allocbt_init_cursor(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_buf* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfs_agf*, align 8
  %12 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %14 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %13)
  store %struct.xfs_agf* %14, %struct.xfs_agf** %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @XFS_BTNUM_BNO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ true, %5 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @xfs_btree_cur_zone, align 4
  %27 = load i32, i32* @KM_NOFS, align 4
  %28 = call %struct.xfs_btree_cur* @kmem_zone_zalloc(i32 %26, i32 %27)
  store %struct.xfs_btree_cur* %28, %struct.xfs_btree_cur** %12, align 8
  %29 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %30 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %31 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %30, i32 0, i32 8
  store %struct.xfs_trans* %29, %struct.xfs_trans** %31, align 8
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %33 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %34 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %33, i32 0, i32 7
  store %struct.xfs_mount* %32, %struct.xfs_mount** %34, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %37 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %39 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %43 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %22
  %48 = load i32, i32* @xs_abtc_2, align 4
  %49 = call i8* @XFS_STATS_CALC_INDEX(i32 %48)
  %50 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %51 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %53 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %52, i32 0, i32 4
  store i32* @xfs_cntbt_ops, i32** %53, align 8
  %54 = load %struct.xfs_agf*, %struct.xfs_agf** %11, align 8
  %55 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @be32_to_cpu(i32 %59)
  %61 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %62 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @XFS_BTREE_LASTREC_UPDATE, align 4
  %64 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %65 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %82

66:                                               ; preds = %22
  %67 = load i32, i32* @xs_abtb_2, align 4
  %68 = call i8* @XFS_STATS_CALC_INDEX(i32 %67)
  %69 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %72 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %71, i32 0, i32 4
  store i32* @xfs_bnobt_ops, i32** %72, align 8
  %73 = load %struct.xfs_agf*, %struct.xfs_agf** %11, align 8
  %74 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @XFS_BTNUM_BNO, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @be32_to_cpu(i32 %78)
  %80 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %81 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %66, %47
  %83 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %84 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %85 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store %struct.xfs_buf* %83, %struct.xfs_buf** %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %90 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %94 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %93, i32 0, i32 0
  %95 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_6__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %82
  %98 = load i32, i32* @XFS_BTREE_CRC_BLOCKS, align 4
  %99 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %100 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %82
  %104 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  ret %struct.xfs_btree_cur* %104
}

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_btree_cur* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i8* @XFS_STATS_CALC_INDEX(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
