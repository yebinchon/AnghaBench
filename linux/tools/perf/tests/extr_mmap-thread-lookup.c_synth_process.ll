; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_synth_process.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_synth_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.perf_thread_map = type { i32 }

@perf_event__process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*)* @synth_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_process(%struct.machine* %0) #0 {
  %2 = alloca %struct.machine*, align 8
  %3 = alloca %struct.perf_thread_map*, align 8
  %4 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %2, align 8
  %5 = call i32 (...) @getpid()
  %6 = call %struct.perf_thread_map* @thread_map__new_by_pid(i32 %5)
  store %struct.perf_thread_map* %6, %struct.perf_thread_map** %3, align 8
  %7 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %8 = load i32, i32* @perf_event__process, align 4
  %9 = load %struct.machine*, %struct.machine** %2, align 8
  %10 = call i32 @perf_event__synthesize_thread_map(i32* null, %struct.perf_thread_map* %7, i32 %8, %struct.machine* %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %12 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %11)
  %13 = load i32, i32* %4, align 4
  ret i32 %13
}

declare dso_local %struct.perf_thread_map* @thread_map__new_by_pid(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @perf_event__synthesize_thread_map(i32*, %struct.perf_thread_map*, i32, %struct.machine*, i32) #1

declare dso_local i32 @perf_thread_map__put(%struct.perf_thread_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
