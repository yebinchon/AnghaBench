; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_perf_evsel_browser__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_perf_evsel_browser__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.annotation_options*, i32, %struct.perf_env*, %struct.hist_browser_timer* }
%struct.evsel = type { i32 }
%struct.hist_browser_timer = type { i32 }
%struct.perf_env = type { i32 }
%struct.annotation_options = type { i32 }

@hists_browser__scnprintf_title = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_browser* (%struct.evsel*, %struct.hist_browser_timer*, %struct.perf_env*, %struct.annotation_options*)* @perf_evsel_browser__new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_browser* @perf_evsel_browser__new(%struct.evsel* %0, %struct.hist_browser_timer* %1, %struct.perf_env* %2, %struct.annotation_options* %3) #0 {
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.hist_browser_timer*, align 8
  %7 = alloca %struct.perf_env*, align 8
  %8 = alloca %struct.annotation_options*, align 8
  %9 = alloca %struct.hist_browser*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %struct.hist_browser_timer* %1, %struct.hist_browser_timer** %6, align 8
  store %struct.perf_env* %2, %struct.perf_env** %7, align 8
  store %struct.annotation_options* %3, %struct.annotation_options** %8, align 8
  %10 = load %struct.evsel*, %struct.evsel** %5, align 8
  %11 = call i32 @evsel__hists(%struct.evsel* %10)
  %12 = call %struct.hist_browser* @hist_browser__new(i32 %11)
  store %struct.hist_browser* %12, %struct.hist_browser** %9, align 8
  %13 = load %struct.hist_browser*, %struct.hist_browser** %9, align 8
  %14 = icmp ne %struct.hist_browser* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.hist_browser_timer*, %struct.hist_browser_timer** %6, align 8
  %17 = load %struct.hist_browser*, %struct.hist_browser** %9, align 8
  %18 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %17, i32 0, i32 3
  store %struct.hist_browser_timer* %16, %struct.hist_browser_timer** %18, align 8
  %19 = load %struct.perf_env*, %struct.perf_env** %7, align 8
  %20 = load %struct.hist_browser*, %struct.hist_browser** %9, align 8
  %21 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %20, i32 0, i32 2
  store %struct.perf_env* %19, %struct.perf_env** %21, align 8
  %22 = load i32, i32* @hists_browser__scnprintf_title, align 4
  %23 = load %struct.hist_browser*, %struct.hist_browser** %9, align 8
  %24 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.annotation_options*, %struct.annotation_options** %8, align 8
  %26 = load %struct.hist_browser*, %struct.hist_browser** %9, align 8
  %27 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %26, i32 0, i32 0
  store %struct.annotation_options* %25, %struct.annotation_options** %27, align 8
  br label %28

28:                                               ; preds = %15, %4
  %29 = load %struct.hist_browser*, %struct.hist_browser** %9, align 8
  ret %struct.hist_browser* %29
}

declare dso_local %struct.hist_browser* @hist_browser__new(i32) #1

declare dso_local i32 @evsel__hists(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
