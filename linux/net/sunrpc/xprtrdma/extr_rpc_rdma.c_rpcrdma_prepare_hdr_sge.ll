; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_prepare_hdr_sge.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_prepare_hdr_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { i32 }
%struct.rpcrdma_req = type { %struct.rpcrdma_regbuf*, %struct.rpcrdma_sendctx* }
%struct.rpcrdma_regbuf = type { i32 }
%struct.rpcrdma_sendctx = type { %struct.TYPE_2__, %struct.ib_sge* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rpcrdma: failed to DMA map a Send buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, i32)* @rpcrdma_prepare_hdr_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_prepare_hdr_sge(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca %struct.rpcrdma_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpcrdma_sendctx*, align 8
  %9 = alloca %struct.rpcrdma_regbuf*, align 8
  %10 = alloca %struct.ib_sge*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %5, align 8
  store %struct.rpcrdma_req* %1, %struct.rpcrdma_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %11, i32 0, i32 1
  %13 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %12, align 8
  store %struct.rpcrdma_sendctx* %13, %struct.rpcrdma_sendctx** %8, align 8
  %14 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %6, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %14, i32 0, i32 0
  %16 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  store %struct.rpcrdma_regbuf* %16, %struct.rpcrdma_regbuf** %9, align 8
  %17 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %8, align 8
  %18 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %17, i32 0, i32 1
  %19 = load %struct.ib_sge*, %struct.ib_sge** %18, align 8
  store %struct.ib_sge* %19, %struct.ib_sge** %10, align 8
  %20 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %21 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %9, align 8
  %22 = call i32 @rpcrdma_regbuf_dma_map(%struct.rpcrdma_xprt* %20, %struct.rpcrdma_regbuf* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %9, align 8
  %27 = call i32 @rdmab_addr(%struct.rpcrdma_regbuf* %26)
  %28 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %29 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %32 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %9, align 8
  %34 = call i32 @rdmab_lkey(%struct.rpcrdma_regbuf* %33)
  %35 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %36 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %9, align 8
  %38 = call i32 @rdmab_device(%struct.rpcrdma_regbuf* %37)
  %39 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %40 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %43 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @ib_dma_sync_single_for_device(i32 %38, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %8, align 8
  %48 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  store i32 1, i32* %4, align 4
  br label %54

52:                                               ; preds = %24
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %25
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @rpcrdma_regbuf_dma_map(%struct.rpcrdma_xprt*, %struct.rpcrdma_regbuf*) #1

declare dso_local i32 @rdmab_addr(%struct.rpcrdma_regbuf*) #1

declare dso_local i32 @rdmab_lkey(%struct.rpcrdma_regbuf*) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @rdmab_device(%struct.rpcrdma_regbuf*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
