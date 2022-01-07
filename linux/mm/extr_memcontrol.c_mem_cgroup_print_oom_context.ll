; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_print_oom_context.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_print_oom_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c",oom_memcg=\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c",global_oom\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c",task_memcg=\00", align 1
@memory_cgrp_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_print_oom_context(%struct.mem_cgroup* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %7 = icmp ne %struct.mem_cgroup* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = call i32 @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %11 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_cont_cgroup_path(i32 %13)
  br label %17

15:                                               ; preds = %2
  %16 = call i32 @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %8
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = call i32 @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = load i32, i32* @memory_cgrp_id, align 4
  %24 = call i32 @task_cgroup(%struct.task_struct* %22, i32 %23)
  %25 = call i32 @pr_cont_cgroup_path(i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @pr_cont_cgroup_path(i32) #1

declare dso_local i32 @task_cgroup(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
