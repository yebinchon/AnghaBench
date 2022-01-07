; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_perf_evsel__output_resort_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_perf_evsel__output_resort_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.evsel = type { i32 }
%struct.ui_progress = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_evsel__output_resort_cb(%struct.evsel* %0, %struct.ui_progress* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.ui_progress*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %struct.ui_progress* %1, %struct.ui_progress** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.evsel*, %struct.evsel** %5, align 8
  %11 = icmp ne %struct.evsel* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.evsel*, %struct.evsel** %5, align 8
  %20 = call i32 @evsel__has_callchain(%struct.evsel* %19)
  store i32 %20, i32* %9, align 4
  br label %23

21:                                               ; preds = %15, %12, %4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load %struct.evsel*, %struct.evsel** %5, align 8
  %28 = call i32 @evsel__hists(%struct.evsel* %27)
  %29 = load %struct.ui_progress*, %struct.ui_progress** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @output_resort(i32 %28, %struct.ui_progress* %29, i32 %30, i32 %31, i8* %32)
  ret void
}

declare dso_local i32 @evsel__has_callchain(%struct.evsel*) #1

declare dso_local i32 @output_resort(i32, %struct.ui_progress*, i32, i32, i8*) #1

declare dso_local i32 @evsel__hists(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
