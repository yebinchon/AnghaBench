; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_run_queues.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_run_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer_cpu_base = type { i32, i32, i32 }

@hrtimer_bases = common dso_local global i32 0, align 4
@KTIME_MAX = common dso_local global i32 0, align 4
@HRTIMER_SOFTIRQ = common dso_local global i32 0, align 4
@HRTIMER_ACTIVE_HARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hrtimer_run_queues() #0 {
  %1 = alloca %struct.hrtimer_cpu_base*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.hrtimer_cpu_base* @this_cpu_ptr(i32* @hrtimer_bases)
  store %struct.hrtimer_cpu_base* %4, %struct.hrtimer_cpu_base** %1, align 8
  %5 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %1, align 8
  %6 = call i64 @__hrtimer_hres_active(%struct.hrtimer_cpu_base* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %49

9:                                                ; preds = %0
  %10 = call i32 (...) @hrtimer_is_hres_enabled()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @tick_check_oneshot_change(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = call i32 (...) @hrtimer_switch_to_hres()
  br label %49

18:                                               ; preds = %9
  %19 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %1, align 8
  %20 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %19, i32 0, i32 1
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @raw_spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %1, align 8
  %24 = call i32 @hrtimer_update_base(%struct.hrtimer_cpu_base* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %1, align 8
  %27 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ktime_before(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @KTIME_MAX, align 4
  %33 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %1, align 8
  %34 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %1, align 8
  %36 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @HRTIMER_SOFTIRQ, align 4
  %38 = call i32 @raise_softirq_irqoff(i32 %37)
  br label %39

39:                                               ; preds = %31, %18
  %40 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %1, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i64, i64* %2, align 8
  %43 = load i32, i32* @HRTIMER_ACTIVE_HARD, align 4
  %44 = call i32 @__hrtimer_run_queues(%struct.hrtimer_cpu_base* %40, i32 %41, i64 %42, i32 %43)
  %45 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %1, align 8
  %46 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %45, i32 0, i32 1
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @raw_spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %39, %16, %8
  ret void
}

declare dso_local %struct.hrtimer_cpu_base* @this_cpu_ptr(i32*) #1

declare dso_local i64 @__hrtimer_hres_active(%struct.hrtimer_cpu_base*) #1

declare dso_local i64 @tick_check_oneshot_change(i32) #1

declare dso_local i32 @hrtimer_is_hres_enabled(...) #1

declare dso_local i32 @hrtimer_switch_to_hres(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hrtimer_update_base(%struct.hrtimer_cpu_base*) #1

declare dso_local i32 @ktime_before(i32, i32) #1

declare dso_local i32 @raise_softirq_irqoff(i32) #1

declare dso_local i32 @__hrtimer_run_queues(%struct.hrtimer_cpu_base*, i32, i64, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
