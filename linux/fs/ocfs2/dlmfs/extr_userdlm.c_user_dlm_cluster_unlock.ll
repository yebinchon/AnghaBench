; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_cluster_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_cluster_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32, i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lockres %.*s: invalid request!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_dlm_cluster_unlock(%struct.user_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.user_lock_res*, align 8
  %4 = alloca i32, align 4
  store %struct.user_lock_res* %0, %struct.user_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DLM_LOCK_EX, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DLM_LOCK_PR, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, i32* @ML_ERROR, align 4
  %14 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %15 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %18 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mlog(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  br label %33

21:                                               ; preds = %8, %2
  %22 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %23 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @user_dlm_dec_holders(%struct.user_lock_res* %25, i32 %26)
  %28 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %29 = call i32 @__user_dlm_cond_queue_lockres(%struct.user_lock_res* %28)
  %30 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %31 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  br label %33

33:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @user_dlm_dec_holders(%struct.user_lock_res*, i32) #1

declare dso_local i32 @__user_dlm_cond_queue_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
