; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_spin.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i32, i32, i32, i64 }
%struct.hrtimer_sleeper = type { i32, i64 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktgen_dev*, i32)* @spin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spin(%struct.pktgen_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pktgen_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hrtimer_sleeper, align 8
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %10 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %11 = call i32 @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* %8, i32 %9, i32 %10)
  %12 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @hrtimer_set_expires(i32* %12, i32 %13)
  %15 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %16 = call i32 @hrtimer_expires_remaining(i32* %15)
  %17 = call i32 @ktime_to_ns(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %78

21:                                               ; preds = %2
  %22 = call i32 (...) @ktime_get()
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 100000
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %28, %25
  %27 = call i32 (...) @ktime_get()
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @ktime_compare(i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %26, label %33

33:                                               ; preds = %28
  br label %69

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %37 = call i32 @set_current_state(i32 %36)
  %38 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %39 = call i32 @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* %8, i32 %38)
  %40 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @likely(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 (...) @schedule()
  br label %46

46:                                               ; preds = %44, %35
  %47 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %48 = call i32 @hrtimer_cancel(i32* %47)
  br label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @current, align 4
  %60 = call i32 @signal_pending(i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %58, %53, %49
  %64 = phi i1 [ false, %53 ], [ false, %49 ], [ %62, %58 ]
  br i1 %64, label %35, label %65

65:                                               ; preds = %63
  %66 = load i32, i32* @TASK_RUNNING, align 4
  %67 = call i32 @__set_current_state(i32 %66)
  %68 = call i32 (...) @ktime_get()
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %33
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ktime_sub(i32 %70, i32 %71)
  %73 = call i32 @ktime_to_ns(i32 %72)
  %74 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %69, %20
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %81 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ktime_add_ns(i32 %79, i32 %82)
  %84 = load %struct.pktgen_dev*, %struct.pktgen_dev** %3, align 8
  %85 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %8, i32 0, i32 0
  %87 = call i32 @destroy_hrtimer_on_stack(i32* %86)
  ret void
}

declare dso_local i32 @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper*, i32, i32) #1

declare dso_local i32 @hrtimer_set_expires(i32*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @hrtimer_expires_remaining(i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper*, i32) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @destroy_hrtimer_on_stack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
