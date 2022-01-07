; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_dequeue_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_dequeue_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }

@RPC_TASK_NEED_XMIT = common dso_local global i32 0, align 4
@RPC_TASK_NEED_RECV = common dso_local global i32 0, align 4
@RPC_TASK_MSG_PIN_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_request_dequeue_xprt(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 1
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  store %struct.rpc_rqst* %7, %struct.rpc_rqst** %3, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %8, i32 0, i32 0
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %9, align 8
  store %struct.rpc_xprt* %10, %struct.rpc_xprt** %4, align 8
  %11 = load i32, i32* @RPC_TASK_NEED_XMIT, align 4
  %12 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @RPC_TASK_NEED_RECV, align 4
  %18 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %24 = call i64 @xprt_is_pinned_rqst(%struct.rpc_rqst* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %22, %16, %1
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %31 = call i32 @xprt_request_dequeue_transmit_locked(%struct.rpc_task* %30)
  %32 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %33 = call i32 @xprt_request_dequeue_receive_locked(%struct.rpc_task* %32)
  br label %34

34:                                               ; preds = %38, %26
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %36 = call i64 @xprt_is_pinned_rqst(%struct.rpc_rqst* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, i32* @RPC_TASK_MSG_PIN_WAIT, align 4
  %40 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %41 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %47 = call i32 @xprt_wait_on_pinned_rqst(%struct.rpc_rqst* %46)
  %48 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %49 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load i32, i32* @RPC_TASK_MSG_PIN_WAIT, align 4
  %52 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %53 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %52, i32 0, i32 0
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  br label %59

59:                                               ; preds = %55, %22
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @xprt_is_pinned_rqst(%struct.rpc_rqst*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xprt_request_dequeue_transmit_locked(%struct.rpc_task*) #1

declare dso_local i32 @xprt_request_dequeue_receive_locked(%struct.rpc_task*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xprt_wait_on_pinned_rqst(%struct.rpc_rqst*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
