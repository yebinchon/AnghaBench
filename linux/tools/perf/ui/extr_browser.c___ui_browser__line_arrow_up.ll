; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c___ui_browser__line_arrow_up.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c___ui_browser__line_arrow_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i64, i32 }

@SLSMG_LLCORN_CHAR = common dso_local global i32 0, align 4
@SLSMG_ULCORN_CHAR = common dso_local global i32 0, align 4
@SLSMG_HLINE_CHAR = common dso_local global i32 0, align 4
@SLSMG_RARROW_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_browser*, i32, i64, i64)* @__ui_browser__line_arrow_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ui_browser__line_arrow_up(%struct.ui_browser* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ui_browser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @SLsmg_set_char_set(i32 1)
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %14 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %17 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = icmp slt i64 %12, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %25 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ui_browser__gotorc(%struct.ui_browser* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @SLSMG_LLCORN_CHAR, align 4
  %34 = call i32 @SLsmg_write_char(i32 %33)
  %35 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  %39 = call i32 @ui_browser__gotorc(%struct.ui_browser* %35, i32 %36, i32 %38)
  %40 = call i32 @SLsmg_draw_hline(i32 2)
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %9, align 4
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  br label %102

45:                                               ; preds = %22
  br label %51

46:                                               ; preds = %4
  %47 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %48 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %54 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %60 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %10, align 4
  br label %65

64:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %57
  %66 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ui_browser__gotorc(%struct.ui_browser* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub i32 %70, %71
  %73 = add i32 %72, 1
  %74 = call i32 @SLsmg_draw_vline(i32 %73)
  %75 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ui_browser__gotorc(%struct.ui_browser* %75, i32 %76, i32 %77)
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %81 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %65
  %85 = load i32, i32* @SLSMG_ULCORN_CHAR, align 4
  %86 = call i32 @SLsmg_write_char(i32 %85)
  %87 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, 1
  %91 = call i32 @ui_browser__gotorc(%struct.ui_browser* %87, i32 %88, i32 %90)
  %92 = load i32, i32* @SLSMG_HLINE_CHAR, align 4
  %93 = call i32 @SLsmg_write_char(i32 %92)
  %94 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 2
  %98 = call i32 @ui_browser__gotorc(%struct.ui_browser* %94, i32 %95, i32 %97)
  %99 = load i32, i32* @SLSMG_RARROW_CHAR, align 4
  %100 = call i32 @SLsmg_write_char(i32 %99)
  br label %101

101:                                              ; preds = %84, %65
  br label %102

102:                                              ; preds = %101, %44
  %103 = call i32 @SLsmg_set_char_set(i32 0)
  ret void
}

declare dso_local i32 @SLsmg_set_char_set(i32) #1

declare dso_local i32 @ui_browser__gotorc(%struct.ui_browser*, i32, i32) #1

declare dso_local i32 @SLsmg_write_char(i32) #1

declare dso_local i32 @SLsmg_draw_hline(i32) #1

declare dso_local i32 @SLsmg_draw_vline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
