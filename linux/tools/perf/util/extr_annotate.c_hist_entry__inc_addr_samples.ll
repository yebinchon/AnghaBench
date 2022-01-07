; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_hist_entry__inc_addr_samples.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_hist_entry__inc_addr_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hist_entry__inc_addr_samples(%struct.hist_entry* %0, %struct.perf_sample* %1, %struct.evsel* %2, i32 %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store %struct.evsel* %2, %struct.evsel** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %10 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.evsel*, %struct.evsel** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %20 = call i32 @symbol__inc_addr_samples(i32 %12, i32 %16, %struct.evsel* %17, i32 %18, %struct.perf_sample* %19)
  ret i32 %20
}

declare dso_local i32 @symbol__inc_addr_samples(i32, i32, %struct.evsel*, i32, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
