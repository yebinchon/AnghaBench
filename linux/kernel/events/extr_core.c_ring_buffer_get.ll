; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ring_buffer_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_ring_buffer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32 }
%struct.perf_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer* @ring_buffer_get(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.ring_buffer*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ring_buffer* @rcu_dereference(i32 %7)
  store %struct.ring_buffer* %8, %struct.ring_buffer** %3, align 8
  %9 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %10 = icmp ne %struct.ring_buffer* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %12, i32 0, i32 0
  %14 = call i32 @refcount_inc_not_zero(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.ring_buffer* null, %struct.ring_buffer** %3, align 8
  br label %17

17:                                               ; preds = %16, %11
  br label %18

18:                                               ; preds = %17, %1
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  ret %struct.ring_buffer* %20
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ring_buffer* @rcu_dereference(i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
