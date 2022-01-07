; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__set_folding_selected.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__set_folding_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_browser*, i32)* @hist_browser__set_folding_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_browser__set_folding_selected(%struct.hist_browser* %0, i32 %1) #0 {
  %3 = alloca %struct.hist_browser*, align 8
  %4 = alloca i32, align 4
  store %struct.hist_browser* %0, %struct.hist_browser** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %6 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %22

10:                                               ; preds = %2
  %11 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %12 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @hist_entry__set_folding(i32 %13, %struct.hist_browser* %14, i32 %15)
  %17 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %18 = call i32 @hist_browser__nr_entries(%struct.hist_browser* %17)
  %19 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %20 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @hist_entry__set_folding(i32, %struct.hist_browser*, i32) #1

declare dso_local i32 @hist_browser__nr_entries(%struct.hist_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
