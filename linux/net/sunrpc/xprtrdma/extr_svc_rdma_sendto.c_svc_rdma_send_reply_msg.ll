; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_reply_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_reply_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rdma_send_ctxt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.svc_rdma_recv_ctxt = type { i64 }
%struct.svc_rqst = type { i32 }

@IB_WR_SEND_WITH_INV = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"svcrdma: posting Send WR with %u sge(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_recv_ctxt*, %struct.svc_rqst*, i32*, i32*)* @svc_rdma_send_reply_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_send_reply_msg(%struct.svcxprt_rdma* %0, %struct.svc_rdma_send_ctxt* %1, %struct.svc_rdma_recv_ctxt* %2, %struct.svc_rqst* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.svcxprt_rdma*, align 8
  %9 = alloca %struct.svc_rdma_send_ctxt*, align 8
  %10 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  %11 = alloca %struct.svc_rqst*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %8, align 8
  store %struct.svc_rdma_send_ctxt* %1, %struct.svc_rdma_send_ctxt** %9, align 8
  store %struct.svc_rdma_recv_ctxt* %2, %struct.svc_rdma_recv_ctxt** %10, align 8
  store %struct.svc_rqst* %3, %struct.svc_rqst** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  %18 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %8, align 8
  %19 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %9, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %21 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %20, i32 0, i32 0
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @svc_rdma_map_reply_msg(%struct.svcxprt_rdma* %18, %struct.svc_rdma_send_ctxt* %19, i32* %21, i32* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %7, align 4
  br label %64

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %6
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %11, align 8
  %31 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %9, align 8
  %32 = call i32 @svc_rdma_save_io_pages(%struct.svc_rqst* %30, %struct.svc_rdma_send_ctxt* %31)
  %33 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %10, align 8
  %34 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load i32, i32* @IB_WR_SEND_WITH_INV, align 4
  %39 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %9, align 8
  %40 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %10, align 8
  %43 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %9, align 8
  %46 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 %44, i64* %48, align 8
  br label %54

49:                                               ; preds = %29
  %50 = load i32, i32* @IB_WR_SEND, align 4
  %51 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %9, align 8
  %52 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %37
  %55 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %9, align 8
  %56 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %8, align 8
  %61 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %9, align 8
  %62 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %61, i32 0, i32 0
  %63 = call i32 @svc_rdma_send(%struct.svcxprt_rdma* %60, %struct.TYPE_4__* %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %54, %26
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @svc_rdma_map_reply_msg(%struct.svcxprt_rdma*, %struct.svc_rdma_send_ctxt*, i32*, i32*) #1

declare dso_local i32 @svc_rdma_save_io_pages(%struct.svc_rqst*, %struct.svc_rdma_send_ctxt*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @svc_rdma_send(%struct.svcxprt_rdma*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
