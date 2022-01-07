; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpcrdma_xprt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RPCRDMA_INIT_REEST_TO = common dso_local global i32 0, align 4
@xprtiod_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.rpc_task*)* @xprt_rdma_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_connect(%struct.rpc_xprt* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca i64, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %8 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %7)
  store %struct.rpcrdma_xprt* %8, %struct.rpcrdma_xprt** %5, align 8
  %9 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %10 = call i32 @trace_xprtrdma_op_connect(%struct.rpcrdma_xprt* %9)
  store i64 0, i64* %6, align 8
  %11 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %18 = call i64 @xprt_reconnect_delay(%struct.rpc_xprt* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %20 = load i32, i32* @RPCRDMA_INIT_REEST_TO, align 4
  %21 = call i32 @xprt_reconnect_backoff(%struct.rpc_xprt* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @xprtiod_workqueue, align 4
  %24 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %25 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @queue_delayed_work(i32 %23, i32* %25, i64 %26)
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i32 @trace_xprtrdma_op_connect(%struct.rpcrdma_xprt*) #1

declare dso_local i64 @xprt_reconnect_delay(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_reconnect_backoff(%struct.rpc_xprt*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
