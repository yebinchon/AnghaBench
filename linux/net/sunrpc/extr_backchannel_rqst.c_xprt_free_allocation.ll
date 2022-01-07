; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_backchannel_rqst.c_xprt_free_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_backchannel_rqst.c_xprt_free_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.xdr_buf, %struct.xdr_buf, i32 }
%struct.xdr_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"RPC:        free allocations for req= %p\0A\00", align 1
@RPC_BC_PA_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*)* @xprt_free_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_free_allocation(%struct.rpc_rqst* %0) #0 {
  %2 = alloca %struct.rpc_rqst*, align 8
  %3 = alloca %struct.xdr_buf*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %2, align 8
  %4 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %5 = call i32 @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.rpc_rqst* %4)
  %6 = load i32, i32* @RPC_BC_PA_IN_USE, align 4
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %7, i32 0, i32 2
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 1
  store %struct.xdr_buf* %12, %struct.xdr_buf** %3, align 8
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %14 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @free_page(i64 %18)
  %20 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %20, i32 0, i32 0
  store %struct.xdr_buf* %21, %struct.xdr_buf** %3, align 8
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @free_page(i64 %27)
  %29 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %30 = call i32 @kfree(%struct.rpc_rqst* %29)
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.rpc_rqst*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
