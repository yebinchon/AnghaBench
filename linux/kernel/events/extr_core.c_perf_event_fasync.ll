; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_fasync.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fasync_struct = type { i32 }
%struct.perf_event = type { %struct.fasync_struct*, %struct.perf_event* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fasync_struct** (%struct.perf_event*)* @perf_event_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fasync_struct** @perf_event_fasync(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %3 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %3, i32 0, i32 1
  %5 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %6 = icmp ne %struct.perf_event* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  store %struct.perf_event* %10, %struct.perf_event** %2, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  ret %struct.fasync_struct** %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
