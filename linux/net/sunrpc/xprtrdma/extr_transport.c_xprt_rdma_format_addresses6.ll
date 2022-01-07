; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_format_addresses6.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_format_addresses6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%pi6\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@RPC_DISPLAY_HEX_ADDR = common dso_local global i64 0, align 8
@RPCBIND_NETID_RDMA6 = common dso_local global i32 0, align 4
@RPC_DISPLAY_NETID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.sockaddr*)* @xprt_rdma_format_addresses6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_format_addresses6(%struct.rpc_xprt* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca [40 x i8], align 16
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %8 = bitcast %struct.sockaddr* %7 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %8, %struct.sockaddr_in6** %5, align 8
  %9 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %10 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 0
  %12 = call i32 @snprintf(i8* %9, i32 40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kstrdup(i8* %13, i32 %14)
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @RPC_DISPLAY_HEX_ADDR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* @RPCBIND_NETID_RDMA6, align 4
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @RPC_DISPLAY_NETID, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
