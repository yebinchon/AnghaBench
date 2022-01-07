; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_init_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_init_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_5__, i32, i32, i8*, i32*, i8*, i64, %struct.xfs_mount*, %struct.xfs_trans* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.xfs_buf* }
%struct.xfs_mount = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_agi = type { i32, i32 }

@xfs_btree_cur_zone = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@XFS_BTNUM_INO = common dso_local global i64 0, align 8
@xfs_inobt_ops = common dso_local global i32 0, align 4
@xs_ibt_2 = common dso_local global i32 0, align 4
@xfs_finobt_ops = common dso_local global i32 0, align 4
@xs_fibt_2 = common dso_local global i32 0, align 4
@XFS_BTREE_CRC_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_btree_cur* @xfs_inobt_init_cursor(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_buf* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfs_agi*, align 8
  %12 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %14 = call %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf* %13)
  store %struct.xfs_agi* %14, %struct.xfs_agi** %11, align 8
  %15 = load i32, i32* @xfs_btree_cur_zone, align 4
  %16 = load i32, i32* @KM_NOFS, align 4
  %17 = call %struct.xfs_btree_cur* @kmem_zone_zalloc(i32 %15, i32 %16)
  store %struct.xfs_btree_cur* %17, %struct.xfs_btree_cur** %12, align 8
  %18 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %19 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %20 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %19, i32 0, i32 8
  store %struct.xfs_trans* %18, %struct.xfs_trans** %20, align 8
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %22 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %23 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %22, i32 0, i32 7
  store %struct.xfs_mount* %21, %struct.xfs_mount** %23, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %26 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @XFS_BTNUM_INO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %5
  %31 = load %struct.xfs_agi*, %struct.xfs_agi** %11, align 8
  %32 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @be32_to_cpu(i32 %33)
  %35 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %36 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %38 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %37, i32 0, i32 4
  store i32* @xfs_inobt_ops, i32** %38, align 8
  %39 = load i32, i32* @xs_ibt_2, align 4
  %40 = call i8* @XFS_STATS_CALC_INDEX(i32 %39)
  %41 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %42 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  br label %56

43:                                               ; preds = %5
  %44 = load %struct.xfs_agi*, %struct.xfs_agi** %11, align 8
  %45 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @be32_to_cpu(i32 %46)
  %48 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %49 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %51 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %50, i32 0, i32 4
  store i32* @xfs_finobt_ops, i32** %51, align 8
  %52 = load i32, i32* @xs_fibt_2, align 4
  %53 = call i8* @XFS_STATS_CALC_INDEX(i32 %52)
  %54 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %55 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %43, %30
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %62 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %64 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %63, i32 0, i32 0
  %65 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_6__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load i32, i32* @XFS_BTREE_CRC_BLOCKS, align 4
  %69 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %56
  %74 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %75 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %76 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store %struct.xfs_buf* %74, %struct.xfs_buf** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %81 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  ret %struct.xfs_btree_cur* %84
}

declare dso_local %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf*) #1

declare dso_local %struct.xfs_btree_cur* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @XFS_STATS_CALC_INDEX(i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
