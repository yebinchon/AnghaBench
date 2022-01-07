; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_event_hist_trigger_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_event_hist_trigger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_trigger_ops = type { i32 }
%struct.event_trigger_data = type { i32, %struct.hist_trigger_data* }
%struct.hist_trigger_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_trigger_ops*, %struct.event_trigger_data*)* @event_hist_trigger_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_hist_trigger_init(%struct.event_trigger_ops* %0, %struct.event_trigger_data* %1) #0 {
  %3 = alloca %struct.event_trigger_ops*, align 8
  %4 = alloca %struct.event_trigger_data*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  store %struct.event_trigger_ops* %0, %struct.event_trigger_ops** %3, align 8
  store %struct.event_trigger_data* %1, %struct.event_trigger_data** %4, align 8
  %6 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %7 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %6, i32 0, i32 1
  %8 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  store %struct.hist_trigger_data* %8, %struct.hist_trigger_data** %5, align 8
  %9 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %10 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %15 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %22 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %27 = call i32 @save_named_trigger(i64 %25, %struct.event_trigger_data* %26)
  br label %28

28:                                               ; preds = %20, %13, %2
  %29 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %30 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  ret i32 0
}

declare dso_local i32 @save_named_trigger(i64, %struct.event_trigger_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
