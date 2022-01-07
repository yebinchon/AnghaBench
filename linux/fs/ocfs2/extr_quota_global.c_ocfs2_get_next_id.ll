; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_get_next_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_get_next_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.kqid = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_mem_dqinfo* }

@init_user_ns = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.kqid*)* @ocfs2_get_next_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_next_id(%struct.super_block* %0, %struct.kqid* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.kqid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.kqid* %1, %struct.kqid** %4, align 8
  %8 = load %struct.kqid*, %struct.kqid** %4, align 8
  %9 = getelementptr inbounds %struct.kqid, %struct.kqid* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_2__* @sb_dqinfo(%struct.super_block* %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %14, align 8
  store %struct.ocfs2_mem_dqinfo* %15, %struct.ocfs2_mem_dqinfo** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.kqid*, %struct.kqid** %4, align 8
  %17 = getelementptr inbounds %struct.kqid, %struct.kqid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @from_kqid(i32* @init_user_ns, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @trace_ocfs2_get_next_id(i32 %19, i32 %20)
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @sb_has_quota_loaded(%struct.super_block* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ESRCH, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %51

29:                                               ; preds = %2
  %30 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %6, align 8
  %31 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %51

35:                                               ; preds = %29
  %36 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %6, align 8
  %37 = call i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %48

41:                                               ; preds = %35
  %42 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %42, i32 0, i32 0
  %44 = load %struct.kqid*, %struct.kqid** %4, align 8
  %45 = call i32 @qtree_get_next_id(i32* %43, %struct.kqid* %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %6, align 8
  %47 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %46, i32 0)
  br label %48

48:                                               ; preds = %41, %40
  %49 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %6, align 8
  %50 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %49, i32 0)
  br label %51

51:                                               ; preds = %48, %34, %26
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @ESRCH, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %67

67:                                               ; preds = %64, %59, %54, %51
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_2__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @trace_ocfs2_get_next_id(i32, i32) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i32 @sb_has_quota_loaded(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @qtree_get_next_id(i32*, %struct.kqid*) #1

declare dso_local i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
