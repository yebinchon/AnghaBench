; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_sched_getaffinity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c_sched_getaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.task_struct = type { i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@cpu_active_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sched_getaffinity(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cpumask* %1, %struct.cpumask** %4, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load i32, i32* @ESRCH, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.task_struct* @find_process_by_pid(i32 %11)
  store %struct.task_struct* %12, %struct.task_struct** %5, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = call i32 @security_task_getscheduler(%struct.task_struct* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @raw_spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  %30 = load i32, i32* @cpu_active_mask, align 4
  %31 = call i32 @cpumask_and(%struct.cpumask* %27, i32* %29, i32 %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %22, %21, %15
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  ret i64 %39
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_process_by_pid(i32) #1

declare dso_local i32 @security_task_getscheduler(%struct.task_struct*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, i32*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
