; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c___create_val_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c___create_val_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i64, i32, %struct.hist_field** }
%struct.hist_field = type { i32 }
%struct.trace_event_file = type { i32 }

@TRACING_MAP_VALS_MAX = common dso_local global i64 0, align 8
@TRACING_MAP_VARS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, i32, %struct.trace_event_file*, i8*, i8*, i64)* @__create_val_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__create_val_field(%struct.hist_trigger_data* %0, i32 %1, %struct.trace_event_file* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.hist_trigger_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.trace_event_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hist_field*, align 8
  %14 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.trace_event_file* %2, %struct.trace_event_file** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %16 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call %struct.hist_field* @parse_expr(%struct.hist_trigger_data* %15, %struct.trace_event_file* %16, i8* %17, i64 %18, i8* %19, i32 0)
  store %struct.hist_field* %20, %struct.hist_field** %13, align 8
  %21 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %22 = call i64 @IS_ERR(%struct.hist_field* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %26 = call i32 @PTR_ERR(%struct.hist_field* %25)
  store i32 %26, i32* %14, align 4
  br label %57

27:                                               ; preds = %6
  %28 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %29 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %30 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %29, i32 0, i32 2
  %31 = load %struct.hist_field**, %struct.hist_field*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %31, i64 %33
  store %struct.hist_field* %28, %struct.hist_field** %34, align 8
  %35 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %36 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %40 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %44 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TRACING_MAP_VALS_MAX, align 8
  %47 = load i64, i64* @TRACING_MAP_VARS_MAX, align 8
  %48 = add nsw i64 %46, %47
  %49 = icmp sgt i64 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %27
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %53, %27
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i32, i32* %14, align 4
  ret i32 %58
}

declare dso_local %struct.hist_field* @parse_expr(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hist_field*) #1

declare dso_local i32 @PTR_ERR(%struct.hist_field*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
