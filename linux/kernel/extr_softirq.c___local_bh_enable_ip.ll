; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_softirq.c___local_bh_enable_ip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_softirq.c___local_bh_enable_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOFTIRQ_DISABLE_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__local_bh_enable_ip(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @in_irq()
  %6 = call i32 @WARN_ON_ONCE(i32 %5)
  %7 = call i32 (...) @lockdep_assert_irqs_enabled()
  %8 = call i64 (...) @softirq_count()
  %9 = load i64, i64* @SOFTIRQ_DISABLE_OFFSET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @trace_softirqs_on(i64 %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %4, align 4
  %16 = sub i32 %15, 1
  %17 = call i32 @preempt_count_sub(i32 %16)
  %18 = call i32 (...) @in_interrupt()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = call i64 (...) @local_softirq_pending()
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @do_softirq()
  br label %30

30:                                               ; preds = %28, %23
  %31 = call i32 (...) @preempt_count_dec()
  %32 = call i32 (...) @preempt_check_resched()
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i32 @lockdep_assert_irqs_enabled(...) #1

declare dso_local i64 @softirq_count(...) #1

declare dso_local i32 @trace_softirqs_on(i64) #1

declare dso_local i32 @preempt_count_sub(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @local_softirq_pending(...) #1

declare dso_local i32 @do_softirq(...) #1

declare dso_local i32 @preempt_count_dec(...) #1

declare dso_local i32 @preempt_check_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
