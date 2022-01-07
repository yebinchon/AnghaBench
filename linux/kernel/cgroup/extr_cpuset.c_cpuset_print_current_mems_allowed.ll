; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_print_current_mems_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_print_current_mems_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.cgroup = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.cgroup* }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c",cpuset=\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c",mems_allowed=%*pbl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuset_print_current_mems_allowed() #0 {
  %1 = alloca %struct.cgroup*, align 8
  %2 = call i32 (...) @rcu_read_lock()
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %4 = call %struct.TYPE_6__* @task_cs(%struct.TYPE_7__* %3)
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  store %struct.cgroup* %7, %struct.cgroup** %1, align 8
  %8 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cgroup*, %struct.cgroup** %1, align 8
  %10 = call i32 @pr_cont_cgroup_name(%struct.cgroup* %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = call i32 @nodemask_pr_args(i32* %12)
  %14 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_6__* @task_cs(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @pr_cont_cgroup_name(%struct.cgroup*) #1

declare dso_local i32 @nodemask_pr_args(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
