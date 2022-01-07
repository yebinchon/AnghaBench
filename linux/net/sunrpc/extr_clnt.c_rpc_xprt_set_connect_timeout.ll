; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_xprt_set_connect_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_xprt_set_connect_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_xprt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_xprt*, i32, i32)* }
%struct.connect_timeout_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.rpc_xprt*, i8*)* @rpc_xprt_set_connect_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_xprt_set_connect_timeout(%struct.rpc_clnt* %0, %struct.rpc_xprt* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.connect_timeout_data*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.connect_timeout_data*
  store %struct.connect_timeout_data* %9, %struct.connect_timeout_data** %7, align 8
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.rpc_xprt*, i32, i32)*, i32 (%struct.rpc_xprt*, i32, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.rpc_xprt*, i32, i32)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.rpc_xprt*, i32, i32)*, i32 (%struct.rpc_xprt*, i32, i32)** %20, align 8
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %23 = load %struct.connect_timeout_data*, %struct.connect_timeout_data** %7, align 8
  %24 = getelementptr inbounds %struct.connect_timeout_data, %struct.connect_timeout_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.connect_timeout_data*, %struct.connect_timeout_data** %7, align 8
  %27 = getelementptr inbounds %struct.connect_timeout_data, %struct.connect_timeout_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %21(%struct.rpc_xprt* %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %16, %3
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
