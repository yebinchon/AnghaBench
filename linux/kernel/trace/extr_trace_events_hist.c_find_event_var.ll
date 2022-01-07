; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_find_event_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_find_event_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }
%struct.hist_trigger_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.trace_event_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, i8*, i8*, i8*)* @find_event_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @find_event_var(%struct.hist_trigger_data* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hist_field*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.trace_array*, align 8
  %11 = alloca %struct.hist_field*, align 8
  %12 = alloca %struct.trace_event_file*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %14 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  store %struct.trace_array* %17, %struct.trace_array** %10, align 8
  store %struct.hist_field* null, %struct.hist_field** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %20, %4
  %24 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.hist_field* @find_match_var(%struct.hist_trigger_data* %24, i8* %25)
  store %struct.hist_field* %26, %struct.hist_field** %11, align 8
  %27 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %28 = call i64 @IS_ERR(%struct.hist_field* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %51

31:                                               ; preds = %23
  %32 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  %33 = icmp ne %struct.hist_field* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  store %struct.hist_field* %35, %struct.hist_field** %5, align 8
  br label %51

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call %struct.trace_event_file* @find_var_file(%struct.trace_array* %38, i8* %39, i8* %40, i8* %41)
  store %struct.trace_event_file* %42, %struct.trace_event_file** %12, align 8
  %43 = load %struct.trace_event_file*, %struct.trace_event_file** %12, align 8
  %44 = icmp ne %struct.trace_event_file* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store %struct.hist_field* null, %struct.hist_field** %5, align 8
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.trace_event_file*, %struct.trace_event_file** %12, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call %struct.hist_field* @find_file_var(%struct.trace_event_file* %47, i8* %48)
  store %struct.hist_field* %49, %struct.hist_field** %11, align 8
  %50 = load %struct.hist_field*, %struct.hist_field** %11, align 8
  store %struct.hist_field* %50, %struct.hist_field** %5, align 8
  br label %51

51:                                               ; preds = %46, %45, %34, %30
  %52 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  ret %struct.hist_field* %52
}

declare dso_local %struct.hist_field* @find_match_var(%struct.hist_trigger_data*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.hist_field*) #1

declare dso_local %struct.trace_event_file* @find_var_file(%struct.trace_array*, i8*, i8*, i8*) #1

declare dso_local %struct.hist_field* @find_file_var(%struct.trace_event_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
