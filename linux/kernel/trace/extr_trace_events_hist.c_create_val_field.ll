; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_val_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_val_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32 }
%struct.trace_event_file = type { i32 }

@TRACING_MAP_VALS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, i32, %struct.trace_event_file*, i8*)* @create_val_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_val_field(%struct.hist_trigger_data* %0, i32 %1, %struct.trace_event_file* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_event_file*, align 8
  %9 = alloca i8*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.trace_event_file* %2, %struct.trace_event_file** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @TRACING_MAP_VALS_MAX, align 4
  %12 = icmp uge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @__create_val_field(%struct.hist_trigger_data* %20, i32 %21, %struct.trace_event_file* %22, i32* null, i8* %23, i32 0)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__create_val_field(%struct.hist_trigger_data*, i32, %struct.trace_event_file*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
