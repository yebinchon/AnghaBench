; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_tracepoint_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_add_tracepoint_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { i32 }
%struct.bt_ctf_event_class = type { i32 }
%struct.bt_ctf_event = type { i32 }
%struct.evsel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tep_format_field*, %struct.tep_format_field* }
%struct.tep_format_field = type { i32 }
%struct.perf_sample = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*, %struct.bt_ctf_event_class*, %struct.bt_ctf_event*, %struct.evsel*, %struct.perf_sample*)* @add_tracepoint_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tracepoint_values(%struct.ctf_writer* %0, %struct.bt_ctf_event_class* %1, %struct.bt_ctf_event* %2, %struct.evsel* %3, %struct.perf_sample* %4) #0 {
  %6 = alloca %struct.ctf_writer*, align 8
  %7 = alloca %struct.bt_ctf_event_class*, align 8
  %8 = alloca %struct.bt_ctf_event*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca %struct.tep_format_field*, align 8
  %12 = alloca %struct.tep_format_field*, align 8
  %13 = alloca i32, align 4
  store %struct.ctf_writer* %0, %struct.ctf_writer** %6, align 8
  store %struct.bt_ctf_event_class* %1, %struct.bt_ctf_event_class** %7, align 8
  store %struct.bt_ctf_event* %2, %struct.bt_ctf_event** %8, align 8
  store %struct.evsel* %3, %struct.evsel** %9, align 8
  store %struct.perf_sample* %4, %struct.perf_sample** %10, align 8
  %14 = load %struct.evsel*, %struct.evsel** %9, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.tep_format_field*, %struct.tep_format_field** %18, align 8
  store %struct.tep_format_field* %19, %struct.tep_format_field** %11, align 8
  %20 = load %struct.evsel*, %struct.evsel** %9, align 8
  %21 = getelementptr inbounds %struct.evsel, %struct.evsel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.tep_format_field*, %struct.tep_format_field** %24, align 8
  store %struct.tep_format_field* %25, %struct.tep_format_field** %12, align 8
  %26 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %27 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %28 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %8, align 8
  %29 = load %struct.tep_format_field*, %struct.tep_format_field** %11, align 8
  %30 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %31 = call i32 @add_tracepoint_fields_values(%struct.ctf_writer* %26, %struct.bt_ctf_event_class* %27, %struct.bt_ctf_event* %28, %struct.tep_format_field* %29, %struct.perf_sample* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %5
  %35 = load %struct.ctf_writer*, %struct.ctf_writer** %6, align 8
  %36 = load %struct.bt_ctf_event_class*, %struct.bt_ctf_event_class** %7, align 8
  %37 = load %struct.bt_ctf_event*, %struct.bt_ctf_event** %8, align 8
  %38 = load %struct.tep_format_field*, %struct.tep_format_field** %12, align 8
  %39 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %40 = call i32 @add_tracepoint_fields_values(%struct.ctf_writer* %35, %struct.bt_ctf_event_class* %36, %struct.bt_ctf_event* %37, %struct.tep_format_field* %38, %struct.perf_sample* %39)
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %34, %5
  %42 = load i32, i32* %13, align 4
  ret i32 %42
}

declare dso_local i32 @add_tracepoint_fields_values(%struct.ctf_writer*, %struct.bt_ctf_event_class*, %struct.bt_ctf_event*, %struct.tep_format_field*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
