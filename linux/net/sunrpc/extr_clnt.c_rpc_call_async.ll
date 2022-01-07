; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_call_async.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_call_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_message = type { i32 }
%struct.rpc_call_ops = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_task_setup = type { i8*, i32, %struct.rpc_call_ops*, %struct.rpc_message*, %struct.rpc_clnt* }

@RPC_TASK_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_call_async(%struct.rpc_clnt* %0, %struct.rpc_message* %1, i32 %2, %struct.rpc_call_ops* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca %struct.rpc_message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpc_call_ops*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rpc_task*, align 8
  %13 = alloca %struct.rpc_task_setup, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.rpc_call_ops* %3, %struct.rpc_call_ops** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 0
  %15 = load i8*, i8** %11, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 1
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %16, align 8
  %20 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 2
  %21 = load %struct.rpc_call_ops*, %struct.rpc_call_ops** %10, align 8
  store %struct.rpc_call_ops* %21, %struct.rpc_call_ops** %20, align 8
  %22 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 3
  %23 = load %struct.rpc_message*, %struct.rpc_message** %8, align 8
  store %struct.rpc_message* %23, %struct.rpc_message** %22, align 8
  %24 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %13, i32 0, i32 4
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_clnt* %25, %struct.rpc_clnt** %24, align 8
  %26 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %13)
  store %struct.rpc_task* %26, %struct.rpc_task** %12, align 8
  %27 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %28 = call i64 @IS_ERR(%struct.rpc_task* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %32 = call i32 @PTR_ERR(%struct.rpc_task* %31)
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %5
  %34 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %35 = call i32 @rpc_put_task(%struct.rpc_task* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
