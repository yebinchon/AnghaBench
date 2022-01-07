; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__set_sample_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__set_sample_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ID = common dso_local global i32 0, align 4
@IDENTIFIER = common dso_local global i32 0, align 4
@PERF_FORMAT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__set_sample_id(%struct.evsel* %0, i32 %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.evsel*, %struct.evsel** %3, align 8
  %9 = load i32, i32* @ID, align 4
  %10 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %8, i32 %9)
  %11 = load %struct.evsel*, %struct.evsel** %3, align 8
  %12 = load i32, i32* @IDENTIFIER, align 4
  %13 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %11, i32 %12)
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.evsel*, %struct.evsel** %3, align 8
  %16 = load i32, i32* @ID, align 4
  %17 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %7
  %19 = load i32, i32* @PERF_FORMAT_ID, align 4
  %20 = load %struct.evsel*, %struct.evsel** %3, align 8
  %21 = getelementptr inbounds %struct.evsel, %struct.evsel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 4
  ret void
}

declare dso_local i32 @perf_evsel__reset_sample_bit(%struct.evsel*, i32) #1

declare dso_local i32 @perf_evsel__set_sample_bit(%struct.evsel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
