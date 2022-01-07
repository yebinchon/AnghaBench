; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_backchannel.c_xprt_rdma_bc_send_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_backchannel.c_xprt_rdma_bc_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }
%struct.rpcrdma_xprt = type { i32, i32 }
%struct.rpcrdma_req = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@EBADSLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xprt_rdma_bc_send_reply(%struct.rpc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca %struct.rpcrdma_req*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %3, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %8, i32 0, i32 0
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %9, align 8
  store %struct.rpc_xprt* %10, %struct.rpc_xprt** %4, align 8
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %12 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %11)
  store %struct.rpcrdma_xprt* %12, %struct.rpcrdma_xprt** %5, align 8
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %14 = call %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst* %13)
  store %struct.rpcrdma_req* %14, %struct.rpcrdma_req** %6, align 8
  %15 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %16 = call i32 @xprt_connected(%struct.rpc_xprt* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOTCONN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %58

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
  br label %58

29:                                               ; preds = %21
  %30 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %31 = call i32 @rpcrdma_bc_marshal_reply(%struct.rpc_rqst* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %45

35:                                               ; preds = %29
  %36 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %37 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %36, i32 0, i32 1
  %38 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %39 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %38, i32 0, i32 0
  %40 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %41 = call i64 @rpcrdma_ep_post(i32* %37, i32* %39, %struct.rpcrdma_req* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %53

44:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %58

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ENOTCONN, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %43
  %54 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %55 = call i32 @xprt_rdma_close(%struct.rpc_xprt* %54)
  %56 = load i32, i32* @ENOTCONN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %50, %44, %26, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst*) #1

declare dso_local i32 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_request_get_cong(%struct.rpc_xprt*, %struct.rpc_rqst*) #1

declare dso_local i32 @rpcrdma_bc_marshal_reply(%struct.rpc_rqst*) #1

declare dso_local i64 @rpcrdma_ep_post(i32*, i32*, %struct.rpcrdma_req*) #1

declare dso_local i32 @xprt_rdma_close(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
