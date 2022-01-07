; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_event_hist_trigger_named_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_event_hist_trigger_named_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_trigger_ops = type { i32 }
%struct.event_trigger_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_trigger_ops*, %struct.event_trigger_data*)* @event_hist_trigger_named_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_hist_trigger_named_free(%struct.event_trigger_ops* %0, %struct.event_trigger_data* %1) #0 {
  %3 = alloca %struct.event_trigger_ops*, align 8
  %4 = alloca %struct.event_trigger_data*, align 8
  store %struct.event_trigger_ops* %0, %struct.event_trigger_ops** %3, align 8
  store %struct.event_trigger_data* %1, %struct.event_trigger_data** %4, align 8
  %5 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %6 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sle i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON_ONCE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.event_trigger_ops*, %struct.event_trigger_ops** %3, align 8
  %15 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %16 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @event_hist_trigger_free(%struct.event_trigger_ops* %14, i32 %17)
  %19 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %20 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %24 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %13
  %28 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %29 = call i32 @del_named_trigger(%struct.event_trigger_data* %28)
  %30 = load %struct.event_trigger_data*, %struct.event_trigger_data** %4, align 8
  %31 = call i32 @trigger_data_free(%struct.event_trigger_data* %30)
  br label %32

32:                                               ; preds = %12, %27, %13
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @event_hist_trigger_free(%struct.event_trigger_ops*, i32) #1

declare dso_local i32 @del_named_trigger(%struct.event_trigger_data*) #1

declare dso_local i32 @trigger_data_free(%struct.event_trigger_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
