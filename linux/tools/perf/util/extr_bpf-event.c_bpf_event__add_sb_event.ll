; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_bpf_event__add_sb_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_bpf_event__add_sb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.perf_env = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32, i32 }

@PERF_COUNT_SW_DUMMY = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@bpf_event__sb_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_event__add_sb_event(%struct.evlist** %0, %struct.perf_env* %1) #0 {
  %3 = alloca %struct.evlist**, align 8
  %4 = alloca %struct.perf_env*, align 8
  %5 = alloca %struct.perf_event_attr, align 4
  store %struct.evlist** %0, %struct.evlist*** %3, align 8
  store %struct.perf_env* %1, %struct.perf_env** %4, align 8
  %6 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 2
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 3
  store i32 28, i32* %9, align 4
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 4
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 5
  %12 = load i32, i32* @PERF_COUNT_SW_DUMMY, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 6
  %14 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 4
  store i32 1, i32* %15, align 4
  %16 = load %struct.evlist**, %struct.evlist*** %3, align 8
  %17 = load i32, i32* @bpf_event__sb_cb, align 4
  %18 = load %struct.perf_env*, %struct.perf_env** %4, align 8
  %19 = call i32 @perf_evlist__add_sb_event(%struct.evlist** %16, %struct.perf_event_attr* %5, i32 %17, %struct.perf_env* %18)
  ret i32 %19
}

declare dso_local i32 @perf_evlist__add_sb_event(%struct.evlist**, %struct.perf_event_attr*, i32, %struct.perf_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
