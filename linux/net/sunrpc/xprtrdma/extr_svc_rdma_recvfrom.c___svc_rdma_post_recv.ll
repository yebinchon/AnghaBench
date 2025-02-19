; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c___svc_rdma_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c___svc_rdma_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, i32 }
%struct.svc_rdma_recv_ctxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.svc_rdma_recv_ctxt*)* @__svc_rdma_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__svc_rdma_post_recv(%struct.svcxprt_rdma* %0, %struct.svc_rdma_recv_ctxt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svcxprt_rdma*, align 8
  %5 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  %6 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %4, align 8
  store %struct.svc_rdma_recv_ctxt* %1, %struct.svc_rdma_recv_ctxt** %5, align 8
  %7 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %8 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %7, i32 0, i32 0
  %9 = call i32 @svc_xprt_get(i32* %8)
  %10 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %11 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %5, align 8
  %14 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %13, i32 0, i32 0
  %15 = call i32 @ib_post_recv(i32 %12, i32* %14, i32* null)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %5, align 8
  %17 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @trace_svcrdma_post_recv(i32* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

24:                                               ; preds = %22
  %25 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %26 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %5, align 8
  %27 = call i32 @svc_rdma_recv_ctxt_put(%struct.svcxprt_rdma* %25, %struct.svc_rdma_recv_ctxt* %26)
  %28 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %29 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %28, i32 0, i32 0
  %30 = call i32 @svc_xprt_put(i32* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @svc_xprt_get(i32*) #1

declare dso_local i32 @ib_post_recv(i32, i32*, i32*) #1

declare dso_local i32 @trace_svcrdma_post_recv(i32*, i32) #1

declare dso_local i32 @svc_rdma_recv_ctxt_put(%struct.svcxprt_rdma*, %struct.svc_rdma_recv_ctxt*) #1

declare dso_local i32 @svc_xprt_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
