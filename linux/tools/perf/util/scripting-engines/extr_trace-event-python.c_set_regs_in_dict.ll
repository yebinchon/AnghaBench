; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_set_regs_in_dict.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_set_regs_in_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, i32 }
%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"iregs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"uregs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.perf_sample*, %struct.evsel*)* @set_regs_in_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_regs_in_dict(i32* %0, %struct.perf_sample* %1, %struct.evsel* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  %8 = alloca [512 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store %struct.evsel* %2, %struct.evsel** %6, align 8
  %9 = load %struct.evsel*, %struct.evsel** %6, align 8
  %10 = getelementptr inbounds %struct.evsel, %struct.evsel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.perf_event_attr* %11, %struct.perf_event_attr** %7, align 8
  %12 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %13 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %12, i32 0, i32 1
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %18 = call i32 @regs_map(i32* %13, i32 %16, i8* %17, i32 512)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %21 = call i32 @_PyUnicode_FromString(i8* %20)
  %22 = call i32 @pydict_set_item_string_decref(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %24 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %23, i32 0, i32 0
  %25 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %29 = call i32 @regs_map(i32* %24, i32 %27, i8* %28, i32 512)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %32 = call i32 @_PyUnicode_FromString(i8* %31)
  %33 = call i32 @pydict_set_item_string_decref(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i32 @regs_map(i32*, i32, i8*, i32) #1

declare dso_local i32 @pydict_set_item_string_decref(i32*, i8*, i32) #1

declare dso_local i32 @_PyUnicode_FromString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
