; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_format_addresses4.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_format_addresses4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@RPC_DISPLAY_HEX_ADDR = common dso_local global i64 0, align 8
@RPCBIND_NETID_RDMA = common dso_local global i32 0, align 4
@RPC_DISPLAY_NETID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.sockaddr*)* @xprt_rdma_format_addresses4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_format_addresses4(%struct.rpc_xprt* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca [20 x i8], align 16
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %8 = bitcast %struct.sockaddr* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %8, %struct.sockaddr_in** %5, align 8
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %10 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohl(i32 %13)
  %15 = call i32 @snprintf(i8* %9, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @kstrdup(i8* %16, i32 %17)
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @RPC_DISPLAY_HEX_ADDR, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* @RPCBIND_NETID_RDMA, align 4
  %25 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @RPC_DISPLAY_NETID, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %24, i32* %29, align 4
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
