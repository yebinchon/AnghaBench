; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c___rpcrdma_regbuf_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c___rpcrdma_regbuf_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.rpcrdma_regbuf = type { i64, %struct.TYPE_8__, %struct.ib_device* }
%struct.TYPE_8__ = type { i32, i32 }

@DMA_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpcrdma_regbuf_dma_map(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_regbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpcrdma_xprt*, align 8
  %5 = alloca %struct.rpcrdma_regbuf*, align 8
  %6 = alloca %struct.ib_device*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %4, align 8
  store %struct.rpcrdma_regbuf* %1, %struct.rpcrdma_regbuf** %5, align 8
  %7 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  store %struct.ib_device* %12, %struct.ib_device** %6, align 8
  %13 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMA_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %21 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %22 = call i32 @rdmab_data(%struct.rpcrdma_regbuf* %21)
  %23 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %24 = call i32 @rdmab_length(%struct.rpcrdma_regbuf* %23)
  %25 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %26 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ib_dma_map_single(%struct.ib_device* %20, i32 %22, i32 %24, i64 %27)
  %29 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %30 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %33 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %34 = call i32 @rdmab_addr(%struct.rpcrdma_regbuf* %33)
  %35 = call i64 @ib_dma_mapping_error(%struct.ib_device* %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %39 = call i32 @rdmab_addr(%struct.rpcrdma_regbuf* %38)
  %40 = call i32 @trace_xprtrdma_dma_maperr(i32 %39)
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %19
  %42 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %43 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %44 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %43, i32 0, i32 2
  store %struct.ib_device* %42, %struct.ib_device** %44, align 8
  %45 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %46 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %5, align 8
  %52 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %41, %37, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i32, i32, i64) #1

declare dso_local i32 @rdmab_data(%struct.rpcrdma_regbuf*) #1

declare dso_local i32 @rdmab_length(%struct.rpcrdma_regbuf*) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @rdmab_addr(%struct.rpcrdma_regbuf*) #1

declare dso_local i32 @trace_xprtrdma_dma_maperr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
