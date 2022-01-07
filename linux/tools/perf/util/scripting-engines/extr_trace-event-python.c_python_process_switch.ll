; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_switch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_python_process_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tables = type { i32, i64 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.machine = type { i32 }

@tables_global = common dso_local global %struct.tables zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, %struct.perf_sample*, %struct.machine*)* @python_process_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @python_process_switch(%union.perf_event* %0, %struct.perf_sample* %1, %struct.machine* %2) #0 {
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.machine*, align 8
  %7 = alloca %struct.tables*, align 8
  store %union.perf_event* %0, %union.perf_event** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store %struct.machine* %2, %struct.machine** %6, align 8
  store %struct.tables* @tables_global, %struct.tables** %7, align 8
  %8 = load %struct.tables*, %struct.tables** %7, align 8
  %9 = getelementptr inbounds %struct.tables, %struct.tables* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.tables*, %struct.tables** %7, align 8
  %14 = getelementptr inbounds %struct.tables, %struct.tables* %13, i32 0, i32 0
  %15 = load %union.perf_event*, %union.perf_event** %4, align 8
  %16 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %17 = load %struct.machine*, %struct.machine** %6, align 8
  %18 = call i32 @db_export__switch(i32* %14, %union.perf_event* %15, %struct.perf_sample* %16, %struct.machine* %17)
  br label %19

19:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @db_export__switch(i32*, %union.perf_event*, %struct.perf_sample*, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
