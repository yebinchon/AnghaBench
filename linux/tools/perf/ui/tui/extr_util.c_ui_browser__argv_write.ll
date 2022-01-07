; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_util.c_ui_browser__argv_write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_util.c_ui_browser__argv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32 }

@HE_COLORSET_SELECTED = common dso_local global i32 0, align 4
@HE_COLORSET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_browser*, i8*, i32)* @ui_browser__argv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_browser__argv_write(%struct.ui_browser* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_browser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i8**
  store i8** %10, i8*** %7, align 8
  %11 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ui_browser__is_current_entry(%struct.ui_browser* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @HE_COLORSET_SELECTED, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @HE_COLORSET_NORMAL, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @ui_browser__set_color(%struct.ui_browser* %14, i32 %22)
  %24 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %28 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ui_browser__write_nstring(%struct.ui_browser* %24, i8* %26, i32 %29)
  ret void
}

declare dso_local i32 @ui_browser__is_current_entry(%struct.ui_browser*, i32) #1

declare dso_local i32 @ui_browser__set_color(%struct.ui_browser*, i32) #1

declare dso_local i32 @ui_browser__write_nstring(%struct.ui_browser*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
