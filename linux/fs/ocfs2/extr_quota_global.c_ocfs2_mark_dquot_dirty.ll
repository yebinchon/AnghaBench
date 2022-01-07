; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_mark_dquot_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_mark_dquot_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32, %struct.TYPE_6__, %struct.super_block* }
%struct.TYPE_6__ = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_5__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.TYPE_4__ = type { i32 }

@DQ_LASTSET_B = common dso_local global i32 0, align 4
@QIF_ILIMITS_B = common dso_local global i32 0, align 4
@QIF_BLIMITS_B = common dso_local global i32 0, align 4
@QIF_INODES_B = common dso_local global i32 0, align 4
@QIF_SPACE_B = common dso_local global i32 0, align 4
@QIF_BTIME_B = common dso_local global i32 0, align 4
@QIF_ITIME_B = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@OCFS2_QSYNC_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_mark_dquot_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_mark_dquot_dirty(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %11 = load i32, i32* @DQ_LASTSET_B, align 4
  %12 = load i32, i32* @QIF_ILIMITS_B, align 4
  %13 = add nsw i32 %11, %12
  %14 = shl i32 1, %13
  %15 = load i32, i32* @DQ_LASTSET_B, align 4
  %16 = load i32, i32* @QIF_BLIMITS_B, align 4
  %17 = add nsw i32 %15, %16
  %18 = shl i32 1, %17
  %19 = or i32 %14, %18
  %20 = load i32, i32* @DQ_LASTSET_B, align 4
  %21 = load i32, i32* @QIF_INODES_B, align 4
  %22 = add nsw i32 %20, %21
  %23 = shl i32 1, %22
  %24 = or i32 %19, %23
  %25 = load i32, i32* @DQ_LASTSET_B, align 4
  %26 = load i32, i32* @QIF_SPACE_B, align 4
  %27 = add nsw i32 %25, %26
  %28 = shl i32 1, %27
  %29 = or i32 %24, %28
  %30 = load i32, i32* @DQ_LASTSET_B, align 4
  %31 = load i32, i32* @QIF_BTIME_B, align 4
  %32 = add nsw i32 %30, %31
  %33 = shl i32 1, %32
  %34 = or i32 %29, %33
  %35 = load i32, i32* @DQ_LASTSET_B, align 4
  %36 = load i32, i32* @QIF_ITIME_B, align 4
  %37 = add nsw i32 %35, %36
  %38 = shl i32 1, %37
  %39 = or i32 %34, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %41 = load %struct.dquot*, %struct.dquot** %2, align 8
  %42 = getelementptr inbounds %struct.dquot, %struct.dquot* %41, i32 0, i32 3
  %43 = load %struct.super_block*, %struct.super_block** %42, align 8
  store %struct.super_block* %43, %struct.super_block** %6, align 8
  %44 = load %struct.dquot*, %struct.dquot** %2, align 8
  %45 = getelementptr inbounds %struct.dquot, %struct.dquot* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.TYPE_5__* @sb_dqinfo(%struct.super_block* %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %51, align 8
  store %struct.ocfs2_mem_dqinfo* %52, %struct.ocfs2_mem_dqinfo** %8, align 8
  %53 = load %struct.super_block*, %struct.super_block** %6, align 8
  %54 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %53)
  store %struct.ocfs2_super* %54, %struct.ocfs2_super** %10, align 8
  %55 = load %struct.dquot*, %struct.dquot** %2, align 8
  %56 = getelementptr inbounds %struct.dquot, %struct.dquot* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @from_kqid(i32* @init_user_ns, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @trace_ocfs2_mark_dquot_dirty(i32 %59, i32 %60)
  %62 = load %struct.dquot*, %struct.dquot** %2, align 8
  %63 = getelementptr inbounds %struct.dquot, %struct.dquot* %62, i32 0, i32 1
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.dquot*, %struct.dquot** %2, align 8
  %66 = getelementptr inbounds %struct.dquot, %struct.dquot* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %1
  %73 = load %struct.dquot*, %struct.dquot** %2, align 8
  %74 = getelementptr inbounds %struct.dquot, %struct.dquot* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = call i64 (...) @journal_current_handle()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78, %72
  %82 = load %struct.dquot*, %struct.dquot** %2, align 8
  %83 = call i32 @ocfs2_write_dquot(%struct.dquot* %82)
  store i32 %83, i32* %5, align 4
  br label %128

84:                                               ; preds = %78
  %85 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %86 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %85, i32 1)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %128

90:                                               ; preds = %84
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %92 = load i32, i32* @OCFS2_QSYNC_CREDITS, align 4
  %93 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %91, i32 %92)
  store i32* %93, i32** %9, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i64 @IS_ERR(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @PTR_ERR(i32* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %125

102:                                              ; preds = %90
  %103 = load %struct.super_block*, %struct.super_block** %6, align 8
  %104 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @down_write(i32* %105)
  %107 = load %struct.dquot*, %struct.dquot** %2, align 8
  %108 = call i32 @ocfs2_sync_dquot(%struct.dquot* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %117

114:                                              ; preds = %102
  %115 = load %struct.dquot*, %struct.dquot** %2, align 8
  %116 = call i32 @ocfs2_local_write_dquot(%struct.dquot* %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.super_block*, %struct.super_block** %6, align 8
  %119 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = call i32 @up_write(i32* %120)
  %122 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %122, i32* %123)
  br label %125

125:                                              ; preds = %117, %97
  %126 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %127 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %126, i32 1)
  br label %128

128:                                              ; preds = %125, %89, %81
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @mlog_errno(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_5__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_mark_dquot_dirty(i32, i32) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @journal_current_handle(...) #1

declare dso_local i32 @ocfs2_write_dquot(%struct.dquot*) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @ocfs2_sync_dquot(%struct.dquot*) #1

declare dso_local i32 @ocfs2_local_write_dquot(%struct.dquot*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
