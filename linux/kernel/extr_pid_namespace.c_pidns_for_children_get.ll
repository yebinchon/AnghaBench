; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_pidns_for_children_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_pidns_for_children_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { i32 }
%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.ns_common, i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ns_common* (%struct.task_struct*)* @pidns_for_children_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ns_common* @pidns_for_children_get(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.pid_namespace*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store %struct.pid_namespace* null, %struct.pid_namespace** %3, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call i32 @task_lock(%struct.task_struct* %4)
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pid_namespace*, %struct.pid_namespace** %14, align 8
  store %struct.pid_namespace* %15, %struct.pid_namespace** %3, align 8
  %16 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %17 = call i32 @get_pid_ns(%struct.pid_namespace* %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = call i32 @task_unlock(%struct.task_struct* %19)
  %21 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %22 = icmp ne %struct.pid_namespace* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = call i32 @read_lock(i32* @tasklist_lock)
  %25 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %26 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %31 = call i32 @put_pid_ns(%struct.pid_namespace* %30)
  store %struct.pid_namespace* null, %struct.pid_namespace** %3, align 8
  br label %32

32:                                               ; preds = %29, %23
  %33 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %34

34:                                               ; preds = %32, %18
  %35 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %36 = icmp ne %struct.pid_namespace* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %39 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %38, i32 0, i32 0
  br label %41

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi %struct.ns_common* [ %39, %37 ], [ null, %40 ]
  ret %struct.ns_common* %42
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @put_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
