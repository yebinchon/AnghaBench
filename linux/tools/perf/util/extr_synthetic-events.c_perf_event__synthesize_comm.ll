; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__synthesize_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__synthesize_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { i32 }
%struct.machine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_comm(%struct.perf_tool* %0, %union.perf_event* %1, i32 %2, i32 %3, %struct.machine* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_tool*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.machine*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %7, align 8
  store %union.perf_event* %1, %union.perf_event** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.machine* %4, %struct.machine** %11, align 8
  %14 = load %union.perf_event*, %union.perf_event** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.machine*, %struct.machine** %11, align 8
  %17 = call i64 @perf_event__prepare_comm(%union.perf_event* %14, i32 %15, %struct.machine* %16, i32* %12, i32* %13)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %30

20:                                               ; preds = %5
  %21 = load %struct.perf_tool*, %struct.perf_tool** %7, align 8
  %22 = load %union.perf_event*, %union.perf_event** %8, align 8
  %23 = load %struct.machine*, %struct.machine** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @perf_tool__process_synth_event(%struct.perf_tool* %21, %union.perf_event* %22, %struct.machine* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %27, %19
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i64 @perf_event__prepare_comm(%union.perf_event*, i32, %struct.machine*, i32*, i32*) #1

declare dso_local i64 @perf_tool__process_synth_event(%struct.perf_tool*, %union.perf_event*, %struct.machine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
