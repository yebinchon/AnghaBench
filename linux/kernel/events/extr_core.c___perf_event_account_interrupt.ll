; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_account_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_account_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, %struct.hw_perf_event }
%struct.TYPE_2__ = type { i64 }
%struct.hw_perf_event = type { i64, i32, i64, i32 }

@perf_throttled_seq = common dso_local global i32 0, align 4
@max_samples_per_tick = common dso_local global i32 0, align 4
@perf_throttled_count = common dso_local global i32 0, align 4
@TICK_DEP_BIT_PERF_EVENTS = common dso_local global i32 0, align 4
@MAX_INTERRUPTS = common dso_local global i32 0, align 4
@TICK_NSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @__perf_event_account_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_event_account_interrupt(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @perf_throttled_seq, align 4
  %13 = call i64 @__this_cpu_read(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %34 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @max_samples_per_tick, align 4
  %37 = icmp sge i32 %35, %36
  br label %38

38:                                               ; preds = %32, %25
  %39 = phi i1 [ false, %25 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i32, i32* @perf_throttled_count, align 4
  %45 = call i32 @__this_cpu_inc(i32 %44)
  %46 = call i32 (...) @smp_processor_id()
  %47 = load i32, i32* @TICK_DEP_BIT_PERF_EVENTS, align 4
  %48 = call i32 @tick_dep_set_cpu(i32 %46, i32 %47)
  %49 = load i32, i32* @MAX_INTERRUPTS, align 4
  %50 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %51 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %53 = call i32 @perf_log_throttle(%struct.perf_event* %52, i32 0)
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %43, %38
  br label %55

55:                                               ; preds = %54, %19
  %56 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = call i64 (...) @perf_clock()
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %65 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %71 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %61
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @TICK_NSEC, align 4
  %77 = mul nsw i32 2, %76
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %83 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @perf_adjust_period(%struct.perf_event* %80, i32 %81, i32 %84, i32 1)
  br label %86

86:                                               ; preds = %79, %74, %61
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i32 @tick_dep_set_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @perf_log_throttle(%struct.perf_event*, i32) #1

declare dso_local i64 @perf_clock(...) #1

declare dso_local i32 @perf_adjust_period(%struct.perf_event*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
