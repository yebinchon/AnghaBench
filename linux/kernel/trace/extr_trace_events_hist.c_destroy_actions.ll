; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_destroy_actions.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_destroy_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, %struct.action_data** }
%struct.action_data = type { i64 }

@HANDLER_ONMATCH = common dso_local global i64 0, align 8
@HANDLER_ONMAX = common dso_local global i64 0, align 8
@HANDLER_ONCHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_trigger_data*)* @destroy_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_actions(%struct.hist_trigger_data* %0) #0 {
  %2 = alloca %struct.hist_trigger_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.action_data*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %48, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %8 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %5
  %12 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %13 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %12, i32 0, i32 1
  %14 = load %struct.action_data**, %struct.action_data*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.action_data*, %struct.action_data** %14, i64 %16
  %18 = load %struct.action_data*, %struct.action_data** %17, align 8
  store %struct.action_data* %18, %struct.action_data** %4, align 8
  %19 = load %struct.action_data*, %struct.action_data** %4, align 8
  %20 = getelementptr inbounds %struct.action_data, %struct.action_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HANDLER_ONMATCH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.action_data*, %struct.action_data** %4, align 8
  %26 = call i32 @onmatch_destroy(%struct.action_data* %25)
  br label %47

27:                                               ; preds = %11
  %28 = load %struct.action_data*, %struct.action_data** %4, align 8
  %29 = getelementptr inbounds %struct.action_data, %struct.action_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HANDLER_ONMAX, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.action_data*, %struct.action_data** %4, align 8
  %35 = getelementptr inbounds %struct.action_data, %struct.action_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HANDLER_ONCHANGE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33, %27
  %40 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %41 = load %struct.action_data*, %struct.action_data** %4, align 8
  %42 = call i32 @track_data_destroy(%struct.hist_trigger_data* %40, %struct.action_data* %41)
  br label %46

43:                                               ; preds = %33
  %44 = load %struct.action_data*, %struct.action_data** %4, align 8
  %45 = call i32 @kfree(%struct.action_data* %44)
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %5

51:                                               ; preds = %5
  ret void
}

declare dso_local i32 @onmatch_destroy(%struct.action_data*) #1

declare dso_local i32 @track_data_destroy(%struct.hist_trigger_data*, %struct.action_data*) #1

declare dso_local i32 @kfree(%struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
