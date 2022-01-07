; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_qinfo_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_qinfo_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_2__, %struct.ocfs2_lock_res }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_mem_dqinfo* %0, %struct.ocfs2_mem_dqinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %9, i32 0, i32 1
  store %struct.ocfs2_lock_res* %10, %struct.ocfs2_lock_res** %5, align 8
  %11 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %25 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EROFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %67

34:                                               ; preds = %22
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %36 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %67

39:                                               ; preds = %34
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %40, %struct.ocfs2_lock_res* %41, i32 %42, i32 0, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %67

49:                                               ; preds = %39
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %51 = call i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %67

54:                                               ; preds = %49
  %55 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %56 = call i32 @ocfs2_refresh_qinfo(%struct.ocfs2_mem_dqinfo* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %53, %46, %38, %33
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_refresh_qinfo(%struct.ocfs2_mem_dqinfo*) #1

declare dso_local i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
