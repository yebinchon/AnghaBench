; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_release_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_release_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.ocfs2_super = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.TYPE_6__ = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@DQ_ACTIVE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_release_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_release_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %7 = load %struct.dquot*, %struct.dquot** %2, align 8
  %8 = getelementptr inbounds %struct.dquot, %struct.dquot* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_4__* @sb_dqinfo(i32 %9, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %15, align 8
  store %struct.ocfs2_mem_dqinfo* %16, %struct.ocfs2_mem_dqinfo** %4, align 8
  %17 = load %struct.dquot*, %struct.dquot** %2, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %5, align 8
  store i32 0, i32* %6, align 4
  %21 = load %struct.dquot*, %struct.dquot** %2, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @from_kqid(i32* @init_user_ns, i32 %24)
  %26 = load %struct.dquot*, %struct.dquot** %2, align 8
  %27 = getelementptr inbounds %struct.dquot, %struct.dquot* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @trace_ocfs2_release_dquot(i32 %25, i32 %29)
  %31 = load %struct.dquot*, %struct.dquot** %2, align 8
  %32 = getelementptr inbounds %struct.dquot, %struct.dquot* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.dquot*, %struct.dquot** %2, align 8
  %35 = getelementptr inbounds %struct.dquot, %struct.dquot* %34, i32 0, i32 5
  %36 = call i32 @atomic_read(i32* %35)
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %119

39:                                               ; preds = %1
  %40 = load i64, i64* @current, align 8
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.dquot*, %struct.dquot** %2, align 8
  %47 = call i32 @dqgrab(%struct.dquot* %46)
  %48 = load %struct.dquot*, %struct.dquot** %2, align 8
  %49 = call %struct.TYPE_6__* @OCFS2_DQUOT(%struct.dquot* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 3
  %53 = call i64 @llist_add(i32* %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %60 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %59, i32 0, i32 1
  %61 = call i32 @queue_work(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %55, %45
  br label %119

63:                                               ; preds = %39
  %64 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %65 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %64, i32 1)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %119

69:                                               ; preds = %63
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %71 = load %struct.dquot*, %struct.dquot** %2, align 8
  %72 = getelementptr inbounds %struct.dquot, %struct.dquot* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dquot*, %struct.dquot** %2, align 8
  %75 = getelementptr inbounds %struct.dquot, %struct.dquot* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ocfs2_calc_qdel_credits(i32 %73, i32 %77)
  %79 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %70, i32 %78)
  store i32* %79, i32** %3, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i64 @IS_ERR(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %69
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @PTR_ERR(i32* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %116

88:                                               ; preds = %69
  %89 = load %struct.dquot*, %struct.dquot** %2, align 8
  %90 = call i32 @ocfs2_global_release_dquot(%struct.dquot* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %112

96:                                               ; preds = %88
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.dquot*, %struct.dquot** %2, align 8
  %99 = call i32 @ocfs2_local_release_dquot(i32* %97, %struct.dquot* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.dquot*, %struct.dquot** %2, align 8
  %107 = getelementptr inbounds %struct.dquot, %struct.dquot* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @DQ_ACTIVE_B, align 4
  %109 = load %struct.dquot*, %struct.dquot** %2, align 8
  %110 = getelementptr inbounds %struct.dquot, %struct.dquot* %109, i32 0, i32 1
  %111 = call i32 @clear_bit(i32 %108, i32* %110)
  br label %112

112:                                              ; preds = %105, %93
  %113 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %113, i32* %114)
  br label %116

116:                                              ; preds = %112, %83
  %117 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %4, align 8
  %118 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %117, i32 1)
  br label %119

119:                                              ; preds = %116, %68, %62, %38
  %120 = load %struct.dquot*, %struct.dquot** %2, align 8
  %121 = getelementptr inbounds %struct.dquot, %struct.dquot* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @mlog_errno(i32 %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_4__* @sb_dqinfo(i32, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @trace_ocfs2_release_dquot(i32, i32) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dqgrab(%struct.dquot*) #1

declare dso_local i64 @llist_add(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_calc_qdel_credits(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_global_release_dquot(%struct.dquot*) #1

declare dso_local i32 @ocfs2_local_release_dquot(i32*, %struct.dquot*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
