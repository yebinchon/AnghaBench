; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_error_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_error_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rdma_send_ctxt = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.svc_rqst = type { i32 }

@rdma_error = common dso_local global i32 0, align 4
@err_chunk = common dso_local global i32 0, align 4
@RPCRDMA_HDRLEN_ERR = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.svc_rdma_send_ctxt*, %struct.svc_rqst*)* @svc_rdma_send_error_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_send_error_msg(%struct.svcxprt_rdma* %0, %struct.svc_rdma_send_ctxt* %1, %struct.svc_rqst* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca %struct.svc_rdma_send_ctxt*, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %5, align 8
  store %struct.svc_rdma_send_ctxt* %1, %struct.svc_rdma_send_ctxt** %6, align 8
  store %struct.svc_rqst* %2, %struct.svc_rqst** %7, align 8
  %10 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %6, align 8
  %11 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_svcrdma_err_chunk(i32 %14)
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* @rdma_error, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %21 = load i32, i32* @err_chunk, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %24 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %6, align 8
  %25 = load i32, i32* @RPCRDMA_HDRLEN_ERR, align 4
  %26 = call i32 @svc_rdma_sync_reply_hdr(%struct.svcxprt_rdma* %23, %struct.svc_rdma_send_ctxt* %24, i32 %25)
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %28 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %6, align 8
  %29 = call i32 @svc_rdma_save_io_pages(%struct.svc_rqst* %27, %struct.svc_rdma_send_ctxt* %28)
  %30 = load i32, i32* @IB_WR_SEND, align 4
  %31 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %6, align 8
  %32 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %35 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %6, align 8
  %36 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %35, i32 0, i32 0
  %37 = call i32 @svc_rdma_send(%struct.svcxprt_rdma* %34, %struct.TYPE_2__* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %42 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %6, align 8
  %43 = call i32 @svc_rdma_send_ctxt_put(%struct.svcxprt_rdma* %41, %struct.svc_rdma_send_ctxt* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @trace_svcrdma_err_chunk(i32) #1

declare dso_local i32 @svc_rdma_sync_reply_hdr(%struct.svcxprt_rdma*, %struct.svc_rdma_send_ctxt*, i32) #1

declare dso_local i32 @svc_rdma_save_io_pages(%struct.svc_rqst*, %struct.svc_rdma_send_ctxt*) #1

declare dso_local i32 @svc_rdma_send(%struct.svcxprt_rdma*, %struct.TYPE_2__*) #1

declare dso_local i32 @svc_rdma_send_ctxt_put(%struct.svcxprt_rdma*, %struct.svc_rdma_send_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
