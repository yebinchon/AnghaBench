; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_cc_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_cc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_chunk_ctxt = type { i32, %struct.svcxprt_rdma* }
%struct.svcxprt_rdma = type { i32, i32, i32 }
%struct.svc_rdma_rw_ctxt = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rdma_chunk_ctxt*, i32)* @svc_rdma_cc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_cc_release(%struct.svc_rdma_chunk_ctxt* %0, i32 %1) #0 {
  %3 = alloca %struct.svc_rdma_chunk_ctxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca %struct.svc_rdma_rw_ctxt*, align 8
  store %struct.svc_rdma_chunk_ctxt* %0, %struct.svc_rdma_chunk_ctxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.svc_rdma_chunk_ctxt*, %struct.svc_rdma_chunk_ctxt** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, %struct.svc_rdma_chunk_ctxt* %7, i32 0, i32 1
  %9 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %8, align 8
  store %struct.svcxprt_rdma* %9, %struct.svcxprt_rdma** %5, align 8
  br label %10

10:                                               ; preds = %15, %2
  %11 = load %struct.svc_rdma_chunk_ctxt*, %struct.svc_rdma_chunk_ctxt** %3, align 8
  %12 = getelementptr inbounds %struct.svc_rdma_chunk_ctxt, %struct.svc_rdma_chunk_ctxt* %11, i32 0, i32 0
  %13 = call %struct.svc_rdma_rw_ctxt* @svc_rdma_next_ctxt(i32* %12)
  store %struct.svc_rdma_rw_ctxt* %13, %struct.svc_rdma_rw_ctxt** %6, align 8
  %14 = icmp ne %struct.svc_rdma_rw_ctxt* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %6, align 8
  %17 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %16, i32 0, i32 3
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %6, align 8
  %20 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %19, i32 0, i32 2
  %21 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %22 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %25 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %6, align 8
  %28 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %6, align 8
  %32 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @rdma_rw_ctx_destroy(i32* %20, i32 %23, i32 %26, i32 %30, i32 %33, i32 %34)
  %36 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %37 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %6, align 8
  %38 = call i32 @svc_rdma_put_rw_ctxt(%struct.svcxprt_rdma* %36, %struct.svc_rdma_rw_ctxt* %37)
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %41 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %40, i32 0, i32 0
  %42 = call i32 @svc_xprt_put(i32* %41)
  ret void
}

declare dso_local %struct.svc_rdma_rw_ctxt* @svc_rdma_next_ctxt(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rdma_rw_ctx_destroy(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svc_rdma_put_rw_ctxt(%struct.svcxprt_rdma*, %struct.svc_rdma_rw_ctxt*) #1

declare dso_local i32 @svc_xprt_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
