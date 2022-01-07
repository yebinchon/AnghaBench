; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_sync_dquot_helper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_sync_dquot_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_6__, %struct.super_block* }
%struct.TYPE_6__ = type { i64 }
%struct.super_block = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_5__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.TYPE_4__ = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@OCFS2_QSYNC_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*, i64)* @ocfs2_sync_dquot_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_sync_dquot_helper(%struct.dquot* %0, i64 %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.dquot*, %struct.dquot** %3, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 1
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.TYPE_5__* @sb_dqinfo(%struct.super_block* %13, i64 %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %16, align 8
  store %struct.ocfs2_mem_dqinfo* %17, %struct.ocfs2_mem_dqinfo** %7, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.dquot*, %struct.dquot** %3, align 8
  %21 = getelementptr inbounds %struct.dquot, %struct.dquot* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @from_kqid(i32* @init_user_ns, i64 %23)
  %25 = load %struct.dquot*, %struct.dquot** %3, align 8
  %26 = getelementptr inbounds %struct.dquot, %struct.dquot* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @trace_ocfs2_sync_dquot_helper(i32 %24, i64 %28, i64 %29, i32 %32)
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.dquot*, %struct.dquot** %3, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %90

41:                                               ; preds = %2
  %42 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %43 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %42, i32 1)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %90

47:                                               ; preds = %41
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %49 = load i32, i32* @OCFS2_QSYNC_CREDITS, align 4
  %50 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %48, i32 %49)
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @IS_ERR(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %87

59:                                               ; preds = %47
  %60 = load %struct.super_block*, %struct.super_block** %6, align 8
  %61 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @down_write(i32* %62)
  %64 = load %struct.dquot*, %struct.dquot** %3, align 8
  %65 = call i32 @ocfs2_sync_dquot(%struct.dquot* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.dquot*, %struct.dquot** %3, align 8
  %73 = call i32 @ocfs2_local_write_dquot(%struct.dquot* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @mlog_errno(i32 %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.super_block*, %struct.super_block** %6, align 8
  %81 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @up_write(i32* %82)
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %84, i32* %85)
  br label %87

87:                                               ; preds = %79, %54
  %88 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %89 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %88, i32 1)
  br label %90

90:                                               ; preds = %87, %46, %40
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_5__* @sb_dqinfo(%struct.super_block*, i64) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_sync_dquot_helper(i32, i64, i64, i32) #1

declare dso_local i32 @from_kqid(i32*, i64) #1

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
