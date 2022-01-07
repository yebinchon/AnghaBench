; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_idle.c_play_idle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_idle.c_play_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.idle_timer = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@SCHED_FIFO = common dso_local global i64 0, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@PF_NO_SETAFFINITY = common dso_local global i32 0, align 4
@PF_IDLE = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@idle_inject_timer_fn = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_idle(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.idle_timer, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SCHED_FIFO, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PF_KTHREAD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON_ONCE(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PF_NO_SETAFFINITY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load i64, i64* %2, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON_ONCE(i32 %38)
  %40 = call i32 (...) @rcu_sleep_check()
  %41 = call i32 (...) @preempt_disable()
  %42 = load i32, i32* @PF_IDLE, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = call i32 @cpuidle_use_deepest_state(i32 1)
  %48 = getelementptr inbounds %struct.idle_timer, %struct.idle_timer* %3, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.idle_timer, %struct.idle_timer* %3, i32 0, i32 1
  %50 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %51 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %52 = call i32 @hrtimer_init_on_stack(%struct.TYPE_4__* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @idle_inject_timer_fn, align 4
  %54 = getelementptr inbounds %struct.idle_timer, %struct.idle_timer* %3, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = getelementptr inbounds %struct.idle_timer, %struct.idle_timer* %3, i32 0, i32 1
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* @NSEC_PER_USEC, align 8
  %59 = mul i64 %57, %58
  %60 = call i32 @ns_to_ktime(i64 %59)
  %61 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %62 = call i32 @hrtimer_start(%struct.TYPE_4__* %56, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %69, %1
  %64 = getelementptr inbounds %struct.idle_timer, %struct.idle_timer* %3, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @READ_ONCE(i64 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (...) @do_idle()
  br label %63

71:                                               ; preds = %63
  %72 = call i32 @cpuidle_use_deepest_state(i32 0)
  %73 = load i32, i32* @PF_IDLE, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = call i32 (...) @preempt_fold_need_resched()
  %80 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_sleep_check(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpuidle_use_deepest_state(i32) #1

declare dso_local i32 @hrtimer_init_on_stack(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hrtimer_start(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i64) #1

declare dso_local i32 @READ_ONCE(i64) #1

declare dso_local i32 @do_idle(...) #1

declare dso_local i32 @preempt_fold_need_resched(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
