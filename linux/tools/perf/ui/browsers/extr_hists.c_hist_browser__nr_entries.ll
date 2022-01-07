; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__nr_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__nr_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.hist_browser = type { i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hist_browser*)* @hist_browser__nr_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hist_browser__nr_entries(%struct.hist_browser* %0) #0 {
  %2 = alloca %struct.hist_browser*, align 8
  %3 = alloca i64, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %8 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %12 = call i64 @hist_browser__has_filter(%struct.hist_browser* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %16 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  br label %24

18:                                               ; preds = %10
  %19 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %20 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %18, %14
  br label %25

25:                                               ; preds = %24, %6
  %26 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %27 = call i64 @hist_browser__get_folding(%struct.hist_browser* %26)
  %28 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %29 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %32 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  ret i64 %34
}

declare dso_local i64 @hist_browser__has_filter(%struct.hist_browser*) #1

declare dso_local i64 @hist_browser__get_folding(%struct.hist_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
