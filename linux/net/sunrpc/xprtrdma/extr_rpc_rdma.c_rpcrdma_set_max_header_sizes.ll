; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_set_max_header_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_set_max_header_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.rpcrdma_ep, %struct.TYPE_2__ }
%struct.rpcrdma_ep = type { i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_set_max_header_sizes(%struct.rpcrdma_xprt* %0) #0 {
  %2 = alloca %struct.rpcrdma_xprt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpcrdma_ep*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %2, align 8
  %5 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %10 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %9, i32 0, i32 0
  store %struct.rpcrdma_ep* %10, %struct.rpcrdma_ep** %4, align 8
  %11 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %4, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @rpcrdma_max_call_header_size(i32 %14)
  %16 = sub nsw i64 %13, %15
  %17 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %4, align 8
  %18 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %4, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @rpcrdma_max_reply_header_size(i32 %22)
  %24 = sub nsw i64 %21, %23
  %25 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %4, align 8
  %26 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  ret void
}

declare dso_local i64 @rpcrdma_max_call_header_size(i32) #1

declare dso_local i64 @rpcrdma_max_reply_header_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
