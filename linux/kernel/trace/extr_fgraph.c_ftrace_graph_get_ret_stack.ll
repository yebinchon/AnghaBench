; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_ftrace_graph_get_ret_stack.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_ftrace_graph_get_ret_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_ret_stack = type { i32 }
%struct.task_struct = type { i32, %struct.ftrace_ret_stack* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ftrace_ret_stack* @ftrace_graph_get_ret_stack(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.ftrace_ret_stack*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 1
  %22 = load %struct.ftrace_ret_stack*, %struct.ftrace_ret_stack** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ftrace_ret_stack, %struct.ftrace_ret_stack* %22, i64 %24
  store %struct.ftrace_ret_stack* %25, %struct.ftrace_ret_stack** %3, align 8
  br label %27

26:                                               ; preds = %13, %2
  store %struct.ftrace_ret_stack* null, %struct.ftrace_ret_stack** %3, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.ftrace_ret_stack*, %struct.ftrace_ret_stack** %3, align 8
  ret %struct.ftrace_ret_stack* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
