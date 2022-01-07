; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_ping.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { i32* }
%struct.rpc_clnt = type { i32 }

@rpcproc_null = common dso_local global i32 0, align 4
@__const.rpc_ping.msg = private unnamed_addr constant %struct.rpc_message { i32* @rpcproc_null }, align 8
@RPC_TASK_SOFT = common dso_local global i32 0, align 4
@RPC_TASK_SOFTCONN = common dso_local global i32 0, align 4
@RPC_TASK_NULLCREDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*)* @rpc_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_ping(%struct.rpc_clnt* %0) #0 {
  %2 = alloca %struct.rpc_clnt*, align 8
  %3 = alloca %struct.rpc_message, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %2, align 8
  %5 = bitcast %struct.rpc_message* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.rpc_message* @__const.rpc_ping.msg to i8*), i64 8, i1 false)
  %6 = load %struct.rpc_clnt*, %struct.rpc_clnt** %2, align 8
  %7 = load i32, i32* @RPC_TASK_SOFT, align 4
  %8 = load i32, i32* @RPC_TASK_SOFTCONN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RPC_TASK_NULLCREDS, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @rpc_call_sync(%struct.rpc_clnt* %6, %struct.rpc_message* %3, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  ret i32 %13
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rpc_call_sync(%struct.rpc_clnt*, %struct.rpc_message*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
