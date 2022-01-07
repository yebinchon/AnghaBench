; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_stall.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"rcu_torture_stall task started\00", align 1
@stall_cpu_holdoff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"rcu_torture_stall begin holdoff\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rcu_torture_stall end holdoff\00", align 1
@stall_cpu = common dso_local global i64 0, align 8
@stall_cpu_irqsoff = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"rcu_torture_stall start on CPU %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"rcu_torture_stall end.\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"rcu_torture_stall\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_torture_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_torture_stall(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @stall_cpu_holdoff, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @stall_cpu_holdoff, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 %9, %10
  %12 = call i32 @schedule_timeout_interruptible(i32 %11)
  %13 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %7, %1
  %15 = call i32 (...) @kthread_should_stop()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = call i64 (...) @ktime_get_seconds()
  %19 = load i64, i64* @stall_cpu, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %3, align 8
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load i64, i64* @stall_cpu_irqsoff, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 (...) @local_irq_disable()
  br label %28

26:                                               ; preds = %17
  %27 = call i32 (...) @preempt_disable()
  br label %28

28:                                               ; preds = %26, %24
  %29 = call i32 (...) @smp_processor_id()
  %30 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %36, %28
  %32 = call i64 (...) @ktime_get_seconds()
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @ULONG_CMP_LT(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %31

37:                                               ; preds = %31
  %38 = load i64, i64* @stall_cpu_irqsoff, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (...) @local_irq_enable()
  br label %44

42:                                               ; preds = %37
  %43 = call i32 (...) @preempt_enable()
  br label %44

44:                                               ; preds = %42, %40
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %14
  %48 = call i32 @torture_shutdown_absorb(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %53, %47
  %50 = call i32 (...) @kthread_should_stop()
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 10, %54
  %56 = call i32 @schedule_timeout_interruptible(i32 %55)
  br label %49

57:                                               ; preds = %49
  ret i32 0
}

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @torture_shutdown_absorb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
