; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_prepare_send_sges.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_prepare_send_sges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { i32 }
%struct.rpcrdma_req = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rpcrdma_req*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xdr_buf = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@rpcrdma_areadch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcrdma_prepare_send_sges(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_req* %1, i32 %2, %struct.xdr_buf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpcrdma_xprt*, align 8
  %8 = alloca %struct.rpcrdma_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xdr_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %7, align 8
  store %struct.rpcrdma_req* %1, %struct.rpcrdma_req** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.xdr_buf* %3, %struct.xdr_buf** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %7, align 8
  %16 = call %struct.TYPE_4__* @rpcrdma_sendctx_get_locked(%struct.rpcrdma_xprt* %15)
  %17 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %18 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %17, i32 0, i32 2
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %64

24:                                               ; preds = %5
  %25 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %26 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %31 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %35 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %36 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.rpcrdma_req* %34, %struct.rpcrdma_req** %38, align 8
  %39 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %39, i32 0, i32 1
  %41 = call i32 @kref_init(i32* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %7, align 8
  %45 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @rpcrdma_prepare_hdr_sge(%struct.rpcrdma_xprt* %44, %struct.rpcrdma_req* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %24
  br label %64

50:                                               ; preds = %24
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @rpcrdma_areadch, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %7, align 8
  %56 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %57 = load %struct.xdr_buf*, %struct.xdr_buf** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @rpcrdma_prepare_msg_sges(%struct.rpcrdma_xprt* %55, %struct.rpcrdma_req* %56, %struct.xdr_buf* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %64

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %50
  store i32 0, i32* %6, align 4
  br label %70

64:                                               ; preds = %61, %49, %23
  %65 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %8, align 8
  %66 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %65, i32 0, i32 0
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @trace_xprtrdma_prepsend_failed(i32* %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %63
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_4__* @rpcrdma_sendctx_get_locked(%struct.rpcrdma_xprt*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @rpcrdma_prepare_hdr_sge(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, i32) #1

declare dso_local i32 @rpcrdma_prepare_msg_sges(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.xdr_buf*, i32) #1

declare dso_local i32 @trace_xprtrdma_prepsend_failed(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
