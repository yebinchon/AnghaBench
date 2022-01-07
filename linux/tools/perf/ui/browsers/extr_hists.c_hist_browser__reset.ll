; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__reset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_browser*)* @hist_browser__reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_browser__reset(%struct.hist_browser* %0) #0 {
  %2 = alloca %struct.hist_browser*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %2, align 8
  %3 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %4 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %6 = call i32 @hist_browser__update_nr_entries(%struct.hist_browser* %5)
  %7 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %8 = call i32 @hist_browser__nr_entries(%struct.hist_browser* %7)
  %9 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %10 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %13 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %12, i32 0, i32 0
  %14 = call i32 @hist_browser__refresh_dimensions(%struct.TYPE_3__* %13)
  %15 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %16 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %15, i32 0, i32 0
  %17 = call i32 @ui_browser__reset_index(%struct.TYPE_3__* %16)
  ret void
}

declare dso_local i32 @hist_browser__update_nr_entries(%struct.hist_browser*) #1

declare dso_local i32 @hist_browser__nr_entries(%struct.hist_browser*) #1

declare dso_local i32 @hist_browser__refresh_dimensions(%struct.TYPE_3__*) #1

declare dso_local i32 @ui_browser__reset_index(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
