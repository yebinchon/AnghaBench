; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_call_null_helper.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_call_null_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_message = type { i32* }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_clnt = type { i32 }
%struct.rpc_xprt = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.rpc_task_setup = type { i8*, i32, %struct.rpc_call_ops*, %struct.rpc_cred*, %struct.rpc_message*, %struct.rpc_xprt*, %struct.rpc_clnt* }

@rpcproc_null = common dso_local global i32 0, align 4
@__const.rpc_call_null_helper.msg = private unnamed_addr constant %struct.rpc_message { i32* @rpcproc_null }, align 8
@RPC_TASK_NULLCREDS = common dso_local global i32 0, align 4
@rpc_default_ops = common dso_local global %struct.rpc_call_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_task* (%struct.rpc_clnt*, %struct.rpc_xprt*, %struct.rpc_cred*, i32, %struct.rpc_call_ops*, i8*)* @rpc_call_null_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_task* @rpc_call_null_helper(%struct.rpc_clnt* %0, %struct.rpc_xprt* %1, %struct.rpc_cred* %2, i32 %3, %struct.rpc_call_ops* %4, i8* %5) #0 {
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca %struct.rpc_xprt*, align 8
  %9 = alloca %struct.rpc_cred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rpc_call_ops*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.rpc_message, align 8
  %14 = alloca %struct.rpc_task_setup, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_xprt* %1, %struct.rpc_xprt** %8, align 8
  store %struct.rpc_cred* %2, %struct.rpc_cred** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.rpc_call_ops* %4, %struct.rpc_call_ops** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = bitcast %struct.rpc_message* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.rpc_message* @__const.rpc_call_null_helper.msg to i8*), i64 8, i1 false)
  %16 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 0
  %17 = load i8*, i8** %12, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 1
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @RPC_TASK_NULLCREDS, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %18, align 8
  %22 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 2
  %23 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %11, align 8
  %24 = icmp ne %struct.rpc_call_ops* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %11, align 8
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi %struct.rpc_call_ops* [ %26, %25 ], [ @rpc_default_ops, %27 ]
  store %struct.rpc_call_ops* %29, %struct.rpc_call_ops** %22, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 3
  %31 = load %struct.rpc_cred*, %struct.rpc_cred** %9, align 8
  store %struct.rpc_cred* %31, %struct.rpc_cred** %30, align 8
  %32 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 4
  store %struct.rpc_message* %13, %struct.rpc_message** %32, align 8
  %33 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 5
  %34 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  store %struct.rpc_xprt* %34, %struct.rpc_xprt** %33, align 8
  %35 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %14, i32 0, i32 6
  %36 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_clnt* %36, %struct.rpc_clnt** %35, align 8
  %37 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %14)
  ret %struct.rpc_task* %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
