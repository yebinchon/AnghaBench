; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_tracepoint_fields_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_tracepoint_fields_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { i32 }
%struct.bt_ctf_event_class = type { i32 }
%struct.bt_ctf_event = type { i32 }
%struct.tep_format_field = type { %struct.tep_format_field* }
%struct.perf_sample = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.bt_ctf_event_class*, %struct.bt_ctf_event*, %struct.tep_format_field*, %struct.perf_sample*)* @add_tracepoint_fields_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint_fields_values(%struct.ctf_writer* %0, %struct.bt_ctf_event_class* %1, %struct.bt_ctf_event* %2, %struct.tep_format_field* %3, %struct.perf_sample* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctf_writer*, align 8
  %8 = alloca %struct.bt_ctf_event_class*, align 8
  %9 = alloca %struct.bt_ctf_event*, align 8
  %10 = alloca %struct.tep_format_field*, align 8
  %11 = alloca %struct.perf_sample*, align 8
  %12 = alloca %struct.tep_format_field*, align 8
  %13 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %7, align 8
  store %struct.bt_ctf_event_class* %1, %struct.bt_ctf_event_class** %8, align 8
  store %struct.bt_ctf_event* %2, %struct.bt_ctf_event** %9, align 8
  store %struct.tep_format_field* %3, %struct.tep_format_field** %10, align 8
  store %struct.perf_sample* %4, %struct.perf_sample** %11, align 8
  %14 = load %struct.tep_format_field*, %struct.tep_format_field** %10, align 8
  store %struct.tep_format_field* %14, %struct.tep_format_field** %12, align 8
  br label %15

15:                                               ; preds = %29, %5
  %16 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %17 = icmp ne %struct.tep_format_field* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.ctf_writer*, %struct.ctf_writer** %7, align 8
  %20 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %8, align 8
  %21 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %9, align 8
  %22 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %23 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %24 = call i32 @add_tracepoint_field_value(%struct.ctf_writer* %19, %struct.bt_ctf_event_class* %20, %struct.bt_ctf_event* %21, %struct.perf_sample* %22, %struct.tep_format_field* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %34

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %31 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %30, i32 0, i32 0
  %32 = load %struct.tep_format_field*, %struct.tep_format_field** %31, align 8
  store %struct.tep_format_field* %32, %struct.tep_format_field** %12, align 8
  br label %15

33:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @add_tracepoint_field_value(%struct.ctf_writer*, %struct.bt_ctf_event_class*, %struct.bt_ctf_event*, %struct.perf_sample*, %struct.tep_format_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
