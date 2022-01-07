; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_perl_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_perl_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.addr_location = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.addr_location*)* @perl_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perl_process_event(%union.perf_event* %0, %struct.perf_sample* %1, %struct.evsel* %2, %struct.addr_location* %3) #0 {
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.addr_location*, align 8
  store %union.perf_event* %0, %union.perf_event** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store %struct.evsel* %2, %struct.evsel** %7, align 8
  store %struct.addr_location* %3, %struct.addr_location** %8, align 8
  %9 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %10 = load %struct.evsel*, %struct.evsel** %7, align 8
  %11 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %12 = call i32 @perl_process_tracepoint(%struct.perf_sample* %9, %struct.evsel* %10, %struct.addr_location* %11)
  %13 = load %union.perf_event*, %union.perf_event** %5, align 8
  %14 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %15 = load %struct.evsel*, %struct.evsel** %7, align 8
  %16 = call i32 @perl_process_event_generic(%union.perf_event* %13, %struct.perf_sample* %14, %struct.evsel* %15)
  ret void
}

declare dso_local i32 @perl_process_tracepoint(%struct.perf_sample*, %struct.evsel*, %struct.addr_location*) #1

declare dso_local i32 @perl_process_event_generic(%union.perf_event*, %struct.perf_sample*, %struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
