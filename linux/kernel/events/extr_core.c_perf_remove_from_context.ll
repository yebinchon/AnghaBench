; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_remove_from_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_remove_from_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.perf_event_context* }
%struct.perf_event_context = type { i32, i32 }

@__perf_remove_from_context = common dso_local global i32 0, align 4
@PERF_ATTACH_CONTEXT = common dso_local global i32 0, align 4
@DETACH_GROUP = common dso_local global i64 0, align 8
@PERF_ATTACH_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i64)* @perf_remove_from_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_remove_from_context(%struct.perf_event* %0, i64 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  %8 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  store %struct.perf_event_context* %8, %struct.perf_event_context** %5, align 8
  %9 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = load i32, i32* @__perf_remove_from_context, align 4
  %14 = load i64, i64* %4, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @event_function_call(%struct.perf_event* %12, i32 %13, i8* %15)
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PERF_ATTACH_CONTEXT, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @DETACH_GROUP, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PERF_ATTACH_GROUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %36 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %35, i32 0, i32 0
  %37 = call i32 @raw_spin_lock_irq(i32* %36)
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = call i32 @perf_group_detach(%struct.perf_event* %38)
  %40 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %41 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %40, i32 0, i32 0
  %42 = call i32 @raw_spin_unlock_irq(i32* %41)
  br label %43

43:                                               ; preds = %34, %27, %2
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @event_function_call(%struct.perf_event*, i32, i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @perf_group_detach(%struct.perf_event*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
