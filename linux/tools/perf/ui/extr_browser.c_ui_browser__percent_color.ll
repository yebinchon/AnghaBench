; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__percent_color.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__percent_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i64, i32 }

@HE_COLORSET_SELECTED = common dso_local global i32 0, align 4
@MIN_RED = common dso_local global double 0.000000e+00, align 8
@HE_COLORSET_TOP = common dso_local global i32 0, align 4
@MIN_GREEN = common dso_local global double 0.000000e+00, align 8
@HE_COLORSET_MEDIUM = common dso_local global i32 0, align 4
@HE_COLORSET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_browser*, double, i32)* @ui_browser__percent_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ui_browser__percent_color(%struct.ui_browser* %0, double %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_browser*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %12 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %17 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %10
  %21 = load i32, i32* @HE_COLORSET_SELECTED, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %15, %3
  %23 = load double, double* %6, align 8
  %24 = load double, double* @MIN_RED, align 8
  %25 = fcmp oge double %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @HE_COLORSET_TOP, align 4
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %22
  %29 = load double, double* %6, align 8
  %30 = load double, double* @MIN_GREEN, align 8
  %31 = fcmp oge double %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @HE_COLORSET_MEDIUM, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @HE_COLORSET_NORMAL, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %32, %26, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
