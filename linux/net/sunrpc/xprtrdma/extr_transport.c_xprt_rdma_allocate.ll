; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i8*, i8*, i32, i32, i32 }
%struct.rpcrdma_xprt = type { i32 }
%struct.rpcrdma_req = type { i32, i32 }

@RPCRDMA_DEF_GFP = common dso_local global i32 0, align 4
@__GFP_MEMALLOC = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*)* @xprt_rdma_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xprt_rdma_allocate(%struct.rpc_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca %struct.rpcrdma_req*, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 0
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %9, align 8
  store %struct.rpc_rqst* %10, %struct.rpc_rqst** %4, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(i32 %13)
  store %struct.rpcrdma_xprt* %14, %struct.rpcrdma_xprt** %5, align 8
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %16 = call %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst* %15)
  store %struct.rpcrdma_req* %16, %struct.rpcrdma_req** %6, align 8
  %17 = load i32, i32* @RPCRDMA_DEF_GFP, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %19 = call i64 @RPC_IS_SWAPPER(%struct.rpc_task* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @__GFP_MEMALLOC, align 4
  %23 = load i32, i32* @GFP_NOWAIT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @__GFP_NOWARN, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %29 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %30 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @rpcrdma_check_regbuf(%struct.rpcrdma_xprt* %28, i32 %31, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %67

39:                                               ; preds = %27
  %40 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %41 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %42 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %45 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @rpcrdma_check_regbuf(%struct.rpcrdma_xprt* %40, i32 %43, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %67

51:                                               ; preds = %39
  %52 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %53 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @rdmab_data(i32 %54)
  %56 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %59 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @rdmab_data(i32 %60)
  %62 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %63 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %65 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %66 = call i32 @trace_xprtrdma_op_allocate(%struct.rpc_task* %64, %struct.rpcrdma_req* %65)
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %50, %38
  %68 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %69 = call i32 @trace_xprtrdma_op_allocate(%struct.rpc_task* %68, %struct.rpcrdma_req* null)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %51
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(i32) #1

declare dso_local %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst*) #1

declare dso_local i64 @RPC_IS_SWAPPER(%struct.rpc_task*) #1

declare dso_local i32 @rpcrdma_check_regbuf(%struct.rpcrdma_xprt*, i32, i32, i32) #1

declare dso_local i8* @rdmab_data(i32) #1

declare dso_local i32 @trace_xprtrdma_op_allocate(%struct.rpc_task*, %struct.rpcrdma_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
