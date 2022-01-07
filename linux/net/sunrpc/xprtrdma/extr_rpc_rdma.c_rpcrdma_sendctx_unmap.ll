; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_sendctx_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_sendctx_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_sendctx = type { %struct.TYPE_2__*, i32, i64, %struct.ib_sge* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_sge = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@rpcrdma_sendctx_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_sendctx_unmap(%struct.rpcrdma_sendctx* %0) #0 {
  %2 = alloca %struct.rpcrdma_sendctx*, align 8
  %3 = alloca %struct.ib_sge*, align 8
  store %struct.rpcrdma_sendctx* %0, %struct.rpcrdma_sendctx** %2, align 8
  %4 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %5 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %10, i32 0, i32 3
  %12 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %13 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %12, i64 2
  store %struct.ib_sge* %13, %struct.ib_sge** %3, align 8
  br label %14

14:                                               ; preds = %31, %9
  %15 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %21 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ib_sge*, %struct.ib_sge** %3, align 8
  %24 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ib_sge*, %struct.ib_sge** %3, align 8
  %27 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @ib_dma_unmap_page(i32 %22, i32 %25, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %19
  %32 = load %struct.ib_sge*, %struct.ib_sge** %3, align 8
  %33 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %32, i32 1
  store %struct.ib_sge* %33, %struct.ib_sge** %3, align 8
  %34 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %14

38:                                               ; preds = %14
  %39 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* @rpcrdma_sendctx_done, align 4
  %44 = call i32 @kref_put(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %8
  ret void
}

declare dso_local i32 @ib_dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
