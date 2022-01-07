; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_signal_task.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_signal_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32 }
%struct.rpc_wait_queue = type { i32 }

@RPC_TASK_SIGNALLED = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_signal_task(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_wait_queue*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = call i32 @RPC_IS_ACTIVATED(%struct.rpc_task* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @RPC_TASK_SIGNALLED, align 4
  %10 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 1
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = call i32 (...) @smp_mb__after_atomic()
  %14 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.rpc_wait_queue* @READ_ONCE(i32 %16)
  store %struct.rpc_wait_queue* %17, %struct.rpc_wait_queue** %3, align 8
  %18 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %19 = icmp ne %struct.rpc_wait_queue* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %8
  %21 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %22 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %23 = load i32, i32* @ERESTARTSYS, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @rpc_wake_up_queued_task_set_status(%struct.rpc_wait_queue* %21, %struct.rpc_task* %22, i32 %24)
  br label %26

26:                                               ; preds = %7, %20, %8
  ret void
}

declare dso_local i32 @RPC_IS_ACTIVATED(%struct.rpc_task*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local %struct.rpc_wait_queue* @READ_ONCE(i32) #1

declare dso_local i32 @rpc_wake_up_queued_task_set_status(%struct.rpc_wait_queue*, %struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
