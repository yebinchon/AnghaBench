; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_dma_map_buf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_dma_map_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rdma_send_ctxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.svc_rdma_send_ctxt*, i8*, i32)* @svc_rdma_dma_map_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_dma_map_buf(%struct.svcxprt_rdma* %0, %struct.svc_rdma_send_ctxt* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca %struct.svc_rdma_send_ctxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %5, align 8
  store %struct.svc_rdma_send_ctxt* %1, %struct.svc_rdma_send_ctxt** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %10 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @virt_to_page(i8* %11)
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @offset_in_page(i8* %13)
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @svc_rdma_dma_map_page(%struct.svcxprt_rdma* %9, %struct.svc_rdma_send_ctxt* %10, i32 %12, i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @svc_rdma_dma_map_page(%struct.svcxprt_rdma*, %struct.svc_rdma_send_ctxt*, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
