; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_task_cgroup_path.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_task_cgroup_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cgroup_root = type { i32 }
%struct.cgroup = type { i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4
@cgroup_hierarchy_idr = common dso_local global i32 0, align 4
@init_cgroup_ns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_cgroup_path(%struct.task_struct* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cgroup_root*, align 8
  %8 = alloca %struct.cgroup*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %9, align 4
  %11 = call i32 @mutex_lock(i32* @cgroup_mutex)
  %12 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %13 = call %struct.cgroup_root* @idr_get_next(i32* @cgroup_hierarchy_idr, i32* %9)
  store %struct.cgroup_root* %13, %struct.cgroup_root** %7, align 8
  %14 = load %struct.cgroup_root*, %struct.cgroup_root** %7, align 8
  %15 = icmp ne %struct.cgroup_root* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = load %struct.cgroup_root*, %struct.cgroup_root** %7, align 8
  %19 = call %struct.cgroup* @task_cgroup_from_root(%struct.task_struct* %17, %struct.cgroup_root* %18)
  store %struct.cgroup* %19, %struct.cgroup** %8, align 8
  %20 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @cgroup_path_ns_locked(%struct.cgroup* %20, i8* %21, i64 %22, i32* @init_cgroup_ns)
  store i32 %23, i32* %10, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @strlcpy(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %24, %16
  %29 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  %30 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %31 = load i32, i32* %10, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cgroup_root* @idr_get_next(i32*, i32*) #1

declare dso_local %struct.cgroup* @task_cgroup_from_root(%struct.task_struct*, %struct.cgroup_root*) #1

declare dso_local i32 @cgroup_path_ns_locked(%struct.cgroup*, i8*, i64, i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
