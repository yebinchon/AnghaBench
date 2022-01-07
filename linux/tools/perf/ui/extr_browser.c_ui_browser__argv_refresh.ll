; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__argv_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__argv_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i32, i32, i32 (%struct.ui_browser*, i8**, i32)*, i32 (%struct.ui_browser*, i8*)*, i32*, i32* }

@SLtt_Screen_Rows = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_browser__argv_refresh(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %7 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %10 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %15 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %18 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %17, i32 0, i32 6
  store i32* %16, i32** %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %21 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to i8**
  store i8** %23, i8*** %5, align 8
  br label %24

24:                                               ; preds = %84, %19
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %27 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = load i64, i64* @SLtt_Screen_Rows, align 8
  %33 = trunc i64 %32 to i32
  %34 = sub i32 %33, 1
  %35 = icmp ult i32 %31, %34
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ false, %24 ], [ %35, %30 ]
  br i1 %37, label %38, label %89

38:                                               ; preds = %36
  %39 = load i8**, i8*** %5, align 8
  %40 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %41 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to i8**
  %44 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %45 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %43, i64 %47
  %49 = icmp ult i8** %39, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %53 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %52, i32 0, i32 4
  %54 = load i32 (%struct.ui_browser*, i8*)*, i32 (%struct.ui_browser*, i8*)** %53, align 8
  %55 = icmp ne i32 (%struct.ui_browser*, i8*)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %38
  %57 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %58 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %57, i32 0, i32 4
  %59 = load i32 (%struct.ui_browser*, i8*)*, i32 (%struct.ui_browser*, i8*)** %58, align 8
  %60 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 %59(%struct.ui_browser* %60, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %56, %38
  %66 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @ui_browser__gotorc(%struct.ui_browser* %66, i32 %67, i32 0)
  %69 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %70 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %69, i32 0, i32 3
  %71 = load i32 (%struct.ui_browser*, i8**, i32)*, i32 (%struct.ui_browser*, i8**, i32)** %70, align 8
  %72 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 %71(%struct.ui_browser* %72, i8** %73, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %3, align 4
  %78 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %79 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  br label %89

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %56
  %85 = load i32, i32* %4, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %5, align 8
  br label %24

89:                                               ; preds = %82, %36
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ui_browser__gotorc(%struct.ui_browser*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
