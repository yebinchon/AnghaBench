; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_trace_action_find_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_trace_action_find_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }
%struct.hist_trigger_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.action_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@HANDLER_ONMATCH = common dso_local global i64 0, align 8
@HIST_ERR_PARAM_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.action_data*, i8*, i8*, i8*)* @trace_action_find_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @trace_action_find_var(%struct.hist_trigger_data* %0, %struct.action_data* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca %struct.action_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.trace_array*, align 8
  %12 = alloca %struct.hist_field*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store %struct.action_data* %1, %struct.action_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %14 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  store %struct.trace_array* %17, %struct.trace_array** %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %10, align 8
  %20 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call %struct.hist_field* @find_target_event_var(%struct.hist_trigger_data* %20, i8* %21, i8* %22, i8* %23)
  store %struct.hist_field* %24, %struct.hist_field** %12, align 8
  %25 = load %struct.hist_field*, %struct.hist_field** %12, align 8
  %26 = icmp ne %struct.hist_field* %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load %struct.action_data*, %struct.action_data** %7, align 8
  %32 = getelementptr inbounds %struct.action_data, %struct.action_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HANDLER_ONMATCH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.action_data*, %struct.action_data** %7, align 8
  %38 = getelementptr inbounds %struct.action_data, %struct.action_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  %41 = load %struct.action_data*, %struct.action_data** %7, align 8
  %42 = getelementptr inbounds %struct.action_data, %struct.action_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %36, %30, %27
  %46 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call %struct.hist_field* @find_event_var(%struct.hist_trigger_data* %46, i8* %47, i8* %48, i8* %49)
  store %struct.hist_field* %50, %struct.hist_field** %12, align 8
  br label %51

51:                                               ; preds = %45, %5
  %52 = load %struct.hist_field*, %struct.hist_field** %12, align 8
  %53 = icmp ne %struct.hist_field* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.trace_array*, %struct.trace_array** %11, align 8
  %56 = load i32, i32* @HIST_ERR_PARAM_NOT_FOUND, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @errpos(i8* %57)
  %59 = call i32 @hist_err(%struct.trace_array* %55, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load %struct.hist_field*, %struct.hist_field** %12, align 8
  ret %struct.hist_field* %61
}

declare dso_local %struct.hist_field* @find_target_event_var(%struct.hist_trigger_data*, i8*, i8*, i8*) #1

declare dso_local %struct.hist_field* @find_event_var(%struct.hist_trigger_data*, i8*, i8*, i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
