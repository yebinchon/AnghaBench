; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_backchannel.c_xprt_rdma_bc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_backchannel.c_xprt_rdma_bc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RPCRDMA_BACKWARD_WRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xprt_rdma_bc_setup(%struct.rpc_xprt* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %7 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %6)
  store %struct.rpcrdma_xprt* %7, %struct.rpcrdma_xprt** %5, align 8
  %8 = load i32, i32* @RPCRDMA_BACKWARD_WRS, align 4
  %9 = ashr i32 %8, 1
  %10 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @trace_xprtrdma_cb_setup(%struct.rpcrdma_xprt* %13, i32 %14)
  ret i32 0
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i32 @trace_xprtrdma_cb_setup(%struct.rpcrdma_xprt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
