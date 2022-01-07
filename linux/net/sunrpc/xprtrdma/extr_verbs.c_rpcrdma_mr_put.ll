; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_mr_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_mr_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_mr = type { i64, %struct.TYPE_4__*, i32, i32, %struct.rpcrdma_xprt* }
%struct.TYPE_4__ = type { i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DMA_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_mr_put(%struct.rpcrdma_mr* %0) #0 {
  %2 = alloca %struct.rpcrdma_mr*, align 8
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  store %struct.rpcrdma_mr* %0, %struct.rpcrdma_mr** %2, align 8
  %4 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %5 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %4, i32 0, i32 4
  %6 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  store %struct.rpcrdma_xprt* %6, %struct.rpcrdma_xprt** %3, align 8
  %7 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DMA_NONE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %14 = call i32 @trace_xprtrdma_mr_unmap(%struct.rpcrdma_mr* %13)
  %15 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %25 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ib_dma_unmap_sg(i32 %20, i32 %23, i32 %26, i64 %29)
  %31 = load i64, i64* @DMA_NONE, align 8
  %32 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %33 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %12, %1
  %35 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %36 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %2, align 8
  %37 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @rpcrdma_mr_push(%struct.rpcrdma_mr* %35, i32* %39)
  ret void
}

declare dso_local i32 @trace_xprtrdma_mr_unmap(%struct.rpcrdma_mr*) #1

declare dso_local i32 @ib_dma_unmap_sg(i32, i32, i32, i64) #1

declare dso_local i32 @rpcrdma_mr_push(%struct.rpcrdma_mr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
