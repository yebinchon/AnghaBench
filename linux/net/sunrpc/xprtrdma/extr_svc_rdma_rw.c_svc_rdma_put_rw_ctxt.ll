; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_put_rw_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_put_rw_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, i32 }
%struct.svc_rdma_rw_ctxt = type { i32, i32 }

@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svcxprt_rdma*, %struct.svc_rdma_rw_ctxt*)* @svc_rdma_put_rw_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_put_rw_ctxt(%struct.svcxprt_rdma* %0, %struct.svc_rdma_rw_ctxt* %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_rw_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store %struct.svc_rdma_rw_ctxt* %1, %struct.svc_rdma_rw_ctxt** %4, align 8
  %5 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %4, align 8
  %6 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %5, i32 0, i32 1
  %7 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %8 = call i32 @sg_free_table_chained(i32* %6, i32 %7)
  %9 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %10 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %4, align 8
  %13 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %12, i32 0, i32 0
  %14 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %15 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %14, i32 0, i32 1
  %16 = call i32 @list_add(i32* %13, i32* %15)
  %17 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %18 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  ret void
}

declare dso_local i32 @sg_free_table_chained(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
