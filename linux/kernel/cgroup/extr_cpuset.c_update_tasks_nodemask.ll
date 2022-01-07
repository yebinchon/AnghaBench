; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_tasks_nodemask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_tasks_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32, i32, i32 }
%struct.css_task_iter = type { i32 }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }

@update_tasks_nodemask.newmems = internal global i32 0, align 4
@cpuset_being_rebound = common dso_local global %struct.cpuset* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuset*)* @update_tasks_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_tasks_nodemask(%struct.cpuset* %0) #0 {
  %2 = alloca %struct.cpuset*, align 8
  %3 = alloca %struct.css_task_iter, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %2, align 8
  %7 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  store %struct.cpuset* %7, %struct.cpuset** @cpuset_being_rebound, align 8
  %8 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %9 = call i32 @guarantee_online_mems(%struct.cpuset* %8, i32* @update_tasks_nodemask.newmems)
  %10 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %11 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %10, i32 0, i32 2
  %12 = call i32 @css_task_iter_start(i32* %11, i32 0, %struct.css_task_iter* %3)
  br label %13

13:                                               ; preds = %41, %23, %1
  %14 = call %struct.task_struct* @css_task_iter_next(%struct.css_task_iter* %3)
  store %struct.task_struct* %14, %struct.task_struct** %4, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call i32 @cpuset_change_task_nodemask(%struct.task_struct* %17, i32* @update_tasks_nodemask.newmems)
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %19)
  store %struct.mm_struct* %20, %struct.mm_struct** %5, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = icmp ne %struct.mm_struct* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %13

24:                                               ; preds = %16
  %25 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %26 = call i32 @is_memory_migrate(%struct.cpuset* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %28 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %29 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %28, i32 0, i32 1
  %30 = call i32 @mpol_rebind_mm(%struct.mm_struct* %27, i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %35 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %36 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %35, i32 0, i32 0
  %37 = call i32 @cpuset_migrate_mm(%struct.mm_struct* %34, i32* %36, i32* @update_tasks_nodemask.newmems)
  br label %41

38:                                               ; preds = %24
  %39 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %40 = call i32 @mmput(%struct.mm_struct* %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %13

42:                                               ; preds = %13
  %43 = call i32 @css_task_iter_end(%struct.css_task_iter* %3)
  %44 = load i32, i32* @update_tasks_nodemask.newmems, align 4
  %45 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  %46 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store %struct.cpuset* null, %struct.cpuset** @cpuset_being_rebound, align 8
  ret void
}

declare dso_local i32 @guarantee_online_mems(%struct.cpuset*, i32*) #1

declare dso_local i32 @css_task_iter_start(i32*, i32, %struct.css_task_iter*) #1

declare dso_local %struct.task_struct* @css_task_iter_next(%struct.css_task_iter*) #1

declare dso_local i32 @cpuset_change_task_nodemask(%struct.task_struct*, i32*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @is_memory_migrate(%struct.cpuset*) #1

declare dso_local i32 @mpol_rebind_mm(%struct.mm_struct*, i32*) #1

declare dso_local i32 @cpuset_migrate_mm(%struct.mm_struct*, i32*, i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @css_task_iter_end(%struct.css_task_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
