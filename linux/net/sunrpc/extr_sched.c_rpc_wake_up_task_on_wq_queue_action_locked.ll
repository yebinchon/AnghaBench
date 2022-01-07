; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_wake_up_task_on_wq_queue_action_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_wake_up_task_on_wq_queue_action_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }
%struct.rpc_wait_queue = type { i32 }
%struct.rpc_task = type { %struct.rpc_wait_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_task* (%struct.workqueue_struct*, %struct.rpc_wait_queue*, %struct.rpc_task*, i32 (%struct.rpc_task*, i8*)*, i8*)* @rpc_wake_up_task_on_wq_queue_action_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_task* @rpc_wake_up_task_on_wq_queue_action_locked(%struct.workqueue_struct* %0, %struct.rpc_wait_queue* %1, %struct.rpc_task* %2, i32 (%struct.rpc_task*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.rpc_task*, align 8
  %7 = alloca %struct.workqueue_struct*, align 8
  %8 = alloca %struct.rpc_wait_queue*, align 8
  %9 = alloca %struct.rpc_task*, align 8
  %10 = alloca i32 (%struct.rpc_task*, i8*)*, align 8
  %11 = alloca i8*, align 8
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %7, align 8
  store %struct.rpc_wait_queue* %1, %struct.rpc_wait_queue** %8, align 8
  store %struct.rpc_task* %2, %struct.rpc_task** %9, align 8
  store i32 (%struct.rpc_task*, i8*)* %3, i32 (%struct.rpc_task*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %13 = call i64 @RPC_IS_QUEUED(%struct.rpc_task* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %5
  %16 = call i32 (...) @smp_rmb()
  %17 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  %19 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %18, align 8
  %20 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %8, align 8
  %21 = icmp eq %struct.rpc_wait_queue* %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load i32 (%struct.rpc_task*, i8*)*, i32 (%struct.rpc_task*, i8*)** %10, align 8
  %24 = icmp eq i32 (%struct.rpc_task*, i8*)* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32 (%struct.rpc_task*, i8*)*, i32 (%struct.rpc_task*, i8*)** %10, align 8
  %27 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 %26(%struct.rpc_task* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %22
  %32 = load %struct.workqueue_struct*, %struct.workqueue_struct** %7, align 8
  %33 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %8, align 8
  %34 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %35 = call i32 @__rpc_do_wake_up_task_on_wq(%struct.workqueue_struct* %32, %struct.rpc_wait_queue* %33, %struct.rpc_task* %34)
  %36 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  store %struct.rpc_task* %36, %struct.rpc_task** %6, align 8
  br label %40

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %15
  br label %39

39:                                               ; preds = %38, %5
  store %struct.rpc_task* null, %struct.rpc_task** %6, align 8
  br label %40

40:                                               ; preds = %39, %31
  %41 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  ret %struct.rpc_task* %41
}

declare dso_local i64 @RPC_IS_QUEUED(%struct.rpc_task*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @__rpc_do_wake_up_task_on_wq(%struct.workqueue_struct*, %struct.rpc_wait_queue*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
