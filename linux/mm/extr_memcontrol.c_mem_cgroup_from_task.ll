; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_from_task.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_from_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.task_struct = type { i32 }

@memory_cgrp_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mem_cgroup* @mem_cgroup_from_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %5 = icmp ne %struct.task_struct* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = load i32, i32* @memory_cgrp_id, align 4
  %14 = call i32 @task_css(%struct.task_struct* %12, i32 %13)
  %15 = call %struct.mem_cgroup* @mem_cgroup_from_css(i32 %14)
  store %struct.mem_cgroup* %15, %struct.mem_cgroup** %2, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  ret %struct.mem_cgroup* %17
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_css(i32) #1

declare dso_local i32 @task_css(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
