; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_bast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dlm_lksb = type { i32 }
%struct.user_lock_res = type { i32, i32, i32, i32, i32, i32, i32 }

@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"BAST fired for lockres %.*s, blocking %d, level %d\0A\00", align 1
@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dlm_lksb*, i32)* @user_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_bast(%struct.ocfs2_dlm_lksb* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_lock_res*, align 8
  store %struct.ocfs2_dlm_lksb* %0, %struct.ocfs2_dlm_lksb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %7 = call %struct.user_lock_res* @user_lksb_to_lock_res(%struct.ocfs2_dlm_lksb* %6)
  store %struct.user_lock_res* %7, %struct.user_lock_res** %5, align 8
  %8 = load i32, i32* @ML_BASTS, align 4
  %9 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %10 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %13 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %17 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlog(i32 %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %15, i32 %18)
  %20 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %21 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %24 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %25 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %30 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %36 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %39 = call i32 @__user_dlm_queue_lockres(%struct.user_lock_res* %38)
  %40 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %41 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %40, i32 0, i32 2
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %44 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %43, i32 0, i32 1
  %45 = call i32 @wake_up(i32* %44)
  ret void
}

declare dso_local %struct.user_lock_res* @user_lksb_to_lock_res(%struct.ocfs2_dlm_lksb*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__user_dlm_queue_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
