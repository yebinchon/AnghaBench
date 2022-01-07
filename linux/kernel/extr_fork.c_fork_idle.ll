; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_fork_idle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_fork_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.kernel_clone_args = type { i32 }

@CLONE_VM = common dso_local global i32 0, align 4
@init_struct_pid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @fork_idle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.kernel_clone_args, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %4, i32 0, i32 0
  %6 = load i32, i32* @CLONE_VM, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @cpu_to_node(i32 %7)
  %9 = call %struct.task_struct* @copy_process(i32* @init_struct_pid, i32 0, i32 %8, %struct.kernel_clone_args* %4)
  store %struct.task_struct* %9, %struct.task_struct** %3, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = call i32 @IS_ERR(%struct.task_struct* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = call i32 @init_idle_pids(%struct.task_struct* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @init_idle(%struct.task_struct* %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  ret %struct.task_struct* %20
}

declare dso_local %struct.task_struct* @copy_process(i32*, i32, i32, %struct.kernel_clone_args*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @init_idle_pids(%struct.task_struct*) #1

declare dso_local i32 @init_idle(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
