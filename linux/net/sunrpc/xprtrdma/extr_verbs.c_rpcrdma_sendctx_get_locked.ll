; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_sendctx_get_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_sendctx_get_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_sendctx = type { i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_2__, i32, %struct.rpcrdma_buffer }
%struct.TYPE_2__ = type { i32 }
%struct.rpcrdma_buffer = type { i64, %struct.rpcrdma_sendctx**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpcrdma_sendctx* @rpcrdma_sendctx_get_locked(%struct.rpcrdma_xprt* %0) #0 {
  %2 = alloca %struct.rpcrdma_sendctx*, align 8
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  %4 = alloca %struct.rpcrdma_buffer*, align 8
  %5 = alloca %struct.rpcrdma_sendctx*, align 8
  %6 = alloca i64, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %3, align 8
  %7 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %7, i32 0, i32 2
  store %struct.rpcrdma_buffer* %8, %struct.rpcrdma_buffer** %4, align 8
  %9 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %10 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @rpcrdma_sendctx_next(%struct.rpcrdma_buffer* %9, i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @READ_ONCE(i32 %17)
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %22, i32 0, i32 1
  %24 = load %struct.rpcrdma_sendctx**, %struct.rpcrdma_sendctx*** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %24, i64 %25
  %27 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %26, align 8
  store %struct.rpcrdma_sendctx* %27, %struct.rpcrdma_sendctx** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.rpcrdma_buffer*, %struct.rpcrdma_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.rpcrdma_buffer, %struct.rpcrdma_buffer* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %5, align 8
  store %struct.rpcrdma_sendctx* %31, %struct.rpcrdma_sendctx** %2, align 8
  br label %41

32:                                               ; preds = %20
  %33 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %34 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %33, i32 0, i32 1
  %35 = call i32 @xprt_wait_for_buffer_space(i32* %34)
  %36 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %37 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  store %struct.rpcrdma_sendctx* null, %struct.rpcrdma_sendctx** %2, align 8
  br label %41

41:                                               ; preds = %32, %21
  %42 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %2, align 8
  ret %struct.rpcrdma_sendctx* %42
}

declare dso_local i64 @rpcrdma_sendctx_next(%struct.rpcrdma_buffer*, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @xprt_wait_for_buffer_space(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
