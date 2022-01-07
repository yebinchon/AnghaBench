; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_set_connect_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_set_connect_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i64, i64, i32, %struct.rpc_timeout* }
%struct.rpc_timeout = type { i64, i64 }
%struct.rpcrdma_xprt = type { %struct.rpc_timeout }

@RPCRDMA_INIT_REEST_TO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, i64, i64)* @xprt_rdma_set_connect_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_rdma_set_connect_timeout(%struct.rpc_xprt* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rpcrdma_xprt*, align 8
  %8 = alloca %struct.rpc_timeout, align 8
  %9 = alloca i64, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %11 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %10)
  store %struct.rpcrdma_xprt* %11, %struct.rpcrdma_xprt** %7, align 8
  %12 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @trace_xprtrdma_op_set_cto(%struct.rpcrdma_xprt* %12, i64 %13, i64 %14)
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %3
  %25 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %25, i32 0, i32 3
  %27 = load %struct.rpc_timeout*, %struct.rpc_timeout** %26, align 8
  %28 = bitcast %struct.rpc_timeout* %8 to i8*
  %29 = bitcast %struct.rpc_timeout* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @RPCRDMA_INIT_REEST_TO, align 8
  %33 = shl i64 %32, 1
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i64, i64* @RPCRDMA_INIT_REEST_TO, align 8
  %37 = shl i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %8, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %8, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %7, align 8
  %44 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %43, i32 0, i32 0
  %45 = bitcast %struct.rpc_timeout* %44 to i8*
  %46 = bitcast %struct.rpc_timeout* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %7, align 8
  %48 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %47, i32 0, i32 0
  %49 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %50 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %49, i32 0, i32 3
  store %struct.rpc_timeout* %48, %struct.rpc_timeout** %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %53 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %38, %3
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %57 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %63 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %66 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock(i32* %66)
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i32 @trace_xprtrdma_op_set_cto(%struct.rpcrdma_xprt*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
