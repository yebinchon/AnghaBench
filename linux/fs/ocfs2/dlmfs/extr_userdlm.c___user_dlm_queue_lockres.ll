; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c___user_dlm_queue_lockres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c___user_dlm_queue_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32 }

@USER_LOCK_QUEUED = common dso_local global i32 0, align 4
@user_dlm_unblock_lock = common dso_local global i32 0, align 4
@user_dlm_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_lock_res*)* @__user_dlm_queue_lockres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__user_dlm_queue_lockres(%struct.user_lock_res* %0) #0 {
  %2 = alloca %struct.user_lock_res*, align 8
  store %struct.user_lock_res* %0, %struct.user_lock_res** %2, align 8
  %3 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %4 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @USER_LOCK_QUEUED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %11 = call i32 @user_dlm_grab_inode_ref(%struct.user_lock_res* %10)
  %12 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %13 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %12, i32 0, i32 1
  %14 = load i32, i32* @user_dlm_unblock_lock, align 4
  %15 = call i32 @INIT_WORK(i32* %13, i32 %14)
  %16 = load i32, i32* @user_dlm_worker, align 4
  %17 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %18 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %17, i32 0, i32 1
  %19 = call i32 @queue_work(i32 %16, i32* %18)
  %20 = load i32, i32* @USER_LOCK_QUEUED, align 4
  %21 = load %struct.user_lock_res*, %struct.user_lock_res** %2, align 8
  %22 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @user_dlm_grab_inode_ref(%struct.user_lock_res*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
