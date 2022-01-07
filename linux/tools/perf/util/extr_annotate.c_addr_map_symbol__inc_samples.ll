; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_addr_map_symbol__inc_samples.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_addr_map_symbol__inc_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_map_symbol = type { i32, i32, i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_map_symbol__inc_samples(%struct.addr_map_symbol* %0, %struct.perf_sample* %1, %struct.evsel* %2) #0 {
  %4 = alloca %struct.addr_map_symbol*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.evsel*, align 8
  store %struct.addr_map_symbol* %0, %struct.addr_map_symbol** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store %struct.evsel* %2, %struct.evsel** %6, align 8
  %7 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %4, align 8
  %8 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %4, align 8
  %11 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.evsel*, %struct.evsel** %6, align 8
  %14 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %4, align 8
  %15 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %18 = call i32 @symbol__inc_addr_samples(i32 %9, i32 %12, %struct.evsel* %13, i32 %16, %struct.perf_sample* %17)
  ret i32 %18
}

declare dso_local i32 @symbol__inc_addr_samples(i32, i32, %struct.evsel*, i32, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
