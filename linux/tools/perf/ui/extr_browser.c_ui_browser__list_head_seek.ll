; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__list_head_seek.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__list_head_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i64, %struct.list_head*, %struct.list_head* }
%struct.list_head = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_browser__list_head_seek(%struct.ui_browser* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ui_browser*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %10 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %9, i32 0, i32 2
  %11 = load %struct.list_head*, %struct.list_head** %10, align 8
  store %struct.list_head* %11, %struct.list_head** %7, align 8
  %12 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %13 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %71

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %35 [
    i32 128, label %19
    i32 130, label %25
    i32 129, label %29
  ]

19:                                               ; preds = %17
  %20 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %21 = load %struct.list_head*, %struct.list_head** %7, align 8
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.list_head* @ui_browser__list_head_filter_entries(%struct.ui_browser* %20, i32 %23)
  store %struct.list_head* %24, %struct.list_head** %8, align 8
  br label %36

25:                                               ; preds = %17
  %26 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %27 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %26, i32 0, i32 1
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  store %struct.list_head* %28, %struct.list_head** %8, align 8
  br label %36

29:                                               ; preds = %17
  %30 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %31 = load %struct.list_head*, %struct.list_head** %7, align 8
  %32 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.list_head* @ui_browser__list_head_filter_prev_entries(%struct.ui_browser* %30, i32 %33)
  store %struct.list_head* %34, %struct.list_head** %8, align 8
  br label %36

35:                                               ; preds = %17
  br label %71

36:                                               ; preds = %29, %25, %19
  %37 = load %struct.list_head*, %struct.list_head** %8, align 8
  %38 = icmp ne %struct.list_head* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %5, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %48, %43
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %5, align 8
  %47 = icmp ne i64 %45, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %50 = load %struct.list_head*, %struct.list_head** %8, align 8
  %51 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.list_head* @ui_browser__list_head_filter_entries(%struct.ui_browser* %49, i32 %52)
  store %struct.list_head* %53, %struct.list_head** %8, align 8
  br label %44

54:                                               ; preds = %44
  br label %67

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %60, %55
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %5, align 8
  %59 = icmp ne i64 %57, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %62 = load %struct.list_head*, %struct.list_head** %8, align 8
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.list_head* @ui_browser__list_head_filter_prev_entries(%struct.ui_browser* %61, i32 %64)
  store %struct.list_head* %65, %struct.list_head** %8, align 8
  br label %56

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.list_head*, %struct.list_head** %8, align 8
  %69 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %70 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %69, i32 0, i32 1
  store %struct.list_head* %68, %struct.list_head** %70, align 8
  br label %71

71:                                               ; preds = %67, %35, %16
  ret void
}

declare dso_local %struct.list_head* @ui_browser__list_head_filter_entries(%struct.ui_browser*, i32) #1

declare dso_local %struct.list_head* @ui_browser__list_head_filter_prev_entries(%struct.ui_browser*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
