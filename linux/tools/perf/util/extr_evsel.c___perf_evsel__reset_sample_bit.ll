; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c___perf_evsel__reset_sample_bit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c___perf_evsel__reset_sample_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__perf_evsel__reset_sample_bit(%struct.evsel* %0, i32 %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.evsel*, %struct.evsel** %3, align 8
  %6 = getelementptr inbounds %struct.evsel, %struct.evsel* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.evsel*, %struct.evsel** %3, align 8
  %17 = getelementptr inbounds %struct.evsel, %struct.evsel* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %15
  store i32 %21, i32* %19, align 4
  %22 = load %struct.evsel*, %struct.evsel** %3, align 8
  %23 = getelementptr inbounds %struct.evsel, %struct.evsel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.evsel*, %struct.evsel** %3, align 8
  %29 = call i32 @perf_evsel__calc_id_pos(%struct.evsel* %28)
  br label %30

30:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @perf_evsel__calc_id_pos(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
