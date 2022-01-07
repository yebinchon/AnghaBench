; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_ctx_lock_double.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_ctx_lock_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.perf_event_context* }
%struct.perf_event_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event_context* (%struct.perf_event*, %struct.perf_event_context*)* @__perf_event_ctx_lock_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event_context* @__perf_event_ctx_lock_double(%struct.perf_event* %0, %struct.perf_event_context* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %4, align 8
  br label %6

6:                                                ; preds = %30, %16, %2
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %11 = call %struct.perf_event_context* @READ_ONCE(%struct.perf_event_context* %10)
  store %struct.perf_event_context* %11, %struct.perf_event_context** %5, align 8
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %13 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %12, i32 0, i32 1
  %14 = call i32 @refcount_inc_not_zero(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = call i32 (...) @rcu_read_unlock()
  br label %6

18:                                               ; preds = %6
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %21 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %20, i32 0, i32 0
  %22 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock_double(i32* %21, i32* %23)
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = load %struct.perf_event_context*, %struct.perf_event_context** %26, align 8
  %28 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %29 = icmp ne %struct.perf_event_context* %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %18
  %31 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %32 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %35 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %38 = call i32 @put_ctx(%struct.perf_event_context* %37)
  br label %6

39:                                               ; preds = %18
  %40 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  ret %struct.perf_event_context* %40
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.perf_event_context* @READ_ONCE(%struct.perf_event_context*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_lock_double(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_ctx(%struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
