; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_flush_recv_queues.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_flush_recv_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, i32 }
%struct.svc_rdma_recv_ctxt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_flush_recv_queues(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca %struct.svcxprt_rdma*, align 8
  %3 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %6 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %5, i32 0, i32 1
  %7 = call %struct.svc_rdma_recv_ctxt* @svc_rdma_next_recv_ctxt(i32* %6)
  store %struct.svc_rdma_recv_ctxt* %7, %struct.svc_rdma_recv_ctxt** %3, align 8
  %8 = icmp ne %struct.svc_rdma_recv_ctxt* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %14 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %3, align 8
  %15 = call i32 @svc_rdma_recv_ctxt_put(%struct.svcxprt_rdma* %13, %struct.svc_rdma_recv_ctxt* %14)
  br label %4

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %19 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %18, i32 0, i32 0
  %20 = call %struct.svc_rdma_recv_ctxt* @svc_rdma_next_recv_ctxt(i32* %19)
  store %struct.svc_rdma_recv_ctxt* %20, %struct.svc_rdma_recv_ctxt** %3, align 8
  %21 = icmp ne %struct.svc_rdma_recv_ctxt* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %2, align 8
  %27 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %3, align 8
  %28 = call i32 @svc_rdma_recv_ctxt_put(%struct.svcxprt_rdma* %26, %struct.svc_rdma_recv_ctxt* %27)
  br label %17

29:                                               ; preds = %17
  ret void
}

declare dso_local %struct.svc_rdma_recv_ctxt* @svc_rdma_next_recv_ctxt(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @svc_rdma_recv_ctxt_put(%struct.svcxprt_rdma*, %struct.svc_rdma_recv_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
