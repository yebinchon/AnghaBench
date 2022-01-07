; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_ctxt_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_ctxt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_send_ctxt = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.svcxprt_rdma = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_rdma_send_ctxt* @svc_rdma_send_ctxt_get(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca %struct.svc_rdma_send_ctxt*, align 8
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_send_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  %5 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %6 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %9 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %8, i32 0, i32 1
  %10 = call %struct.svc_rdma_send_ctxt* @svc_rdma_next_send_ctxt(i32* %9)
  store %struct.svc_rdma_send_ctxt* %10, %struct.svc_rdma_send_ctxt** %4, align 8
  %11 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %12 = icmp ne %struct.svc_rdma_send_ctxt* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %16 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %15, i32 0, i32 3
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %19 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  br label %21

21:                                               ; preds = %39, %14
  %22 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %23 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %26 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %28 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  store %struct.svc_rdma_send_ctxt* %29, %struct.svc_rdma_send_ctxt** %2, align 8
  br label %40

30:                                               ; preds = %13
  %31 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %32 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %35 = call %struct.svc_rdma_send_ctxt* @svc_rdma_send_ctxt_alloc(%struct.svcxprt_rdma* %34)
  store %struct.svc_rdma_send_ctxt* %35, %struct.svc_rdma_send_ctxt** %4, align 8
  %36 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %37 = icmp ne %struct.svc_rdma_send_ctxt* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store %struct.svc_rdma_send_ctxt* null, %struct.svc_rdma_send_ctxt** %2, align 8
  br label %40

39:                                               ; preds = %30
  br label %21

40:                                               ; preds = %38, %21
  %41 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %2, align 8
  ret %struct.svc_rdma_send_ctxt* %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.svc_rdma_send_ctxt* @svc_rdma_next_send_ctxt(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.svc_rdma_send_ctxt* @svc_rdma_send_ctxt_alloc(%struct.svcxprt_rdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
