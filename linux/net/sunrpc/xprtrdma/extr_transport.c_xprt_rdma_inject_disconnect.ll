; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_inject_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_inject_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @xprt_rdma_inject_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_inject_disconnect(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %4 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %5 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %4)
  store %struct.rpcrdma_xprt* %5, %struct.rpcrdma_xprt** %3, align 8
  %6 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %7 = call i32 @trace_xprtrdma_op_inject_dsc(%struct.rpcrdma_xprt* %6)
  %8 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rdma_disconnect(i32 %11)
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i32 @trace_xprtrdma_op_inject_dsc(%struct.rpcrdma_xprt*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
