; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_alloc_slot.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_alloc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32 }
%struct.rpc_task = type { i32, i32* }
%struct.rpcrdma_xprt = type { i32 }
%struct.rpcrdma_req = type { i32 }

@XPRT_CONGESTED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.rpc_task*)* @xprt_rdma_alloc_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_alloc_slot(%struct.rpc_xprt* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca %struct.rpcrdma_req*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %8 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %7)
  store %struct.rpcrdma_xprt* %8, %struct.rpcrdma_xprt** %5, align 8
  %9 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %10 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %9, i32 0, i32 0
  %11 = call %struct.rpcrdma_req* @rpcrdma_buffer_get(i32* %10)
  store %struct.rpcrdma_req* %11, %struct.rpcrdma_req** %6, align 8
  %12 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %13 = icmp ne %struct.rpcrdma_req* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %16, i32 0, i32 0
  %18 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %35

22:                                               ; preds = %14
  %23 = load i32, i32* @XPRT_CONGESTED, align 4
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 0
  %29 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %30 = call i32 @rpc_sleep_on(i32* %28, %struct.rpc_task* %29, i32* null)
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %22, %15
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local %struct.rpcrdma_req* @rpcrdma_buffer_get(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rpc_sleep_on(i32*, %struct.rpc_task*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
