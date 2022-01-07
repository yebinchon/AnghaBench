; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_release_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_release_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, %struct.task_struct* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i64 0, align 8
@EXIT_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_task(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  br label %5

5:                                                ; preds = %62, %1
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = call %struct.TYPE_4__* @__task_cred(%struct.task_struct* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @atomic_dec(i32* %11)
  %13 = call i32 (...) @rcu_read_unlock()
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = call i32 @proc_flush_task(%struct.task_struct* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = call i32 @cgroup_release(%struct.task_struct* %16)
  %18 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = call i32 @ptrace_release_task(%struct.task_struct* %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = call i32 @__exit_signal(%struct.task_struct* %21)
  store i32 0, i32* %4, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 2
  %25 = load %struct.task_struct*, %struct.task_struct** %24, align 8
  store %struct.task_struct* %25, %struct.task_struct** %3, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = icmp ne %struct.task_struct* %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %5
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = call i64 @thread_group_empty(%struct.task_struct* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EXIT_ZOMBIE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @do_notify_parent(%struct.task_struct* %40, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i64, i64* @EXIT_DEAD, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %51, %33, %29, %5
  %53 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %54 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %55 = call i32 @release_thread(%struct.task_struct* %54)
  %56 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %57 = call i32 @put_task_struct_rcu_user(%struct.task_struct* %56)
  %58 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  store %struct.task_struct* %58, %struct.task_struct** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %5

63:                                               ; preds = %52
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_4__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @proc_flush_task(%struct.task_struct*) #1

declare dso_local i32 @cgroup_release(%struct.task_struct*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @ptrace_release_task(%struct.task_struct*) #1

declare dso_local i32 @__exit_signal(%struct.task_struct*) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @do_notify_parent(%struct.task_struct*, i32) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @release_thread(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct_rcu_user(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
