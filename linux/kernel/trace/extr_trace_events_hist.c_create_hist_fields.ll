; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_hist_fields.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_hist_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32 }
%struct.trace_event_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, %struct.trace_event_file*)* @create_hist_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_hist_fields(%struct.hist_trigger_data* %0, %struct.trace_event_file* %1) #0 {
  %3 = alloca %struct.hist_trigger_data*, align 8
  %4 = alloca %struct.trace_event_file*, align 8
  %5 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %3, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %4, align 8
  %6 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %7 = call i32 @parse_var_defs(%struct.hist_trigger_data* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %13 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %14 = call i32 @create_val_fields(%struct.hist_trigger_data* %12, %struct.trace_event_file* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %33

18:                                               ; preds = %11
  %19 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %20 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %21 = call i32 @create_var_fields(%struct.hist_trigger_data* %19, %struct.trace_event_file* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %33

25:                                               ; preds = %18
  %26 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %27 = load %struct.trace_event_file*, %struct.trace_event_file** %4, align 8
  %28 = call i32 @create_key_fields(%struct.hist_trigger_data* %26, %struct.trace_event_file* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %31, %24, %17, %10
  %34 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %35 = call i32 @free_var_defs(%struct.hist_trigger_data* %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @parse_var_defs(%struct.hist_trigger_data*) #1

declare dso_local i32 @create_val_fields(%struct.hist_trigger_data*, %struct.trace_event_file*) #1

declare dso_local i32 @create_var_fields(%struct.hist_trigger_data*, %struct.trace_event_file*) #1

declare dso_local i32 @create_key_fields(%struct.hist_trigger_data*, %struct.trace_event_file*) #1

declare dso_local i32 @free_var_defs(%struct.hist_trigger_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
