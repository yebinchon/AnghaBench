; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_make_runnable.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_make_runnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }
%struct.rpc_task = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rpc_async_schedule = common dso_local global i32 0, align 4
@RPC_TASK_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.workqueue_struct*, %struct.rpc_task*)* @rpc_make_runnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_make_runnable(%struct.workqueue_struct* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.workqueue_struct*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca i32, align 4
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %7 = call i32 @rpc_test_and_set_running(%struct.rpc_task* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %12 = call i32 @rpc_clear_queued(%struct.rpc_task* %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %18 = call i64 @RPC_IS_ASYNC(%struct.rpc_task* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %22 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @rpc_async_schedule, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %27 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %28 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @queue_work(%struct.workqueue_struct* %26, i32* %29)
  br label %36

31:                                               ; preds = %16
  %32 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %32, i32 0, i32 0
  %34 = load i32, i32* @RPC_TASK_QUEUED, align 4
  %35 = call i32 @wake_up_bit(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %15, %31, %20
  ret void
}

declare dso_local i32 @rpc_test_and_set_running(%struct.rpc_task*) #1

declare dso_local i32 @rpc_clear_queued(%struct.rpc_task*) #1

declare dso_local i64 @RPC_IS_ASYNC(%struct.rpc_task*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(%struct.workqueue_struct*, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
