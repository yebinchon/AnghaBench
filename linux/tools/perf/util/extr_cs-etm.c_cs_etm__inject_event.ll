; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__inject_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__inject_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_sample = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.perf_event*, %struct.perf_sample*, i32)* @cs_etm__inject_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__inject_event(%union.perf_event* %0, %struct.perf_sample* %1, i32 %2) #0 {
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i32, align 4
  store %union.perf_event* %0, %union.perf_event** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @perf_event__sample_event_size(%struct.perf_sample* %7, i32 %8, i32 0)
  %10 = load %union.perf_event*, %union.perf_event** %4, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %union.perf_event*, %union.perf_event** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %16 = call i32 @perf_event__synthesize_sample(%union.perf_event* %13, i32 %14, i32 0, %struct.perf_sample* %15)
  ret i32 %16
}

declare dso_local i32 @perf_event__sample_event_size(%struct.perf_sample*, i32, i32) #1

declare dso_local i32 @perf_event__synthesize_sample(%union.perf_event*, i32, i32, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
