; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__mark_fused.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__mark_fused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32 }

@SLSMG_ULCORN_CHAR = common dso_local global i32 0, align 4
@SLSMG_LTEE_CHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_browser__mark_fused(%struct.ui_browser* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ui_browser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %12 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %18 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  store i32 %20, i32* %9, align 4
  br label %22

21:                                               ; preds = %4
  br label %62

22:                                               ; preds = %15
  %23 = call i32 @SLsmg_set_char_set(i32 1)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub i32 %29, 1
  %31 = call i32 @ui_browser__gotorc(%struct.ui_browser* %27, i32 %28, i32 %30)
  %32 = load i32, i32* @SLSMG_ULCORN_CHAR, align 4
  %33 = call i32 @SLsmg_write_char(i32 %32)
  %34 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ui_browser__gotorc(%struct.ui_browser* %34, i32 %35, i32 %36)
  %38 = call i32 @SLsmg_draw_hline(i32 2)
  %39 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = sub i32 %42, 1
  %44 = call i32 @ui_browser__gotorc(%struct.ui_browser* %39, i32 %41, i32 %43)
  %45 = load i32, i32* @SLSMG_LTEE_CHAR, align 4
  %46 = call i32 @SLsmg_write_char(i32 %45)
  br label %60

47:                                               ; preds = %22
  %48 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub i32 %50, 1
  %52 = call i32 @ui_browser__gotorc(%struct.ui_browser* %48, i32 %49, i32 %51)
  %53 = load i32, i32* @SLSMG_LTEE_CHAR, align 4
  %54 = call i32 @SLsmg_write_char(i32 %53)
  %55 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ui_browser__gotorc(%struct.ui_browser* %55, i32 %56, i32 %57)
  %59 = call i32 @SLsmg_draw_hline(i32 2)
  br label %60

60:                                               ; preds = %47, %26
  %61 = call i32 @SLsmg_set_char_set(i32 0)
  br label %62

62:                                               ; preds = %60, %21
  ret void
}

declare dso_local i32 @SLsmg_set_char_set(i32) #1

declare dso_local i32 @ui_browser__gotorc(%struct.ui_browser*, i32, i32) #1

declare dso_local i32 @SLsmg_write_char(i32) #1

declare dso_local i32 @SLsmg_draw_hline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
