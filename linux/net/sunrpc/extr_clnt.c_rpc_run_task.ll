; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_run_task.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_run_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32* }
%struct.rpc_task_setup = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_task* @rpc_run_task(%struct.rpc_task_setup* %0) #0 {
  %2 = alloca %struct.rpc_task_setup*, align 8
  %3 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task_setup* %0, %struct.rpc_task_setup** %2, align 8
  %4 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %2, align 8
  %5 = call %struct.rpc_task* @rpc_new_task(%struct.rpc_task_setup* %4)
  store %struct.rpc_task* %5, %struct.rpc_task** %3, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %7 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rpc_task_set_client(%struct.rpc_task* %6, i32 %9)
  %11 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %12 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rpc_task_set_rpc_message(%struct.rpc_task* %11, i32 %14)
  %16 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %22 = call i32 @rpc_call_start(%struct.rpc_task* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %24, i32 0, i32 0
  %26 = call i32 @atomic_inc(i32* %25)
  %27 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %28 = call i32 @rpc_execute(%struct.rpc_task* %27)
  %29 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  ret %struct.rpc_task* %29
}

declare dso_local %struct.rpc_task* @rpc_new_task(%struct.rpc_task_setup*) #1

declare dso_local i32 @rpc_task_set_client(%struct.rpc_task*, i32) #1

declare dso_local i32 @rpc_task_set_rpc_message(%struct.rpc_task*, i32) #1

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rpc_execute(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
