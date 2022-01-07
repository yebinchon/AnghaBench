; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid.c___task_pid_nr_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid.c___task_pid_nr_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pid_namespace = type { i32 }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__task_pid_nr_ns(%struct.task_struct* %0, i32 %1, %struct.pid_namespace* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pid_namespace* %2, %struct.pid_namespace** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %10 = icmp ne %struct.pid_namespace* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @current, align 4
  %13 = call %struct.pid_namespace* @task_active_pid_ns(i32 %12)
  store %struct.pid_namespace* %13, %struct.pid_namespace** %6, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = call i32 @pid_alive(%struct.task_struct* %15)
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32* @task_pid_ptr(%struct.task_struct* %20, i32 %21)
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rcu_dereference(i32 %23)
  %25 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %26 = call i32 @pid_nr_ns(i32 %24, %struct.pid_namespace* %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pid_alive(%struct.task_struct*) #1

declare dso_local i32 @pid_nr_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32* @task_pid_ptr(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
