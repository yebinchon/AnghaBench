; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_backchannel.c_rpcrdma_bc_marshal_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_backchannel.c_rpcrdma_bc_marshal_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32, i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rpcrdma_req = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@rpcrdma_version = common dso_local global i32 0, align 4
@rdma_msg = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i8* null, align 8
@RPCRDMA_HDRLEN_MIN = common dso_local global i32 0, align 4
@rpcrdma_noch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*)* @rpcrdma_bc_marshal_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_bc_marshal_reply(%struct.rpc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpcrdma_xprt*, align 8
  %5 = alloca %struct.rpcrdma_req*, align 8
  %6 = alloca i8**, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %3, align 8
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(i32 %9)
  store %struct.rpcrdma_xprt* %10, %struct.rpcrdma_xprt** %4, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %12 = call %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst* %11)
  store %struct.rpcrdma_req* %12, %struct.rpcrdma_req** %5, align 8
  %13 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %13, i32 0, i32 2
  %15 = call i32 @rpcrdma_set_xdrlen(i32* %14, i32 0)
  %16 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %16, i32 0, i32 0
  %18 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %19 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %18, i32 0, i32 2
  %20 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %21 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rdmab_data(i32 %22)
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %25 = call i32 @xdr_init_encode(i32* %17, i32* %19, i32 %23, %struct.rpc_rqst* %24)
  %26 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %27 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %26, i32 0, i32 0
  %28 = call i8** @xdr_reserve_space(i32* %27, i32 28)
  store i8** %28, i8*** %6, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = icmp ne i8** %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %87

38:                                               ; preds = %1
  %39 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %6, align 8
  store i8* %43, i8** %44, align 8
  %46 = load i32, i32* @rpcrdma_version, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8**, i8*** %6, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  %51 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %52 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_be32(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8**, i8*** %6, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %6, align 8
  store i8* %57, i8** %58, align 8
  %60 = load i32, i32* @rdma_msg, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %6, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %6, align 8
  store i8* %62, i8** %63, align 8
  %65 = load i8*, i8** @xdr_zero, align 8
  %66 = load i8**, i8*** %6, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %6, align 8
  store i8* %65, i8** %66, align 8
  %68 = load i8*, i8** @xdr_zero, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  %71 = load i8*, i8** @xdr_zero, align 8
  %72 = load i8**, i8*** %6, align 8
  store i8* %71, i8** %72, align 8
  %73 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %74 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %5, align 8
  %75 = load i32, i32* @RPCRDMA_HDRLEN_MIN, align 4
  %76 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %77 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %76, i32 0, i32 0
  %78 = load i32, i32* @rpcrdma_noch, align 4
  %79 = call i64 @rpcrdma_prepare_send_sges(%struct.rpcrdma_xprt* %73, %struct.rpcrdma_req* %74, i32 %75, i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %38
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %87

84:                                               ; preds = %38
  %85 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %86 = call i32 @trace_xprtrdma_cb_reply(%struct.rpc_rqst* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %81, %35
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(i32) #1

declare dso_local %struct.rpcrdma_req* @rpcr_to_rdmar(%struct.rpc_rqst*) #1

declare dso_local i32 @rpcrdma_set_xdrlen(i32*, i32) #1

declare dso_local i32 @xdr_init_encode(i32*, i32*, i32, %struct.rpc_rqst*) #1

declare dso_local i32 @rdmab_data(i32) #1

declare dso_local i8** @xdr_reserve_space(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @rpcrdma_prepare_send_sges(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, i32, i32*, i32) #1

declare dso_local i32 @trace_xprtrdma_cb_reply(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
