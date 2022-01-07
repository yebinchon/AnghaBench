; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_sendctx_put_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_sendctx_put_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_sendctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.rpcrdma_buffer }
%struct.rpcrdma_buffer = type { i64, %struct.rpcrdma_sendctx** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpcrdma_sendctx*)* @rpcrdma_sendctx_put_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcrdma_sendctx_put_locked(%struct.rpcrdma_sendctx* %0) #0 {
  %2 = alloca %struct.rpcrdma_sendctx*, align 8
  %3 = alloca %struct.rpcrdma_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.rpcrdma_sendctx* %0, %struct.rpcrdma_sendctx** %2, align 8
  %5 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.rpcrdma_buffer* %8, %struct.rpcrdma_buffer** %3, align 8
  %9 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @rpcrdma_sendctx_next(%struct.rpcrdma_buffer* %13, i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %16, i32 0, i32 1
  %18 = load %struct.rpcrdma_sendctx**, %struct.rpcrdma_sendctx*** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %18, i64 %19
  %21 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %20, align 8
  %22 = call i32 @rpcrdma_sendctx_unmap(%struct.rpcrdma_sendctx* %21)
  br label %23

23:                                               ; preds = %12
  %24 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %24, i32 0, i32 1
  %26 = load %struct.rpcrdma_sendctx**, %struct.rpcrdma_sendctx*** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %26, i64 %27
  %29 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %28, align 8
  %30 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %31 = icmp ne %struct.rpcrdma_sendctx* %29, %30
  br i1 %31, label %12, label %32

32:                                               ; preds = %23
  %33 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @smp_store_release(i64* %34, i64 %35)
  %37 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  %38 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @xprt_write_space(i32* %40)
  ret void
}

declare dso_local i64 @rpcrdma_sendctx_next(%struct.rpcrdma_buffer*, i64) #1

declare dso_local i32 @rpcrdma_sendctx_unmap(%struct.rpcrdma_sendctx*) #1

declare dso_local i32 @smp_store_release(i64*, i64) #1

declare dso_local i32 @xprt_write_space(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
