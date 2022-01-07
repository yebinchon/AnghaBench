; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_mr_recycle.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_mr_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.rpcrdma_mr = type { i64, i32, i32, i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpcrdma_xprt*, %struct.rpcrdma_mr*)* @frwr_mr_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frwr_mr_recycle(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_mr* %1) #0 {
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  %4 = alloca %struct.rpcrdma_mr*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %3, align 8
  store %struct.rpcrdma_mr* %1, %struct.rpcrdma_mr** %4, align 8
  %5 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %6 = call i32 @trace_xprtrdma_mr_recycle(%struct.rpcrdma_mr* %5)
  %7 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DMA_NONE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %14 = call i32 @trace_xprtrdma_mr_unmap(%struct.rpcrdma_mr* %13)
  %15 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %25 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ib_dma_unmap_sg(i32 %20, i32 %23, i32 %26, i64 %29)
  %31 = load i64, i64* @DMA_NONE, align 8
  %32 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %33 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %12, %2
  %35 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %36 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %39, i32 0, i32 1
  %41 = call i32 @list_del(i32* %40)
  %42 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %43 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %48 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %52 = call i32 @frwr_release_mr(%struct.rpcrdma_mr* %51)
  ret void
}

declare dso_local i32 @trace_xprtrdma_mr_recycle(%struct.rpcrdma_mr*) #1

declare dso_local i32 @trace_xprtrdma_mr_unmap(%struct.rpcrdma_mr*) #1

declare dso_local i32 @ib_dma_unmap_sg(i32, i32, i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @frwr_release_mr(%struct.rpcrdma_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
