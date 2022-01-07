; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_progress.c_tui_progress__update.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_progress.c_tui_progress__update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_progress = type { i32, i32, i64, i64 }

@use_browser = common dso_local global i64 0, align 8
@ui__lock = common dso_local global i32 0, align 4
@SLtt_Screen_Rows = common dso_local global i32 0, align 4
@SLtt_Screen_Cols = common dso_local global i32 0, align 4
@HE_COLORSET_SELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_progress*)* @tui_progress__update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_progress__update(%struct.ui_progress* %0) #0 {
  %2 = alloca %struct.ui_progress*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ui_progress* %0, %struct.ui_progress** %2, align 8
  %7 = load %struct.ui_progress*, %struct.ui_progress** %2, align 8
  %8 = getelementptr inbounds %struct.ui_progress, %struct.ui_progress* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i64, i64* @use_browser, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.ui_progress*, %struct.ui_progress** %2, align 8
  %16 = getelementptr inbounds %struct.ui_progress, %struct.ui_progress* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %66

20:                                               ; preds = %14
  %21 = load %struct.ui_progress*, %struct.ui_progress** %2, align 8
  %22 = getelementptr inbounds %struct.ui_progress, %struct.ui_progress* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.ui_progress*, %struct.ui_progress** %2, align 8
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %28 = call i32 @get_title(%struct.ui_progress* %26, i8* %27, i32 100)
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = call i32 @ui__refresh_dimensions(i32 0)
  %32 = call i32 @pthread_mutex_lock(i32* @ui__lock)
  %33 = load i32, i32* @SLtt_Screen_Rows, align 4
  %34 = sdiv i32 %33, 2
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %6, align 4
  %36 = call i32 @SLsmg_set_color(i32 0)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SLtt_Screen_Cols, align 4
  %39 = call i32 @SLsmg_draw_box(i32 %37, i32 0, i32 3, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = call i32 @SLsmg_gotorc(i32 %40, i32 1)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @SLsmg_write_string(i8* %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SLtt_Screen_Cols, align 4
  %47 = sub nsw i32 %46, 2
  %48 = call i32 @SLsmg_fill_region(i32 %45, i32 1, i32 1, i32 %47, i8 signext 32)
  %49 = load i32, i32* @HE_COLORSET_SELECTED, align 4
  %50 = call i32 @SLsmg_set_color(i32 %49)
  %51 = load i32, i32* @SLtt_Screen_Cols, align 4
  %52 = sub nsw i32 %51, 2
  %53 = load %struct.ui_progress*, %struct.ui_progress** %2, align 8
  %54 = getelementptr inbounds %struct.ui_progress, %struct.ui_progress* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load %struct.ui_progress*, %struct.ui_progress** %2, align 8
  %58 = getelementptr inbounds %struct.ui_progress, %struct.ui_progress* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %56, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @SLsmg_fill_region(i32 %61, i32 1, i32 1, i32 %62, i8 signext 32)
  %64 = call i32 (...) @SLsmg_refresh()
  %65 = call i32 @pthread_mutex_unlock(i32* @ui__lock)
  br label %66

66:                                               ; preds = %30, %19, %13
  ret void
}

declare dso_local i32 @get_title(%struct.ui_progress*, i8*, i32) #1

declare dso_local i32 @ui__refresh_dimensions(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @SLsmg_set_color(i32) #1

declare dso_local i32 @SLsmg_draw_box(i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_gotorc(i32, i32) #1

declare dso_local i32 @SLsmg_write_string(i8*) #1

declare dso_local i32 @SLsmg_fill_region(i32, i32, i32, i32, i8 signext) #1

declare dso_local i32 @SLsmg_refresh(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
