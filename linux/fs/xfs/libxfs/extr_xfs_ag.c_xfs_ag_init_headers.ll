; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_ag_init_headers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ag.c_xfs_ag_init_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.aghdr_init_data = type { i64, i32, i32, i64, i32, i32 }
%struct.xfs_aghdr_grow_data = type { i64, i32, i32*, i32*, i32, i32 }

@XFS_SB_DADDR = common dso_local global i32 0, align 4
@xfs_sb_buf_ops = common dso_local global i32 0, align 4
@xfs_sbblock_init = common dso_local global i32 0, align 4
@xfs_agf_buf_ops = common dso_local global i32 0, align 4
@xfs_agfblock_init = common dso_local global i32 0, align 4
@xfs_agfl_buf_ops = common dso_local global i32 0, align 4
@xfs_agflblock_init = common dso_local global i32 0, align 4
@xfs_agi_buf_ops = common dso_local global i32 0, align 4
@xfs_agiblock_init = common dso_local global i32 0, align 4
@xfs_bnobt_buf_ops = common dso_local global i32 0, align 4
@xfs_bnoroot_init = common dso_local global i32 0, align 4
@xfs_cntbt_buf_ops = common dso_local global i32 0, align 4
@xfs_cntroot_init = common dso_local global i32 0, align 4
@xfs_inobt_buf_ops = common dso_local global i32 0, align 4
@xfs_btroot_init = common dso_local global i32 0, align 4
@XFS_BTNUM_INO = common dso_local global i32 0, align 4
@xfs_finobt_buf_ops = common dso_local global i32 0, align 4
@XFS_BTNUM_FINO = common dso_local global i32 0, align 4
@xfs_rmapbt_buf_ops = common dso_local global i32 0, align 4
@xfs_rmaproot_init = common dso_local global i32 0, align 4
@xfs_refcountbt_buf_ops = common dso_local global i32 0, align 4
@XFS_BTNUM_REFC = common dso_local global i32 0, align 4
@XFS_BUF_DADDR_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ag_init_headers(%struct.xfs_mount* %0, %struct.aghdr_init_data* %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.aghdr_init_data*, align 8
  %5 = alloca [11 x %struct.xfs_aghdr_grow_data], align 16
  %6 = alloca %struct.xfs_aghdr_grow_data*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store %struct.aghdr_init_data* %1, %struct.aghdr_init_data** %4, align 8
  %8 = getelementptr inbounds [11 x %struct.xfs_aghdr_grow_data], [11 x %struct.xfs_aghdr_grow_data]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %8, i32 0, i32 0
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %11 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %12 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @XFS_SB_DADDR, align 4
  %15 = call i64 @XFS_AG_DADDR(%struct.xfs_mount* %10, i32 %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %8, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %8, i32 0, i32 2
  store i32* @xfs_sb_buf_ops, i32** %17, align 8
  %18 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %8, i32 0, i32 3
  store i32* @xfs_sbblock_init, i32** %18, align 8
  %19 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %8, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %8, i32 0, i32 5
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %22 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %21, i32 1)
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %8, i64 1
  %24 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %23, i32 0, i32 0
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %26 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %27 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %30 = call i32 @XFS_AGF_DADDR(%struct.xfs_mount* %29)
  %31 = call i64 @XFS_AG_DADDR(%struct.xfs_mount* %25, i32 %28, i32 %30)
  store i64 %31, i64* %24, align 8
  %32 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %23, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %23, i32 0, i32 2
  store i32* @xfs_agf_buf_ops, i32** %33, align 8
  %34 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %23, i32 0, i32 3
  store i32* @xfs_agfblock_init, i32** %34, align 8
  %35 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %23, i32 0, i32 4
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %23, i32 0, i32 5
  %37 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %38 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %37, i32 1)
  store i32 %38, i32* %36, align 4
  %39 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %23, i64 1
  %40 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %39, i32 0, i32 0
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %42 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %43 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %46 = call i32 @XFS_AGFL_DADDR(%struct.xfs_mount* %45)
  %47 = call i64 @XFS_AG_DADDR(%struct.xfs_mount* %41, i32 %44, i32 %46)
  store i64 %47, i64* %40, align 8
  %48 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %39, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %39, i32 0, i32 2
  store i32* @xfs_agfl_buf_ops, i32** %49, align 8
  %50 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %39, i32 0, i32 3
  store i32* @xfs_agflblock_init, i32** %50, align 8
  %51 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %39, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %39, i32 0, i32 5
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %54 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %53, i32 1)
  store i32 %54, i32* %52, align 4
  %55 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %39, i64 1
  %56 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %55, i32 0, i32 0
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %58 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %59 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %62 = call i32 @XFS_AGI_DADDR(%struct.xfs_mount* %61)
  %63 = call i64 @XFS_AG_DADDR(%struct.xfs_mount* %57, i32 %60, i32 %62)
  store i64 %63, i64* %56, align 8
  %64 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %55, i32 0, i32 1
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %55, i32 0, i32 2
  store i32* @xfs_agi_buf_ops, i32** %65, align 8
  %66 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %55, i32 0, i32 3
  store i32* @xfs_agiblock_init, i32** %66, align 8
  %67 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %55, i32 0, i32 4
  store i32 0, i32* %67, align 8
  %68 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %55, i32 0, i32 5
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %70 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %69, i32 1)
  store i32 %70, i32* %68, align 4
  %71 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %55, i64 1
  %72 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %71, i32 0, i32 0
  %73 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %74 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %75 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %78 = call i32 @XFS_BNO_BLOCK(%struct.xfs_mount* %77)
  %79 = call i64 @XFS_AGB_TO_DADDR(%struct.xfs_mount* %73, i32 %76, i32 %78)
  store i64 %79, i64* %72, align 8
  %80 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %71, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %71, i32 0, i32 2
  store i32* @xfs_bnobt_buf_ops, i32** %81, align 8
  %82 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %71, i32 0, i32 3
  store i32* @xfs_bnoroot_init, i32** %82, align 8
  %83 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %71, i32 0, i32 4
  store i32 0, i32* %83, align 8
  %84 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %71, i32 0, i32 5
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %86 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @BTOBB(i32 %88)
  store i32 %89, i32* %84, align 4
  %90 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %71, i64 1
  %91 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %90, i32 0, i32 0
  %92 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %93 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %94 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %97 = call i32 @XFS_CNT_BLOCK(%struct.xfs_mount* %96)
  %98 = call i64 @XFS_AGB_TO_DADDR(%struct.xfs_mount* %92, i32 %95, i32 %97)
  store i64 %98, i64* %91, align 8
  %99 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %90, i32 0, i32 1
  store i32 1, i32* %99, align 8
  %100 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %90, i32 0, i32 2
  store i32* @xfs_cntbt_buf_ops, i32** %100, align 8
  %101 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %90, i32 0, i32 3
  store i32* @xfs_cntroot_init, i32** %101, align 8
  %102 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %90, i32 0, i32 4
  store i32 0, i32* %102, align 8
  %103 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %90, i32 0, i32 5
  %104 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %105 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @BTOBB(i32 %107)
  store i32 %108, i32* %103, align 4
  %109 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %90, i64 1
  %110 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %109, i32 0, i32 0
  %111 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %112 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %113 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %116 = call i32 @XFS_IBT_BLOCK(%struct.xfs_mount* %115)
  %117 = call i64 @XFS_AGB_TO_DADDR(%struct.xfs_mount* %111, i32 %114, i32 %116)
  store i64 %117, i64* %110, align 8
  %118 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %109, i32 0, i32 1
  store i32 1, i32* %118, align 8
  %119 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %109, i32 0, i32 2
  store i32* @xfs_inobt_buf_ops, i32** %119, align 8
  %120 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %109, i32 0, i32 3
  store i32* @xfs_btroot_init, i32** %120, align 8
  %121 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %109, i32 0, i32 4
  %122 = load i32, i32* @XFS_BTNUM_INO, align 4
  store i32 %122, i32* %121, align 8
  %123 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %109, i32 0, i32 5
  %124 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %125 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @BTOBB(i32 %127)
  store i32 %128, i32* %123, align 4
  %129 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %109, i64 1
  %130 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %129, i32 0, i32 0
  %131 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %132 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %133 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %136 = call i32 @XFS_FIBT_BLOCK(%struct.xfs_mount* %135)
  %137 = call i64 @XFS_AGB_TO_DADDR(%struct.xfs_mount* %131, i32 %134, i32 %136)
  store i64 %137, i64* %130, align 8
  %138 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %129, i32 0, i32 1
  %139 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %140 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %139, i32 0, i32 1
  %141 = call i32 @xfs_sb_version_hasfinobt(%struct.TYPE_4__* %140)
  store i32 %141, i32* %138, align 8
  %142 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %129, i32 0, i32 2
  store i32* @xfs_finobt_buf_ops, i32** %142, align 8
  %143 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %129, i32 0, i32 3
  store i32* @xfs_btroot_init, i32** %143, align 8
  %144 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %129, i32 0, i32 4
  %145 = load i32, i32* @XFS_BTNUM_FINO, align 4
  store i32 %145, i32* %144, align 8
  %146 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %129, i32 0, i32 5
  %147 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %148 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @BTOBB(i32 %150)
  store i32 %151, i32* %146, align 4
  %152 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %129, i64 1
  %153 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %152, i32 0, i32 0
  %154 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %155 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %156 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %159 = call i32 @XFS_RMAP_BLOCK(%struct.xfs_mount* %158)
  %160 = call i64 @XFS_AGB_TO_DADDR(%struct.xfs_mount* %154, i32 %157, i32 %159)
  store i64 %160, i64* %153, align 8
  %161 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %152, i32 0, i32 1
  %162 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %163 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %162, i32 0, i32 1
  %164 = call i32 @xfs_sb_version_hasrmapbt(%struct.TYPE_4__* %163)
  store i32 %164, i32* %161, align 8
  %165 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %152, i32 0, i32 2
  store i32* @xfs_rmapbt_buf_ops, i32** %165, align 8
  %166 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %152, i32 0, i32 3
  store i32* @xfs_rmaproot_init, i32** %166, align 8
  %167 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %152, i32 0, i32 4
  store i32 0, i32* %167, align 8
  %168 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %152, i32 0, i32 5
  %169 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %170 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @BTOBB(i32 %172)
  store i32 %173, i32* %168, align 4
  %174 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %152, i64 1
  %175 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %174, i32 0, i32 0
  %176 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %177 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %178 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %181 = call i32 @xfs_refc_block(%struct.xfs_mount* %180)
  %182 = call i64 @XFS_AGB_TO_DADDR(%struct.xfs_mount* %176, i32 %179, i32 %181)
  store i64 %182, i64* %175, align 8
  %183 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %174, i32 0, i32 1
  %184 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %185 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %184, i32 0, i32 1
  %186 = call i32 @xfs_sb_version_hasreflink(%struct.TYPE_4__* %185)
  store i32 %186, i32* %183, align 8
  %187 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %174, i32 0, i32 2
  store i32* @xfs_refcountbt_buf_ops, i32** %187, align 8
  %188 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %174, i32 0, i32 3
  store i32* @xfs_btroot_init, i32** %188, align 8
  %189 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %174, i32 0, i32 4
  %190 = load i32, i32* @XFS_BTNUM_REFC, align 4
  store i32 %190, i32* %189, align 8
  %191 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %174, i32 0, i32 5
  %192 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %193 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @BTOBB(i32 %195)
  store i32 %196, i32* %191, align 4
  %197 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %174, i64 1
  %198 = bitcast %struct.xfs_aghdr_grow_data* %197 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %198, i8 0, i64 40, i1 false)
  %199 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %197, i32 0, i32 0
  %200 = load i64, i64* @XFS_BUF_DADDR_NULL, align 8
  store i64 %200, i64* %199, align 8
  store i32 0, i32* %7, align 4
  %201 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %202 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %205 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %203, %206
  %208 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %209 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %207
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 8
  %214 = getelementptr inbounds [11 x %struct.xfs_aghdr_grow_data], [11 x %struct.xfs_aghdr_grow_data]* %5, i64 0, i64 0
  store %struct.xfs_aghdr_grow_data* %214, %struct.xfs_aghdr_grow_data** %6, align 8
  br label %215

215:                                              ; preds = %256, %2
  %216 = load %struct.xfs_aghdr_grow_data*, %struct.xfs_aghdr_grow_data** %6, align 8
  %217 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @XFS_BUF_DADDR_NULL, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %259

221:                                              ; preds = %215
  %222 = load %struct.xfs_aghdr_grow_data*, %struct.xfs_aghdr_grow_data** %6, align 8
  %223 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %221
  br label %256

227:                                              ; preds = %221
  %228 = load %struct.xfs_aghdr_grow_data*, %struct.xfs_aghdr_grow_data** %6, align 8
  %229 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %232 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load %struct.xfs_aghdr_grow_data*, %struct.xfs_aghdr_grow_data** %6, align 8
  %234 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %237 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load %struct.xfs_aghdr_grow_data*, %struct.xfs_aghdr_grow_data** %6, align 8
  %239 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %242 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 8
  %243 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %244 = load %struct.aghdr_init_data*, %struct.aghdr_init_data** %4, align 8
  %245 = load %struct.xfs_aghdr_grow_data*, %struct.xfs_aghdr_grow_data** %6, align 8
  %246 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.xfs_aghdr_grow_data*, %struct.xfs_aghdr_grow_data** %6, align 8
  %249 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @xfs_ag_init_hdr(%struct.xfs_mount* %243, %struct.aghdr_init_data* %244, i32* %247, i32* %250)
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %7, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %227
  br label %259

255:                                              ; preds = %227
  br label %256

256:                                              ; preds = %255, %226
  %257 = load %struct.xfs_aghdr_grow_data*, %struct.xfs_aghdr_grow_data** %6, align 8
  %258 = getelementptr inbounds %struct.xfs_aghdr_grow_data, %struct.xfs_aghdr_grow_data* %257, i32 1
  store %struct.xfs_aghdr_grow_data* %258, %struct.xfs_aghdr_grow_data** %6, align 8
  br label %215

259:                                              ; preds = %254, %215
  %260 = load i32, i32* %7, align 4
  ret i32 %260
}

declare dso_local i64 @XFS_AG_DADDR(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @XFS_FSS_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @XFS_AGF_DADDR(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_AGFL_DADDR(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_AGI_DADDR(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_AGB_TO_DADDR(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @XFS_BNO_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @BTOBB(i32) #1

declare dso_local i32 @XFS_CNT_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_IBT_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_FIBT_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sb_version_hasfinobt(%struct.TYPE_4__*) #1

declare dso_local i32 @XFS_RMAP_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sb_version_hasrmapbt(%struct.TYPE_4__*) #1

declare dso_local i32 @xfs_refc_block(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sb_version_hasreflink(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @xfs_ag_init_hdr(%struct.xfs_mount*, %struct.aghdr_init_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
