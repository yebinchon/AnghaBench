; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_ctxts_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_ctxts_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.svc_rdma_send_ctxt = type { %struct.svc_rdma_send_ctxt*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_send_ctxts_destroy(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca %struct.svcxprt_rdma*, align 8
  %3 = alloca %struct.svc_rdma_send_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %6 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %5, i32 0, i32 2
  %7 = call %struct.svc_rdma_send_ctxt* @svc_rdma_next_send_ctxt(i32* %6)
  store %struct.svc_rdma_send_ctxt* %7, %struct.svc_rdma_send_ctxt** %3, align 8
  %8 = icmp ne %struct.svc_rdma_send_ctxt* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %14 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %3, align 8
  %19 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %25 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @ib_dma_unmap_single(i32 %17, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %3, align 8
  %30 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %29, i32 0, i32 0
  %31 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %30, align 8
  %32 = call i32 @kfree(%struct.svc_rdma_send_ctxt* %31)
  %33 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %3, align 8
  %34 = call i32 @kfree(%struct.svc_rdma_send_ctxt* %33)
  br label %4

35:                                               ; preds = %4
  ret void
}

declare dso_local %struct.svc_rdma_send_ctxt* @svc_rdma_next_send_ctxt(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.svc_rdma_send_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
