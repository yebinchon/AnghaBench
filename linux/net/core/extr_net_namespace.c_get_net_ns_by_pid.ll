; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_get_net_ns_by_pid.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_get_net_ns_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.task_struct = type { %struct.nsproxy* }
%struct.nsproxy = type { i32 }

@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net* @get_net_ns_by_pid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nsproxy*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @ESRCH, align 4
  %7 = sub nsw i32 0, %6
  %8 = call %struct.net* @ERR_PTR(i32 %7)
  store %struct.net* %8, %struct.net** %4, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.task_struct* @find_task_by_vpid(i32 %10)
  store %struct.task_struct* %11, %struct.task_struct** %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = icmp ne %struct.task_struct* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call i32 @task_lock(%struct.task_struct* %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load %struct.nsproxy*, %struct.nsproxy** %18, align 8
  store %struct.nsproxy* %19, %struct.nsproxy** %5, align 8
  %20 = load %struct.nsproxy*, %struct.nsproxy** %5, align 8
  %21 = icmp ne %struct.nsproxy* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.nsproxy*, %struct.nsproxy** %5, align 8
  %24 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @get_net(i32 %25)
  store %struct.net* %26, %struct.net** %4, align 8
  br label %27

27:                                               ; preds = %22, %14
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call i32 @task_unlock(%struct.task_struct* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.net*, %struct.net** %4, align 8
  ret %struct.net* %32
}

declare dso_local %struct.net* @ERR_PTR(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local %struct.net* @get_net(i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
