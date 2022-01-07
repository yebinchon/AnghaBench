; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_wrap_req_encode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_wrap_req_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.xdr_stream*, i32)* }
%struct.xdr_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcauth_wrap_req_encode(%struct.rpc_task* %0, %struct.xdr_stream* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i32 (i32, %struct.xdr_stream*, i32)*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %4, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (i32, %struct.xdr_stream*, i32)*, i32 (i32, %struct.xdr_stream*, i32)** %10, align 8
  store i32 (i32, %struct.xdr_stream*, i32)* %11, i32 (i32, %struct.xdr_stream*, i32)** %5, align 8
  %12 = load i32 (i32, %struct.xdr_stream*, i32)*, i32 (i32, %struct.xdr_stream*, i32)** %5, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %12(i32 %15, %struct.xdr_stream* %16, i32 %20)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
