; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__filter_entry_by_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__filter_entry_by_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { i32* }
%struct.hist_entry = type { i32, i32* }

@HIST_FILTER__THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hists*, %struct.hist_entry*)* @hists__filter_entry_by_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hists__filter_entry_by_thread(%struct.hists* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  store %struct.hists* %0, %struct.hists** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %6 = load %struct.hists*, %struct.hists** %4, align 8
  %7 = getelementptr inbounds %struct.hists, %struct.hists* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.hists*, %struct.hists** %4, align 8
  %15 = getelementptr inbounds %struct.hists, %struct.hists* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load i32, i32* @HIST_FILTER__THREAD, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %22 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
