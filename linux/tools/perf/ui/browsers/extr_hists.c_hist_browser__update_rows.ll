; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__update_rows.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__update_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { i32, %struct.hists*, %struct.ui_browser }
%struct.hists = type { %struct.perf_hpp_list* }
%struct.perf_hpp_list = type { i64 }
%struct.ui_browser = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_browser*)* @hist_browser__update_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_browser__update_rows(%struct.hist_browser* %0) #0 {
  %2 = alloca %struct.hist_browser*, align 8
  %3 = alloca %struct.ui_browser*, align 8
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.perf_hpp_list*, align 8
  %6 = alloca i64, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %2, align 8
  %7 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %8 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %7, i32 0, i32 2
  store %struct.ui_browser* %8, %struct.ui_browser** %3, align 8
  %9 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %10 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %9, i32 0, i32 1
  %11 = load %struct.hists*, %struct.hists** %10, align 8
  store %struct.hists* %11, %struct.hists** %4, align 8
  %12 = load %struct.hists*, %struct.hists** %4, align 8
  %13 = getelementptr inbounds %struct.hists, %struct.hists* %12, i32 0, i32 0
  %14 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %13, align 8
  store %struct.perf_hpp_list* %14, %struct.perf_hpp_list** %5, align 8
  %15 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %16 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %21 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %24 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %28 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %65

29:                                               ; preds = %1
  %30 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %5, align 8
  %31 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %34 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %36 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %39 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %43 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %46 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %51 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %29
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %57 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = add nsw i64 %59, 1
  %61 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %62 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %19, %54, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
