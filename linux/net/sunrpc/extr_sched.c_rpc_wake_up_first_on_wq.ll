; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_wake_up_first_on_wq.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_wake_up_first_on_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.workqueue_struct = type { i32 }
%struct.rpc_wait_queue = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"RPC:       wake_up_first(%p \22%s\22)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_task* @rpc_wake_up_first_on_wq(%struct.workqueue_struct* %0, %struct.rpc_wait_queue* %1, i32 (%struct.rpc_task*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.workqueue_struct*, align 8
  %6 = alloca %struct.rpc_wait_queue*, align 8
  %7 = alloca i32 (%struct.rpc_task*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rpc_task*, align 8
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %5, align 8
  store %struct.rpc_wait_queue* %1, %struct.rpc_wait_queue** %6, align 8
  store i32 (%struct.rpc_task*, i8*)* %2, i32 (%struct.rpc_task*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.rpc_task* null, %struct.rpc_task** %9, align 8
  %10 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %6, align 8
  %11 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %6, align 8
  %12 = call i32 @rpc_qname(%struct.rpc_wait_queue* %11)
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.rpc_wait_queue* %10, i32 %12)
  %14 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %6, align 8
  %15 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %6, align 8
  %18 = call %struct.rpc_task* @__rpc_find_next_queued(%struct.rpc_wait_queue* %17)
  store %struct.rpc_task* %18, %struct.rpc_task** %9, align 8
  %19 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %20 = icmp ne %struct.rpc_task* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %23 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %6, align 8
  %24 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  %25 = load i32 (%struct.rpc_task*, i8*)*, i32 (%struct.rpc_task*, i8*)** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.rpc_task* @rpc_wake_up_task_on_wq_queue_action_locked(%struct.workqueue_struct* %22, %struct.rpc_wait_queue* %23, %struct.rpc_task* %24, i32 (%struct.rpc_task*, i8*)* %25, i8* %26)
  store %struct.rpc_task* %27, %struct.rpc_task** %9, align 8
  br label %28

28:                                               ; preds = %21, %4
  %29 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %6, align 8
  %30 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.rpc_task*, %struct.rpc_task** %9, align 8
  ret %struct.rpc_task* %32
}

declare dso_local i32 @dprintk(i8*, %struct.rpc_wait_queue*, i32) #1

declare dso_local i32 @rpc_qname(%struct.rpc_wait_queue*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rpc_task* @__rpc_find_next_queued(%struct.rpc_wait_queue*) #1

declare dso_local %struct.rpc_task* @rpc_wake_up_task_on_wq_queue_action_locked(%struct.workqueue_struct*, %struct.rpc_wait_queue*, %struct.rpc_task*, i32 (%struct.rpc_task*, i8*)*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
