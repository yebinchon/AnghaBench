; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__new_pgfault.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__new_pgfault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32 }

@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@trace__pgfault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evsel* (i32)* @perf_evsel__new_pgfault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evsel* @perf_evsel__new_pgfault(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.perf_event_attr, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 2
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 3
  %9 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %2, align 4
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = call i32 @event_attr_init(%struct.perf_event_attr* %4)
  %14 = call %struct.evsel* @evsel__new(%struct.perf_event_attr* %4)
  store %struct.evsel* %14, %struct.evsel** %3, align 8
  %15 = load %struct.evsel*, %struct.evsel** %3, align 8
  %16 = icmp ne %struct.evsel* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @trace__pgfault, align 4
  %19 = load %struct.evsel*, %struct.evsel** %3, align 8
  %20 = getelementptr inbounds %struct.evsel, %struct.evsel* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.evsel*, %struct.evsel** %3, align 8
  ret %struct.evsel* %22
}

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local %struct.evsel* @evsel__new(%struct.perf_event_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
