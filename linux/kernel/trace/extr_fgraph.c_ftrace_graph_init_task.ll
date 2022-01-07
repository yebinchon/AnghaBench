; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_ftrace_graph_init_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_fgraph.c_ftrace_graph_init_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32* }
%struct.ftrace_ret_stack = type { i32 }

@ftrace_graph_active = common dso_local global i64 0, align 8
@FTRACE_RETFUNC_DEPTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftrace_graph_init_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.ftrace_ret_stack*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 2
  store i32* null, i32** %5, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  store i32 -1, i32* %7, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 1
  store i32 -1, i32* %9, align 4
  %10 = load i64, i64* @ftrace_graph_active, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @FTRACE_RETFUNC_DEPTH, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ftrace_ret_stack* @kmalloc_array(i32 %13, i32 4, i32 %14)
  store %struct.ftrace_ret_stack* %15, %struct.ftrace_ret_stack** %3, align 8
  %16 = load %struct.ftrace_ret_stack*, %struct.ftrace_ret_stack** %3, align 8
  %17 = icmp ne %struct.ftrace_ret_stack* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = load %struct.ftrace_ret_stack*, %struct.ftrace_ret_stack** %3, align 8
  %22 = call i32 @graph_init_task(%struct.task_struct* %20, %struct.ftrace_ret_stack* %21)
  br label %23

23:                                               ; preds = %18, %19, %1
  ret void
}

declare dso_local %struct.ftrace_ret_stack* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @graph_init_task(%struct.task_struct*, %struct.ftrace_ret_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
