; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_recv_ctxt_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_recv_ctxt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.svc_rdma_recv_ctxt = type { %struct.svc_rdma_recv_ctxt*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svcxprt_rdma*, %struct.svc_rdma_recv_ctxt*)* @svc_rdma_recv_ctxt_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_recv_ctxt_destroy(%struct.svcxprt_rdma* %0, %struct.svc_rdma_recv_ctxt* %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store %struct.svc_rdma_recv_ctxt* %1, %struct.svc_rdma_recv_ctxt** %4, align 8
  %5 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %6 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %11 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %19 = call i32 @ib_dma_unmap_single(i32 %9, i32 %13, i32 %17, i32 %18)
  %20 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %21 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %20, i32 0, i32 0
  %22 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %21, align 8
  %23 = call i32 @kfree(%struct.svc_rdma_recv_ctxt* %22)
  %24 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %25 = call i32 @kfree(%struct.svc_rdma_recv_ctxt* %24)
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.svc_rdma_recv_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
