; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_wait_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_wait_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_task*)* }

@RPC_TASK_NEED_RECV = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_request_wait_receive(%struct.rpc_task* %0) #0 {
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
  %11 = load i32, i32* @RPC_TASK_NEED_RECV, align 4
  %12 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* @RPC_TASK_NEED_RECV, align 4
  %22 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %23 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %17
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %30, align 8
  %32 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %33 = call i32 %31(%struct.rpc_task* %32)
  %34 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %35 = call i64 @xprt_request_retransmit_after_disconnect(%struct.rpc_task* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %39 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %38, i32 0, i32 1
  %40 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %41 = load i32, i32* @ENOTCONN, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @rpc_wake_up_queued_task_set_status(i32* %39, %struct.rpc_task* %40, i32 %42)
  br label %44

44:                                               ; preds = %37, %26
  br label %45

45:                                               ; preds = %44, %17
  %46 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %47 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %16
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @xprt_request_retransmit_after_disconnect(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wake_up_queued_task_set_status(i32*, %struct.rpc_task*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
