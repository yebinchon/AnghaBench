; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-inject.c_perf_event__repipe_exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-inject.c_perf_event__repipe_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.machine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*)* @perf_event__repipe_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__repipe_exit(%struct.perf_tool* %0, %union.perf_event* %1, %struct.perf_sample* %2, %struct.machine* %3) #0 {
  %5 = alloca %struct.perf_tool*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  store %struct.machine* %3, %struct.machine** %8, align 8
  %10 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %11 = load %union.perf_event*, %union.perf_event** %6, align 8
  %12 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %13 = load %struct.machine*, %struct.machine** %8, align 8
  %14 = call i32 @perf_event__process_exit(%struct.perf_tool* %10, %union.perf_event* %11, %struct.perf_sample* %12, %struct.machine* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %16 = load %union.perf_event*, %union.perf_event** %6, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %18 = load %struct.machine*, %struct.machine** %8, align 8
  %19 = call i32 @perf_event__repipe(%struct.perf_tool* %15, %union.perf_event* %16, %struct.perf_sample* %17, %struct.machine* %18)
  %20 = load i32, i32* %9, align 4
  ret i32 %20
}

declare dso_local i32 @perf_event__process_exit(%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*) #1

declare dso_local i32 @perf_event__repipe(%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
