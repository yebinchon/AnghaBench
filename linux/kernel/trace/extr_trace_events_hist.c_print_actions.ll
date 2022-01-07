; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_actions.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.action_data** }
%struct.action_data = type { i64, i64 }
%struct.tracing_map_elt = type { i32 }

@ACTION_SNAPSHOT = common dso_local global i64 0, align 8
@HANDLER_ONMAX = common dso_local global i64 0, align 8
@HANDLER_ONCHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.hist_trigger_data*, %struct.tracing_map_elt*)* @print_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_actions(%struct.seq_file* %0, %struct.hist_trigger_data* %1, %struct.tracing_map_elt* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca %struct.tracing_map_elt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.action_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %5, align 8
  store %struct.tracing_map_elt* %2, %struct.tracing_map_elt** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %48, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %12 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %9
  %16 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %17 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %16, i32 0, i32 1
  %18 = load %struct.action_data**, %struct.action_data*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.action_data*, %struct.action_data** %18, i64 %20
  %22 = load %struct.action_data*, %struct.action_data** %21, align 8
  store %struct.action_data* %22, %struct.action_data** %8, align 8
  %23 = load %struct.action_data*, %struct.action_data** %8, align 8
  %24 = getelementptr inbounds %struct.action_data, %struct.action_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACTION_SNAPSHOT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %48

29:                                               ; preds = %15
  %30 = load %struct.action_data*, %struct.action_data** %8, align 8
  %31 = getelementptr inbounds %struct.action_data, %struct.action_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HANDLER_ONMAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.action_data*, %struct.action_data** %8, align 8
  %37 = getelementptr inbounds %struct.action_data, %struct.action_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HANDLER_ONCHANGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35, %29
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %44 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %6, align 8
  %45 = load %struct.action_data*, %struct.action_data** %8, align 8
  %46 = call i32 @track_data_print(%struct.seq_file* %42, %struct.hist_trigger_data* %43, %struct.tracing_map_elt* %44, %struct.action_data* %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %9

51:                                               ; preds = %9
  ret void
}

declare dso_local i32 @track_data_print(%struct.seq_file*, %struct.hist_trigger_data*, %struct.tracing_map_elt*, %struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
