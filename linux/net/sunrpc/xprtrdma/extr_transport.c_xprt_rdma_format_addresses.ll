; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_format_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_format_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i8** }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"rpcrdma: Unrecognized address family\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@RPC_DISPLAY_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@RPC_DISPLAY_PORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%4hx\00", align 1
@RPC_DISPLAY_HEX_PORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"rdma\00", align 1
@RPC_DISPLAY_PROTO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_rdma_format_addresses(%struct.rpc_xprt* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca [128 x i8], align 16
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %7 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %2
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = call i32 @xprt_rdma_format_addresses4(%struct.rpc_xprt* %10, %struct.sockaddr* %11)
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %16 = call i32 @xprt_rdma_format_addresses6(%struct.rpc_xprt* %14, %struct.sockaddr* %15)
  br label %19

17:                                               ; preds = %2
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %60

19:                                               ; preds = %13, %9
  %20 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %22 = call i32 @rpc_ntop(%struct.sockaddr* %20, i8* %21, i32 128)
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i8* %23, i32 %24)
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i64, i64* @RPC_DISPLAY_ADDR, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  store i8* %25, i8** %30, align 8
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %32 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %33 = call i32 @rpc_get_port(%struct.sockaddr* %32)
  %34 = call i32 @snprintf(i8* %31, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kstrdup(i8* %35, i32 %36)
  %38 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %39 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* @RPC_DISPLAY_PORT, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %37, i8** %42, align 8
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %44 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %45 = call i32 @rpc_get_port(%struct.sockaddr* %44)
  %46 = call i32 @snprintf(i8* %43, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kstrdup(i8* %47, i32 %48)
  %50 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %51 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i64, i64* @RPC_DISPLAY_HEX_PORT, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  store i8* %49, i8** %54, align 8
  %55 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %56 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* @RPC_DISPLAY_PROTO, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %59, align 8
  br label %60

60:                                               ; preds = %19, %17
  ret void
}

declare dso_local i32 @xprt_rdma_format_addresses4(%struct.rpc_xprt*, %struct.sockaddr*) #1

declare dso_local i32 @xprt_rdma_format_addresses6(%struct.rpc_xprt*, %struct.sockaddr*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rpc_ntop(%struct.sockaddr*, i8*, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rpc_get_port(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
