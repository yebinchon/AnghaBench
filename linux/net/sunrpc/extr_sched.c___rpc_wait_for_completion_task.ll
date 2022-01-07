; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_wait_for_completion_task.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_wait_for_completion_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }

@rpc_wait_bit_killable = common dso_local global i32* null, align 8
@RPC_TASK_ACTIVE = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_wait_for_completion_task(%struct.rpc_task* %0, i32* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i32*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32*, i32** @rpc_wait_bit_killable, align 8
  store i32* %8, i32** %4, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 0
  %12 = load i32, i32* @RPC_TASK_ACTIVE, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @TASK_KILLABLE, align 4
  %15 = call i32 @out_of_line_wait_on_bit(i32* %11, i32 %12, i32* %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @out_of_line_wait_on_bit(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
