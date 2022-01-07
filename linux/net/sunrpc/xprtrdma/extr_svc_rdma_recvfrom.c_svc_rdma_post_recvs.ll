; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_post_recvs.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_post_recvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rdma_recv_ctxt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_post_recvs(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %10 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %15 = call %struct.svc_rdma_recv_ctxt* @svc_rdma_recv_ctxt_get(%struct.svcxprt_rdma* %14)
  store %struct.svc_rdma_recv_ctxt* %15, %struct.svc_rdma_recv_ctxt** %4, align 8
  %16 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %17 = icmp ne %struct.svc_rdma_recv_ctxt* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %33

19:                                               ; preds = %13
  %20 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %21 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %23 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %24 = call i32 @__svc_rdma_post_recv(%struct.svcxprt_rdma* %22, %struct.svc_rdma_recv_ctxt* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %33

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %7

32:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %27, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.svc_rdma_recv_ctxt* @svc_rdma_recv_ctxt_get(%struct.svcxprt_rdma*) #1

declare dso_local i32 @__svc_rdma_post_recv(%struct.svcxprt_rdma*, %struct.svc_rdma_recv_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
