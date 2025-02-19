; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_call_sync.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_call_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.rpc_message = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_task_setup = type { i32, i32, i32*, %struct.rpc_message*, %struct.rpc_clnt* }

@rpc_default_ops = common dso_local global i32 0, align 4
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_call_sync(%struct.rpc_clnt* %0, %struct.rpc_message* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.rpc_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_task*, align 8
  %9 = alloca %struct.rpc_task_setup, align 8
  %10 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 0
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 2
  store i32* @rpc_default_ops, i32** %14, align 8
  %15 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 3
  %16 = load %struct.rpc_message*, %struct.rpc_message** %6, align 8
  store %struct.rpc_message* %16, %struct.rpc_message** %15, align 8
  %17 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 4
  %18 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  store %struct.rpc_clnt* %18, %struct.rpc_clnt** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %9, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rpc_release_calldata(i32* %29, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %3
  %36 = call %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %9)
  store %struct.rpc_task* %36, %struct.rpc_task** %8, align 8
  %37 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %38 = call i64 @IS_ERR(%struct.rpc_task* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %42 = call i32 @PTR_ERR(%struct.rpc_task* %41)
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %35
  %44 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %48 = call i32 @rpc_put_task(%struct.rpc_task* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %40, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rpc_release_calldata(i32*, i32) #1

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
