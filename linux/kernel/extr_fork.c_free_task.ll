; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_free_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_free_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }

@PF_KTHREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = call i32 @release_task_stack(%struct.task_struct* %3)
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call i32 @rt_mutex_debug_task_free(%struct.task_struct* %5)
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = call i32 @ftrace_graph_exit_task(%struct.task_struct* %7)
  %9 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %10 = call i32 @put_seccomp_filter(%struct.task_struct* %9)
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = call i32 @arch_release_task_struct(%struct.task_struct* %11)
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PF_KTHREAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = call i32 @free_kthread_struct(%struct.task_struct* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = call i32 @free_task_struct(%struct.task_struct* %23)
  ret void
}

declare dso_local i32 @release_task_stack(%struct.task_struct*) #1

declare dso_local i32 @rt_mutex_debug_task_free(%struct.task_struct*) #1

declare dso_local i32 @ftrace_graph_exit_task(%struct.task_struct*) #1

declare dso_local i32 @put_seccomp_filter(%struct.task_struct*) #1

declare dso_local i32 @arch_release_task_struct(%struct.task_struct*) #1

declare dso_local i32 @free_kthread_struct(%struct.task_struct*) #1

declare dso_local i32 @free_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
