; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_isolation.c_housekeeping_any_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_isolation.c_housekeeping_any_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@housekeeping_overridden = common dso_local global i32 0, align 4
@housekeeping_flags = common dso_local global i32 0, align 4
@housekeeping_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @housekeeping_any_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i64 @static_branch_unlikely(i32* @housekeeping_overridden)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i32, i32* @housekeeping_flags, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load i32, i32* @housekeeping_mask, align 4
  %14 = call i32 (...) @smp_processor_id()
  %15 = call i32 @sched_numa_find_closest(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @nr_cpu_ids, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %12
  %22 = load i32, i32* @housekeeping_mask, align 4
  %23 = load i32, i32* @cpu_online_mask, align 4
  %24 = call i32 @cpumask_any_and(i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %25, %1
  %27 = call i32 (...) @smp_processor_id()
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %21, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @sched_numa_find_closest(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_any_and(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
