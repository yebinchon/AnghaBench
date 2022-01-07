; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c_get_pid_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c_get_pid_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @get_pid_task(%struct.pid* %0, i32 %1) #0 {
  %3 = alloca %struct.pid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store %struct.pid* %0, %struct.pid** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.pid*, %struct.pid** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.task_struct* @pid_task(%struct.pid* %7, i32 %8)
  store %struct.task_struct* %9, %struct.task_struct** %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = call i32 @get_task_struct(%struct.task_struct* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = call i32 (...) @rcu_read_unlock()
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  ret %struct.task_struct* %17
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(%struct.pid*, i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
