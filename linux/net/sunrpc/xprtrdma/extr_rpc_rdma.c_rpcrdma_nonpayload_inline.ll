; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_nonpayload_inline.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_nonpayload_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.rpc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.rpc_rqst*)* @rpcrdma_nonpayload_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_nonpayload_inline(%struct.rpcrdma_xprt* %0, %struct.rpc_rqst* %1) #0 {
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %3, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %4, align 8
  %6 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %7 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %6, i32 0, i32 0
  store %struct.xdr_buf* %7, %struct.xdr_buf** %5, align 8
  %8 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %9 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %15 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %13, %19
  %21 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %20, %24
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
