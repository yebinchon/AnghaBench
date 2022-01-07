; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @proc_pid_lookup(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.dentry* @ERR_PTR(i32 %10)
  store %struct.dentry* %11, %struct.dentry** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = call i32 @name_to_int(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.pid_namespace*, %struct.pid_namespace** %22, align 8
  store %struct.pid_namespace* %23, %struct.pid_namespace** %7, align 8
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %27 = call %struct.task_struct* @find_task_by_pid_ns(i32 %25, %struct.pid_namespace* %26)
  store %struct.task_struct* %27, %struct.task_struct** %5, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = icmp ne %struct.task_struct* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %32 = call i32 @get_task_struct(%struct.task_struct* %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %36 = icmp ne %struct.task_struct* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %44

38:                                               ; preds = %33
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = call %struct.dentry* @proc_pid_instantiate(%struct.dentry* %39, %struct.task_struct* %40, i32* null)
  store %struct.dentry* %41, %struct.dentry** %8, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = call i32 @put_task_struct(%struct.task_struct* %42)
  br label %44

44:                                               ; preds = %38, %37, %17
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  ret %struct.dentry* %45
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @name_to_int(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.dentry* @proc_pid_instantiate(%struct.dentry*, %struct.task_struct*, i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
