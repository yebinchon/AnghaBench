; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_init_idle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_init_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rq = type { i32, i32, %struct.task_struct* }

@TASK_RUNNING = common dso_local global i32 0, align 4
@PF_IDLE = common dso_local global i32 0, align 4
@TASK_ON_RQ_QUEUED = common dso_local global i32 0, align 4
@idle_sched_class = common dso_local global i32 0, align 4
@INIT_TASK_COMM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_idle(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rq*, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.rq* @cpu_rq(i32 %7)
  store %struct.rq* %8, %struct.rq** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 3
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.rq*, %struct.rq** %5, align 8
  %14 = getelementptr inbounds %struct.rq, %struct.rq* %13, i32 0, i32 0
  %15 = call i32 @raw_spin_lock(i32* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = call i32 @__sched_fork(i32 0, %struct.task_struct* %16)
  %18 = load i32, i32* @TASK_RUNNING, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = call i32 (...) @sched_clock()
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @PF_IDLE, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = call i32 @kasan_unpoison_task_stack(%struct.task_struct* %30)
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @__set_task_cpu(%struct.task_struct* %33, i32 %34)
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = load %struct.rq*, %struct.rq** %5, align 8
  %39 = getelementptr inbounds %struct.rq, %struct.rq* %38, i32 0, i32 2
  store %struct.task_struct* %37, %struct.task_struct** %39, align 8
  %40 = load %struct.rq*, %struct.rq** %5, align 8
  %41 = getelementptr inbounds %struct.rq, %struct.rq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %44 = call i32 @rcu_assign_pointer(i32 %42, %struct.task_struct* %43)
  %45 = load i32, i32* @TASK_ON_RQ_QUEUED, align 4
  %46 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rq*, %struct.rq** %5, align 8
  %49 = getelementptr inbounds %struct.rq, %struct.rq* %48, i32 0, i32 0
  %50 = call i32 @raw_spin_unlock(i32* %49)
  %51 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 3
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @raw_spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @init_idle_preempt_count(%struct.task_struct* %55, i32 %56)
  %58 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 2
  store i32* @idle_sched_class, i32** %59, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ftrace_graph_init_idle_task(%struct.task_struct* %60, i32 %61)
  %63 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @vtime_init_idle(%struct.task_struct* %63, i32 %64)
  ret void
}

declare dso_local %struct.rq* @cpu_rq(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @__sched_fork(i32, %struct.task_struct*) #1

declare dso_local i32 @sched_clock(...) #1

declare dso_local i32 @kasan_unpoison_task_stack(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__set_task_cpu(%struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.task_struct*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_idle_preempt_count(%struct.task_struct*, i32) #1

declare dso_local i32 @ftrace_graph_init_idle_task(%struct.task_struct*, i32) #1

declare dso_local i32 @vtime_init_idle(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
