; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__add_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_queues = type { i32 }
%struct.perf_session = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.auxtrace_buffer = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_queues__add_event(%struct.auxtrace_queues* %0, %struct.perf_session* %1, %union.perf_event* %2, i32 %3, %struct.auxtrace_buffer** %4) #0 {
  %6 = alloca %struct.auxtrace_queues*, align 8
  %7 = alloca %struct.perf_session*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auxtrace_buffer**, align 8
  %11 = alloca %struct.auxtrace_buffer, align 4
  %12 = alloca i32, align 4
  store %struct.auxtrace_queues* %0, %struct.auxtrace_queues** %6, align 8
  store %struct.perf_session* %1, %struct.perf_session** %7, align 8
  store %union.perf_event* %2, %union.perf_event** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.auxtrace_buffer** %4, %struct.auxtrace_buffer*** %10, align 8
  %13 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %11, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %11, i32 0, i32 1
  %15 = load %union.perf_event*, %union.perf_event** %8, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %11, i32 0, i32 2
  %20 = load %union.perf_event*, %union.perf_event** %8, align 8
  %21 = bitcast %union.perf_event* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %19, align 4
  %24 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %11, i32 0, i32 3
  %25 = load %union.perf_event*, %union.perf_event** %8, align 8
  %26 = bitcast %union.perf_event* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %24, align 4
  %29 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %11, i32 0, i32 4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %11, i32 0, i32 5
  %32 = load %union.perf_event*, %union.perf_event** %8, align 8
  %33 = bitcast %union.perf_event* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %11, i32 0, i32 6
  %37 = load %union.perf_event*, %union.perf_event** %8, align 8
  %38 = bitcast %union.perf_event* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %36, align 4
  %41 = load %union.perf_event*, %union.perf_event** %8, align 8
  %42 = bitcast %union.perf_event* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %6, align 8
  %46 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.auxtrace_buffer**, %struct.auxtrace_buffer*** %10, align 8
  %49 = call i32 @auxtrace_queues__add_buffer(%struct.auxtrace_queues* %45, %struct.perf_session* %46, i32 %47, %struct.auxtrace_buffer* %11, %struct.auxtrace_buffer** %48)
  ret i32 %49
}

declare dso_local i32 @auxtrace_queues__add_buffer(%struct.auxtrace_queues*, %struct.perf_session*, i32, %struct.auxtrace_buffer*, %struct.auxtrace_buffer**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
