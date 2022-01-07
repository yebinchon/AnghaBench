; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_wait_for_reply_request_rtt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_wait_for_reply_request_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst*, %struct.rpc_clnt*, %struct.TYPE_8__ }
%struct.rpc_rqst = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.rpc_clnt = type { %struct.TYPE_5__*, %struct.rpc_rtt* }
%struct.TYPE_5__ = type { i64 }
%struct.rpc_rtt = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@xprt_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_wait_for_reply_request_rtt(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_rtt*, align 8
  %6 = alloca %struct.rpc_rqst*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 1
  %17 = load %struct.rpc_clnt*, %struct.rpc_clnt** %16, align 8
  store %struct.rpc_clnt* %17, %struct.rpc_clnt** %4, align 8
  %18 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %18, i32 0, i32 1
  %20 = load %struct.rpc_rtt*, %struct.rpc_rtt** %19, align 8
  store %struct.rpc_rtt* %20, %struct.rpc_rtt** %5, align 8
  %21 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %22 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %21, i32 0, i32 0
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %22, align 8
  store %struct.rpc_rqst* %23, %struct.rpc_rqst** %6, align 8
  %24 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %25 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.rpc_rtt*, %struct.rpc_rtt** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @rpc_calc_rto(%struct.rpc_rtt* %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.rpc_rtt*, %struct.rpc_rtt** %5, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @rpc_ntimeo(%struct.rpc_rtt* %32, i32 %33)
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %36 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  %39 = load i64, i64* %8, align 8
  %40 = shl i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %1
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %51 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %55 = load i32, i32* @xprt_timer, align 4
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %56, %57
  %59 = call i32 @rpc_sleep_on_timeout(i32* %53, %struct.rpc_task* %54, i32 %55, i64 %58)
  ret void
}

declare dso_local i64 @rpc_calc_rto(%struct.rpc_rtt*, i32) #1

declare dso_local i64 @rpc_ntimeo(%struct.rpc_rtt*, i32) #1

declare dso_local i32 @rpc_sleep_on_timeout(i32*, %struct.rpc_task*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
