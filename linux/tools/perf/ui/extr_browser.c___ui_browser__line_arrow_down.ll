; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c___ui_browser__line_arrow_down.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c___ui_browser__line_arrow_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i64, i32 }

@SLSMG_ULCORN_CHAR = common dso_local global i32 0, align 4
@SLSMG_LLCORN_CHAR = common dso_local global i32 0, align 4
@SLSMG_HLINE_CHAR = common dso_local global i32 0, align 4
@SLSMG_RARROW_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_browser*, i32, i64, i64)* @__ui_browser__line_arrow_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ui_browser__line_arrow_down(%struct.ui_browser* %0, i32 %1, i64 %2, i64 %3) #0 {
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
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %20 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ui_browser__gotorc(%struct.ui_browser* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @SLSMG_ULCORN_CHAR, align 4
  %29 = call i32 @SLsmg_write_char(i32 %28)
  %30 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  %34 = call i32 @ui_browser__gotorc(%struct.ui_browser* %30, i32 %31, i32 %33)
  %35 = call i32 @SLsmg_draw_hline(i32 2)
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  br label %107

40:                                               ; preds = %17
  br label %42

41:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %45 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %48 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = icmp sge i64 %43, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %55 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %65

58:                                               ; preds = %42
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %61 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ui_browser__gotorc(%struct.ui_browser* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
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
  %83 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %84 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %82, %86
  %88 = icmp slt i64 %79, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %65
  %90 = load i32, i32* @SLSMG_LLCORN_CHAR, align 4
  %91 = call i32 @SLsmg_write_char(i32 %90)
  %92 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add i32 %94, 1
  %96 = call i32 @ui_browser__gotorc(%struct.ui_browser* %92, i32 %93, i32 %95)
  %97 = load i32, i32* @SLSMG_HLINE_CHAR, align 4
  %98 = call i32 @SLsmg_write_char(i32 %97)
  %99 = load %struct.ui_browser*, %struct.ui_browser** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, 2
  %103 = call i32 @ui_browser__gotorc(%struct.ui_browser* %99, i32 %100, i32 %102)
  %104 = load i32, i32* @SLSMG_RARROW_CHAR, align 4
  %105 = call i32 @SLsmg_write_char(i32 %104)
  br label %106

106:                                              ; preds = %89, %65
  br label %107

107:                                              ; preds = %106, %39
  %108 = call i32 @SLsmg_set_char_set(i32 0)
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
