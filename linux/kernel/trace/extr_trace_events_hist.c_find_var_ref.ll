; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_find_var_ref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_find_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.hist_field** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.hist_trigger_data*, i32)* @find_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @find_var_ref(%struct.hist_trigger_data* %0, %struct.hist_trigger_data* %1, i32 %2) #0 {
  %4 = alloca %struct.hist_field*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hist_field*, align 8
  %9 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %5, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %13 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %18 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %17, i32 0, i32 1
  %19 = load %struct.hist_field**, %struct.hist_field*** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %19, i64 %21
  %23 = load %struct.hist_field*, %struct.hist_field** %22, align 8
  store %struct.hist_field* %23, %struct.hist_field** %8, align 8
  %24 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %25 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @check_field_for_var_ref(%struct.hist_field* %24, %struct.hist_trigger_data* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  store %struct.hist_field* %30, %struct.hist_field** %4, align 8
  br label %36

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %10

35:                                               ; preds = %10
  store %struct.hist_field* null, %struct.hist_field** %4, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  ret %struct.hist_field* %37
}

declare dso_local i64 @check_field_for_var_ref(%struct.hist_field*, %struct.hist_trigger_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
