; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_actions_spec.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_actions_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.action_data** }
%struct.action_data = type { i64 }

@HANDLER_ONMATCH = common dso_local global i64 0, align 8
@HANDLER_ONMAX = common dso_local global i64 0, align 8
@HANDLER_ONCHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.hist_trigger_data*)* @print_actions_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_actions_spec(%struct.seq_file* %0, %struct.hist_trigger_data* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.hist_trigger_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.action_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %50, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %10 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %7
  %14 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %15 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %14, i32 0, i32 1
  %16 = load %struct.action_data**, %struct.action_data*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.action_data*, %struct.action_data** %16, i64 %18
  %20 = load %struct.action_data*, %struct.action_data** %19, align 8
  store %struct.action_data* %20, %struct.action_data** %6, align 8
  %21 = load %struct.action_data*, %struct.action_data** %6, align 8
  %22 = getelementptr inbounds %struct.action_data, %struct.action_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HANDLER_ONMATCH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %29 = load %struct.action_data*, %struct.action_data** %6, align 8
  %30 = call i32 @print_onmatch_spec(%struct.seq_file* %27, %struct.hist_trigger_data* %28, %struct.action_data* %29)
  br label %49

31:                                               ; preds = %13
  %32 = load %struct.action_data*, %struct.action_data** %6, align 8
  %33 = getelementptr inbounds %struct.action_data, %struct.action_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HANDLER_ONMAX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.action_data*, %struct.action_data** %6, align 8
  %39 = getelementptr inbounds %struct.action_data, %struct.action_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HANDLER_ONCHANGE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37, %31
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %46 = load %struct.action_data*, %struct.action_data** %6, align 8
  %47 = call i32 @print_track_data_spec(%struct.seq_file* %44, %struct.hist_trigger_data* %45, %struct.action_data* %46)
  br label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %7

53:                                               ; preds = %7
  ret void
}

declare dso_local i32 @print_onmatch_spec(%struct.seq_file*, %struct.hist_trigger_data*, %struct.action_data*) #1

declare dso_local i32 @print_track_data_spec(%struct.seq_file*, %struct.hist_trigger_data*, %struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
