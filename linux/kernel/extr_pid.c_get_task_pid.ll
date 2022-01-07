; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c_get_task_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c_get_task_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }
%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pid* @get_task_pid(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pid*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32* @task_pid_ptr(%struct.task_struct* %7, i32 %8)
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @rcu_dereference(i32 %10)
  %12 = call %struct.pid* @get_pid(i32 %11)
  store %struct.pid* %12, %struct.pid** %5, align 8
  %13 = call i32 (...) @rcu_read_unlock()
  %14 = load %struct.pid*, %struct.pid** %5, align 8
  ret %struct.pid* %14
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @get_pid(i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32* @task_pid_ptr(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
