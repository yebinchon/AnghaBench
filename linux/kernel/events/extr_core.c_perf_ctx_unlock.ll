; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_ctx_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_ctx_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_cpu_context*, %struct.perf_event_context*)* @perf_ctx_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_ctx_unlock(%struct.perf_cpu_context* %0, %struct.perf_event_context* %1) #0 {
  %3 = alloca %struct.perf_cpu_context*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_cpu_context* %0, %struct.perf_cpu_context** %3, align 8
  store %struct.perf_event_context* %1, %struct.perf_event_context** %4, align 8
  %5 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %6 = icmp ne %struct.perf_event_context* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %8, i32 0, i32 0
  %10 = call i32 @raw_spin_unlock(i32* %9)
  br label %11

11:                                               ; preds = %7, %2
  %12 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %3, align 8
  %13 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @raw_spin_unlock(i32* %14)
  ret void
}

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
