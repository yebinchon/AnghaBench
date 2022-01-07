; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_workqueue_set_unbound_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_workqueue_set_unbound_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@wq_unbound_cpumask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @workqueue_set_unbound_cpumask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @zalloc_cpumask_var(i32* %5, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @cpu_possible_mask, align 4
  %18 = call i32 @cpumask_and(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @cpumask_empty(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %14
  %23 = call i32 (...) @apply_wqattrs_lock()
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @wq_unbound_cpumask, align 4
  %26 = call i32 @cpumask_copy(i32 %24, i32 %25)
  %27 = load i32, i32* @wq_unbound_cpumask, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @cpumask_copy(i32 %27, i32 %28)
  %30 = call i32 (...) @workqueue_apply_unbound_cpumask()
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @wq_unbound_cpumask, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cpumask_copy(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %22
  %38 = call i32 (...) @apply_wqattrs_unlock()
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @free_cpumask_var(i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_and(i32, i32, i32) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @apply_wqattrs_lock(...) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @workqueue_apply_unbound_cpumask(...) #1

declare dso_local i32 @apply_wqattrs_unlock(...) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
