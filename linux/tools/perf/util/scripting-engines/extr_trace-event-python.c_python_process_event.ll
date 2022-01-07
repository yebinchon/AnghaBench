; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tables = type { i32, i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.addr_location = type { i32 }

@tables_global = common dso_local global %struct.tables zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.addr_location*)* @python_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @python_process_event(%union.perf_event* %0, %struct.perf_sample* %1, %struct.evsel* %2, %struct.addr_location* %3) #0 {
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.addr_location*, align 8
  %9 = alloca %struct.tables*, align 8
  store %union.perf_event* %0, %union.perf_event** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store %struct.evsel* %2, %struct.evsel** %7, align 8
  store %struct.addr_location* %3, %struct.addr_location** %8, align 8
  store %struct.tables* @tables_global, %struct.tables** %9, align 8
  %10 = load %struct.evsel*, %struct.evsel** %7, align 8
  %11 = getelementptr inbounds %struct.evsel, %struct.evsel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %20 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %17 = load %struct.evsel*, %struct.evsel** %7, align 8
  %18 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %19 = call i32 @python_process_tracepoint(%struct.perf_sample* %16, %struct.evsel* %17, %struct.addr_location* %18)
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.tables*, %struct.tables** %9, align 8
  %22 = getelementptr inbounds %struct.tables, %struct.tables* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.tables*, %struct.tables** %9, align 8
  %27 = getelementptr inbounds %struct.tables, %struct.tables* %26, i32 0, i32 0
  %28 = load %union.perf_event*, %union.perf_event** %5, align 8
  %29 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %30 = load %struct.evsel*, %struct.evsel** %7, align 8
  %31 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %32 = call i32 @db_export__sample(i32* %27, %union.perf_event* %28, %struct.perf_sample* %29, %struct.evsel* %30, %struct.addr_location* %31)
  br label %38

33:                                               ; preds = %20
  %34 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %35 = load %struct.evsel*, %struct.evsel** %7, align 8
  %36 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %37 = call i32 @python_process_general_event(%struct.perf_sample* %34, %struct.evsel* %35, %struct.addr_location* %36)
  br label %38

38:                                               ; preds = %33, %25
  br label %39

39:                                               ; preds = %38, %15
  ret void
}

declare dso_local i32 @python_process_tracepoint(%struct.perf_sample*, %struct.evsel*, %struct.addr_location*) #1

declare dso_local i32 @db_export__sample(i32*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.addr_location*) #1

declare dso_local i32 @python_process_general_event(%struct.perf_sample*, %struct.evsel*, %struct.addr_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
