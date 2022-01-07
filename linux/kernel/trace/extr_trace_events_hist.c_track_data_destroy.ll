; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { %struct.trace_event_file* }
%struct.trace_event_file = type { i32 }
%struct.action_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.track_data = type { %struct.hist_trigger_data* }

@ACTION_SNAPSHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_data*, %struct.action_data*)* @track_data_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @track_data_destroy(%struct.hist_trigger_data* %0, %struct.action_data* %1) #0 {
  %3 = alloca %struct.hist_trigger_data*, align 8
  %4 = alloca %struct.action_data*, align 8
  %5 = alloca %struct.trace_event_file*, align 8
  %6 = alloca %struct.track_data*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %3, align 8
  store %struct.action_data* %1, %struct.action_data** %4, align 8
  %7 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %8 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %7, i32 0, i32 0
  %9 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  store %struct.trace_event_file* %9, %struct.trace_event_file** %5, align 8
  %10 = load %struct.action_data*, %struct.action_data** %4, align 8
  %11 = getelementptr inbounds %struct.action_data, %struct.action_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @destroy_hist_field(i32 %13, i32 0)
  %15 = load %struct.action_data*, %struct.action_data** %4, align 8
  %16 = getelementptr inbounds %struct.action_data, %struct.action_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACTION_SNAPSHOT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %22 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.track_data* @tracing_cond_snapshot_data(i32 %23)
  store %struct.track_data* %24, %struct.track_data** %6, align 8
  %25 = load %struct.track_data*, %struct.track_data** %6, align 8
  %26 = icmp ne %struct.track_data* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.track_data*, %struct.track_data** %6, align 8
  %29 = getelementptr inbounds %struct.track_data, %struct.track_data* %28, i32 0, i32 0
  %30 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %29, align 8
  %31 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %32 = icmp eq %struct.hist_trigger_data* %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %35 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tracing_snapshot_cond_disable(i32 %36)
  %38 = load %struct.track_data*, %struct.track_data** %6, align 8
  %39 = call i32 @track_data_free(%struct.track_data* %38)
  br label %40

40:                                               ; preds = %33, %27, %20
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.action_data*, %struct.action_data** %4, align 8
  %43 = getelementptr inbounds %struct.action_data, %struct.action_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.action_data*, %struct.action_data** %4, align 8
  %48 = call i32 @action_data_destroy(%struct.action_data* %47)
  ret void
}

declare dso_local i32 @destroy_hist_field(i32, i32) #1

declare dso_local %struct.track_data* @tracing_cond_snapshot_data(i32) #1

declare dso_local i32 @tracing_snapshot_cond_disable(i32) #1

declare dso_local i32 @track_data_free(%struct.track_data*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @action_data_destroy(%struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
