; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__title.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, i8*, i64)* @hist_browser__title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_browser__title(%struct.hist_browser* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.hist_browser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %8 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.hist_browser*, i8*, i64)**
  %10 = load i32 (%struct.hist_browser*, i8*, i64)*, i32 (%struct.hist_browser*, i8*, i64)** %9, align 8
  %11 = icmp ne i32 (%struct.hist_browser*, i8*, i64)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %14 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.hist_browser*, i8*, i64)**
  %16 = load i32 (%struct.hist_browser*, i8*, i64)*, i32 (%struct.hist_browser*, i8*, i64)** %15, align 8
  %17 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 %16(%struct.hist_browser* %17, i8* %18, i64 %19)
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi i32 [ %20, %12 ], [ 0, %21 ]
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
