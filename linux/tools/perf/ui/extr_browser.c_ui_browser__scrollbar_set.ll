; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__scrollbar_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__scrollbar_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i32, i32, i32 }

@SLSMG_DIAMOND_CHAR = common dso_local global i32 0, align 4
@SLSMG_CKBRD_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_browser*)* @ui_browser__scrollbar_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_browser__scrollbar_set(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  %8 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %9 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %12 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %15 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %20 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %23 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = mul nsw i32 %21, %25
  %27 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %28 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sdiv i32 %26, %30
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %18, %1
  %33 = call i32 @SLsmg_set_char_set(i32 1)
  br label %34

34:                                               ; preds = %51, %32
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ui_browser__gotorc(%struct.ui_browser* %39, i32 %40, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @SLSMG_DIAMOND_CHAR, align 4
  br label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @SLSMG_CKBRD_CHAR, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32 @SLsmg_write_char(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %34

56:                                               ; preds = %34
  %57 = call i32 @SLsmg_set_char_set(i32 0)
  ret void
}

declare dso_local i32 @SLsmg_set_char_set(i32) #1

declare dso_local i32 @ui_browser__gotorc(%struct.ui_browser*, i32, i32) #1

declare dso_local i32 @SLsmg_write_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
