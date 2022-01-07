; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_rqst*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_request_prepare(%struct.rpc_rqst* %0) #0 {
  %2 = alloca %struct.rpc_rqst*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %2, align 8
  %4 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %4, i32 0, i32 0
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_xprt* %6, %struct.rpc_xprt** %3, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %8 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %10, align 8
  %12 = icmp ne i32 (%struct.rpc_rqst*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.rpc_rqst*)*, i32 (%struct.rpc_rqst*)** %17, align 8
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %20 = call i32 %18(%struct.rpc_rqst* %19)
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
