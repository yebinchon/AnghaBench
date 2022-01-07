; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpcrdma_xprt = type { i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @xprt_rdma_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_destroy(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %4 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %5 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %4)
  store %struct.rpcrdma_xprt* %5, %struct.rpcrdma_xprt** %3, align 8
  %6 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %7 = call i32 @trace_xprtrdma_op_destroy(%struct.rpcrdma_xprt* %6)
  %8 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %8, i32 0, i32 2
  %10 = call i32 @cancel_delayed_work_sync(i32* %9)
  %11 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %12 = call i32 @rpcrdma_ep_destroy(%struct.rpcrdma_xprt* %11)
  %13 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %13, i32 0, i32 1
  %15 = call i32 @rpcrdma_buffer_destroy(i32* %14)
  %16 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %16, i32 0, i32 0
  %18 = call i32 @rpcrdma_ia_close(i32* %17)
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %20 = call i32 @xprt_rdma_free_addresses(%struct.rpc_xprt* %19)
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %22 = call i32 @xprt_free(%struct.rpc_xprt* %21)
  %23 = load i32, i32* @THIS_MODULE, align 4
  %24 = call i32 @module_put(i32 %23)
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i32 @trace_xprtrdma_op_destroy(%struct.rpcrdma_xprt*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rpcrdma_ep_destroy(%struct.rpcrdma_xprt*) #1

declare dso_local i32 @rpcrdma_buffer_destroy(i32*) #1

declare dso_local i32 @rpcrdma_ia_close(i32*) #1

declare dso_local i32 @xprt_rdma_free_addresses(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_free(%struct.rpc_xprt*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
