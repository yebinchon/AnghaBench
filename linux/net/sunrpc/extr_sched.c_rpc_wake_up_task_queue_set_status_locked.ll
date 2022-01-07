; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_wake_up_task_queue_set_status_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_wake_up_task_queue_set_status_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32 }
%struct.rpc_task = type { i32 }

@rpciod_workqueue = common dso_local global i32 0, align 4
@rpc_task_action_set_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*, i32)* @rpc_wake_up_task_queue_set_status_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_wake_up_task_queue_set_status_locked(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_wait_queue*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca i32, align 4
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @rpciod_workqueue, align 4
  %8 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %10 = load i32, i32* @rpc_task_action_set_status, align 4
  %11 = call i32 @rpc_wake_up_task_on_wq_queue_action_locked(i32 %7, %struct.rpc_wait_queue* %8, %struct.rpc_task* %9, i32 %10, i32* %6)
  ret void
}

declare dso_local i32 @rpc_wake_up_task_on_wq_queue_action_locked(i32, %struct.rpc_wait_queue*, %struct.rpc_task*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
