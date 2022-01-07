; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_select_unbound_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_select_unbound_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wq_select_unbound_cpu.printed_dbg_warning = internal global i32 0, align 4
@wq_debug_force_rr_cpu = common dso_local global i32 0, align 4
@wq_unbound_cpumask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"workqueue: round-robin CPU selection forced, expect performance impact\0A\00", align 1
@wq_rr_cpu_last = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wq_select_unbound_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wq_select_unbound_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @wq_debug_force_rr_cpu, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @wq_unbound_cpumask, align 4
  %14 = call i64 @cpumask_test_cpu(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %11
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @wq_select_unbound_cpu.printed_dbg_warning, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @wq_select_unbound_cpu.printed_dbg_warning, align 4
  br label %24

24:                                               ; preds = %22, %19
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* @wq_unbound_cpumask, align 4
  %27 = call i64 @cpumask_empty(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %25
  %32 = load i32, i32* @wq_rr_cpu_last, align 4
  %33 = call i32 @__this_cpu_read(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @wq_unbound_cpumask, align 4
  %36 = load i32, i32* @cpu_online_mask, align 4
  %37 = call i32 @cpumask_next_and(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @nr_cpu_ids, align 4
  %40 = icmp sge i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %31
  %45 = load i32, i32* @wq_unbound_cpumask, align 4
  %46 = load i32, i32* @cpu_online_mask, align 4
  %47 = call i32 @cpumask_first_and(i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @nr_cpu_ids, align 4
  %50 = icmp sge i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %2, align 4
  br label %62

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* @wq_rr_cpu_last, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @__this_cpu_write(i32 %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %54, %29, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @cpumask_empty(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @cpumask_next_and(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_first_and(i32, i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
