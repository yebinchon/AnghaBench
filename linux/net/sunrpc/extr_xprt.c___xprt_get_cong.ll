; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c___xprt_get_cong.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c___xprt_get_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32 }
%struct.rpc_rqst = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"RPC: %5u xprt_cwnd_limited cong = %lu cwnd = %lu\0A\00", align 1
@RPC_CWNDSCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_xprt*, %struct.rpc_rqst*)* @__xprt_get_cong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xprt_get_cong(%struct.rpc_xprt* %0, %struct.rpc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %5, align 8
  %6 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %7 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %13 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %25 = call i64 @RPCXPRT_CONGESTED(%struct.rpc_xprt* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %11
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %29 = call i32 @xprt_set_congestion_window_wait(%struct.rpc_xprt* %28)
  store i32 0, i32* %3, align 4
  br label %40

30:                                               ; preds = %11
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %32 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i64, i64* @RPC_CWNDSCALE, align 8
  %34 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %27, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i64 @RPCXPRT_CONGESTED(%struct.rpc_xprt*) #1

declare dso_local i32 @xprt_set_congestion_window_wait(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
