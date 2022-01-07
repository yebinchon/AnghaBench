; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_find_target_event_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_find_target_event_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }
%struct.hist_trigger_data = type { %struct.trace_event_file* }
%struct.trace_event_file = type { %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, i8*, i8*, i8*)* @find_target_event_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @find_target_event_var(%struct.hist_trigger_data* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hist_field*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.trace_event_file*, align 8
  %11 = alloca %struct.hist_field*, align 8
  %12 = alloca %struct.trace_event_call*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %14 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %13, i32 0, i32 0
  %15 = load %struct.trace_event_file*, %struct.trace_event_file** %14, align 8
  store %struct.trace_event_file* %15, %struct.trace_event_file** %10, align 8
  store %struct.hist_field* null, %struct.hist_field** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %48

22:                                               ; preds = %18
  %23 = load %struct.trace_event_file*, %struct.trace_event_file** %10, align 8
  %24 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %23, i32 0, i32 0
  %25 = load %struct.trace_event_call*, %struct.trace_event_call** %24, align 8
  store %struct.trace_event_call* %25, %struct.trace_event_call** %12, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.trace_event_call*, %struct.trace_event_call** %12, align 8
  %28 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strcmp(i8* %26, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %48

35:                                               ; preds = %22
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.trace_event_call*, %struct.trace_event_call** %12, align 8
  %38 = call i32 @trace_event_name(%struct.trace_event_call* %37)
  %39 = call i64 @strcmp(i8* %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %48

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %4
  %44 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call %struct.hist_field* @find_var_field(%struct.hist_trigger_data* %44, i8* %45)
  store %struct.hist_field* %46, %struct.hist_field** %11, align 8
  %47 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  store %struct.hist_field* %47, %struct.hist_field** %5, align 8
  br label %48

48:                                               ; preds = %43, %41, %34, %21
  %49 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  ret %struct.hist_field* %49
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @trace_event_name(%struct.trace_event_call*) #1

declare dso_local %struct.hist_field* @find_var_field(%struct.hist_trigger_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
