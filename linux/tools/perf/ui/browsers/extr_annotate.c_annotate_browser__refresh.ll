; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__refresh.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_annotate_browser__refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i64 }
%struct.annotation = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HE_COLORSET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_browser*)* @annotate_browser__refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotate_browser__refresh(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  %3 = alloca %struct.annotation*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  %6 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %7 = call %struct.annotation* @browser__annotation(%struct.ui_browser* %6)
  store %struct.annotation* %7, %struct.annotation** %3, align 8
  %8 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %9 = call i32 @ui_browser__list_head_refresh(%struct.ui_browser* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.annotation*, %struct.annotation** %3, align 8
  %11 = call i32 @annotation__pcnt_width(%struct.annotation* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.annotation*, %struct.annotation** %3, align 8
  %13 = getelementptr inbounds %struct.annotation, %struct.annotation* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %20 = call i32 @annotate_browser__draw_current_jump(%struct.ui_browser* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %23 = load i32, i32* @HE_COLORSET_NORMAL, align 4
  %24 = call i32 @ui_browser__set_color(%struct.ui_browser* %22, i32 %23)
  %25 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %28 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @__ui_browser__vline(%struct.ui_browser* %25, i32 %26, i32 0, i64 %30)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.annotation* @browser__annotation(%struct.ui_browser*) #1

declare dso_local i32 @ui_browser__list_head_refresh(%struct.ui_browser*) #1

declare dso_local i32 @annotation__pcnt_width(%struct.annotation*) #1

declare dso_local i32 @annotate_browser__draw_current_jump(%struct.ui_browser*) #1

declare dso_local i32 @ui_browser__set_color(%struct.ui_browser*, i32) #1

declare dso_local i32 @__ui_browser__vline(%struct.ui_browser*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
