; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__calc_id_pos.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__calc_id_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__calc_id_pos(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  %3 = load %struct.evsel*, %struct.evsel** %2, align 8
  %4 = getelementptr inbounds %struct.evsel, %struct.evsel* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @__perf_evsel__calc_id_pos(i32 %7)
  %9 = load %struct.evsel*, %struct.evsel** %2, align 8
  %10 = getelementptr inbounds %struct.evsel, %struct.evsel* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.evsel*, %struct.evsel** %2, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__perf_evsel__calc_is_pos(i32 %15)
  %17 = load %struct.evsel*, %struct.evsel** %2, align 8
  %18 = getelementptr inbounds %struct.evsel, %struct.evsel* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @__perf_evsel__calc_id_pos(i32) #1

declare dso_local i32 @__perf_evsel__calc_is_pos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
