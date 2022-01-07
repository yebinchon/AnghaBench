; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rdma_recv_ctxt = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*)* @svc_rdma_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_post_recv(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  %5 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %6 = call %struct.svc_rdma_recv_ctxt* @svc_rdma_recv_ctxt_get(%struct.svcxprt_rdma* %5)
  store %struct.svc_rdma_recv_ctxt* %6, %struct.svc_rdma_recv_ctxt** %4, align 8
  %7 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %8 = icmp ne %struct.svc_rdma_recv_ctxt* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %14 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %15 = call i32 @__svc_rdma_post_recv(%struct.svcxprt_rdma* %13, %struct.svc_rdma_recv_ctxt* %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local %struct.svc_rdma_recv_ctxt* @svc_rdma_recv_ctxt_get(%struct.svcxprt_rdma*) #1

declare dso_local i32 @__svc_rdma_post_recv(%struct.svcxprt_rdma*, %struct.svc_rdma_recv_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
