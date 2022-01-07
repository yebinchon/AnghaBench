; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_cpu_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_cpu_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@rcu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"Start CPU kthread@rcu_wait\00", align 1
@RCU_KTHREAD_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"End CPU kthread@rcu_wait\00", align 1
@RCU_KTHREAD_WAITING = common dso_local global i32 0, align 4
@RCU_KTHREAD_YIELDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Start CPU kthread@rcu_yield\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"End CPU kthread@rcu_yield\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rcu_cpu_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_cpu_kthread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i8* @this_cpu_ptr(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_data, i32 0, i32 1))
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %3, align 8
  %9 = call i8* @this_cpu_ptr(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_data, i32 0, i32 0))
  store i8* %9, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = call i32 @TPS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @trace_rcu_utilization(i32 %14)
  %16 = call i32 (...) @local_bh_disable()
  %17 = load i32, i32* @RCU_KTHREAD_RUNNING, align 4
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %19 = call i32 (...) @local_irq_disable()
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %4, align 1
  %22 = load i8*, i8** %5, align 8
  store i8 0, i8* %22, align 1
  %23 = call i32 (...) @local_irq_enable()
  %24 = load i8, i8* %4, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = call i32 (...) @rcu_core()
  br label %28

28:                                               ; preds = %26, %13
  %29 = call i32 (...) @local_bh_enable()
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = call i32 @TPS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @trace_rcu_utilization(i32 %35)
  %37 = load i32, i32* @RCU_KTHREAD_WAITING, align 4
  %38 = load i32*, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  br label %53

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %10

43:                                               ; preds = %10
  %44 = load i32, i32* @RCU_KTHREAD_YIELDING, align 4
  %45 = load i32*, i32** %3, align 8
  store i32 %44, i32* %45, align 4
  %46 = call i32 @TPS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @trace_rcu_utilization(i32 %46)
  %48 = call i32 @schedule_timeout_interruptible(i32 2)
  %49 = call i32 @TPS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @trace_rcu_utilization(i32 %49)
  %51 = load i32, i32* @RCU_KTHREAD_WAITING, align 4
  %52 = load i32*, i32** %3, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %34
  ret void
}

declare dso_local i8* @this_cpu_ptr(i32*) #1

declare dso_local i32 @trace_rcu_utilization(i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @rcu_core(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
