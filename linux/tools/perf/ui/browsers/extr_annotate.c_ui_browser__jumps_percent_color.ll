; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_ui_browser__jumps_percent_color.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_ui_browser__jumps_percent_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i64, i32 }
%struct.annotation = type { i32 }

@HE_COLORSET_SELECTED = common dso_local global i32 0, align 4
@HE_COLORSET_TOP = common dso_local global i32 0, align 4
@HE_COLORSET_MEDIUM = common dso_local global i32 0, align 4
@HE_COLORSET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_browser*, i32, i32)* @ui_browser__jumps_percent_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ui_browser__jumps_percent_color(%struct.ui_browser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_browser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.annotation*, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %10 = call %struct.annotation* @browser__annotation(%struct.ui_browser* %9)
  store %struct.annotation* %10, %struct.annotation** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %15 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %20 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @HE_COLORSET_SELECTED, align 4
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.annotation*, %struct.annotation** %8, align 8
  %28 = getelementptr inbounds %struct.annotation, %struct.annotation* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @HE_COLORSET_TOP, align 4
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @HE_COLORSET_MEDIUM, align 4
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @HE_COLORSET_NORMAL, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %36, %31, %23
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.annotation* @browser__annotation(%struct.ui_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
