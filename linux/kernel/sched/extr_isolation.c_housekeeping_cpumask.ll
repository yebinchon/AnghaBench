; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_isolation.c_housekeeping_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_isolation.c_housekeeping_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@housekeeping_overridden = common dso_local global i32 0, align 4
@housekeeping_flags = common dso_local global i32 0, align 4
@housekeeping_mask = common dso_local global %struct.cpumask* null, align 8
@cpu_possible_mask = common dso_local global %struct.cpumask* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpumask* @housekeeping_cpumask(i32 %0) #0 {
  %2 = alloca %struct.cpumask*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 @static_branch_unlikely(i32* @housekeeping_overridden)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* @housekeeping_flags, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load %struct.cpumask*, %struct.cpumask** @housekeeping_mask, align 8
  store %struct.cpumask* %12, %struct.cpumask** %2, align 8
  br label %16

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.cpumask*, %struct.cpumask** @cpu_possible_mask, align 8
  store %struct.cpumask* %15, %struct.cpumask** %2, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load %struct.cpumask*, %struct.cpumask** %2, align 8
  ret %struct.cpumask* %17
}

declare dso_local i64 @static_branch_unlikely(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
