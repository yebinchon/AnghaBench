; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_get_oom_group.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_get_oom_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i64 }
%struct.task_struct = type { i32 }

@memory_cgrp_subsys = common dso_local global i32 0, align 4
@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mem_cgroup* @mem_cgroup_get_oom_group(%struct.task_struct* %0, %struct.mem_cgroup* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca %struct.mem_cgroup*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %5, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %6, align 8
  %8 = load i32, i32* @memory_cgrp_subsys, align 4
  %9 = call i32 @cgroup_subsys_on_dfl(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %3, align 8
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %14 = icmp ne %struct.mem_cgroup* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  store %struct.mem_cgroup* %16, %struct.mem_cgroup** %5, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = call %struct.mem_cgroup* @mem_cgroup_from_task(%struct.task_struct* %19)
  store %struct.mem_cgroup* %20, %struct.mem_cgroup** %7, align 8
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  %23 = icmp eq %struct.mem_cgroup* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %53

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %42, %25
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %28 = icmp ne %struct.mem_cgroup* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %31 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  store %struct.mem_cgroup* %35, %struct.mem_cgroup** %6, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %38 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %39 = icmp eq %struct.mem_cgroup* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %45

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %44 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %43)
  store %struct.mem_cgroup* %44, %struct.mem_cgroup** %7, align 8
  br label %26

45:                                               ; preds = %40, %26
  %46 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %47 = icmp ne %struct.mem_cgroup* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %50 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %49, i32 0, i32 0
  %51 = call i32 @css_get(i32* %50)
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52, %24
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  store %struct.mem_cgroup* %55, %struct.mem_cgroup** %3, align 8
  br label %56

56:                                               ; preds = %53, %11
  %57 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  ret %struct.mem_cgroup* %57
}

declare dso_local i32 @cgroup_subsys_on_dfl(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_task(%struct.task_struct*) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

declare dso_local i32 @css_get(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
