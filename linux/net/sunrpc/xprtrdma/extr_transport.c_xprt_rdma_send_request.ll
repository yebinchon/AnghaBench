; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, %struct.rpc_xprt* }
%struct.TYPE_2__ = type { i64 }
%struct.rpc_xprt = type { i64 }
%struct.rpcrdma_req = type { i32 }
%struct.rpcrdma_xprt = type { i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@EBADSLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*)* @xprt_rdma_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xprt_rdma_send_request(%struct.rpc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpcrdma_req*, align 8
  %6 = alloca %struct.rpcrdma_xprt*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %3, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %8, i32 0, i32 6
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %9, align 8
  store %struct.rpc_xprt* %10, %struct.rpc_xprt** %4, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %12 = call %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst* %11)
  store %struct.rpcrdma_req* %12, %struct.rpcrdma_req** %5, align 8
  %13 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %14 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %13)
  store %struct.rpcrdma_xprt* %14, %struct.rpcrdma_xprt** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %16 = call i32 @xprt_connected(%struct.rpc_xprt* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOTCONN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %88

21:                                               ; preds = %1
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %24 = call i32 @xprt_request_get_cong(%struct.rpc_xprt* %22, %struct.rpc_rqst* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EBADSLT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %21
  %30 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %32 = call i32 @rpcrdma_marshal_req(%struct.rpcrdma_xprt* %30, %struct.rpc_rqst* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %75

36:                                               ; preds = %29
  %37 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %38 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %83

45:                                               ; preds = %36
  %46 = call i32 (...) @ktime_get()
  %47 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %48 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %50 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %49, i32 0, i32 1
  %51 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %52 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %51, i32 0, i32 0
  %53 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %54 = call i64 @rpcrdma_ep_post(i32* %50, i32* %52, %struct.rpcrdma_req* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %83

57:                                               ; preds = %45
  %58 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %59 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %63 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %69 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @rpc_reply_expected(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %57
  br label %83

74:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %88

75:                                               ; preds = %35
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @ENOTCONN, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %88

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %73, %56, %44
  %84 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %85 = call i32 @xprt_rdma_close(%struct.rpc_xprt* %84)
  %86 = load i32, i32* @ENOTCONN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %80, %74, %26, %18
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst*) #1

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_request_get_cong(%struct.rpc_xprt*, %struct.rpc_rqst*) #1

declare dso_local i32 @rpcrdma_marshal_req(%struct.rpcrdma_xprt*, %struct.rpc_rqst*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @rpcrdma_ep_post(i32*, i32*, %struct.rpcrdma_req*) #1

declare dso_local i32 @rpc_reply_expected(i32) #1

declare dso_local i32 @xprt_rdma_close(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
