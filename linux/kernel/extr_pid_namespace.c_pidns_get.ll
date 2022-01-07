; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_pidns_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_pidns_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { i32 }
%struct.task_struct = type { i32 }
%struct.pid_namespace = type { %struct.ns_common }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ns_common* (%struct.task_struct*)* @pidns_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ns_common* @pidns_get(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.pid_namespace*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* %5)
  store %struct.pid_namespace* %6, %struct.pid_namespace** %3, align 8
  %7 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %8 = icmp ne %struct.pid_namespace* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %11 = call i32 @get_pid_ns(%struct.pid_namespace* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 (...) @rcu_read_unlock()
  %14 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %15 = icmp ne %struct.pid_namespace* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %18 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %17, i32 0, i32 0
  br label %20

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi %struct.ns_common* [ %18, %16 ], [ null, %19 ]
  ret %struct.ns_common* %21
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct*) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
