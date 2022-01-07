; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_do_annotate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_do_annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.popup_action = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.evsel = type { i32 }
%struct.annotation = type { i32 }
%struct.hist_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*)* @do_annotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_annotate(%struct.hist_browser* %0, %struct.popup_action* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_browser*, align 8
  %5 = alloca %struct.popup_action*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.annotation*, align 8
  %8 = alloca %struct.hist_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.hist_browser* %0, %struct.hist_browser** %4, align 8
  store %struct.popup_action* %1, %struct.popup_action** %5, align 8
  %10 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %11 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %18 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %21 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i64 @perf_env__lookup_objdump(i32 %19, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %83

27:                                               ; preds = %16, %2
  %28 = load %struct.popup_action*, %struct.popup_action** %5, align 8
  %29 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.annotation* @symbol__annotation(i32 %31)
  store %struct.annotation* %32, %struct.annotation** %7, align 8
  %33 = load %struct.annotation*, %struct.annotation** %7, align 8
  %34 = getelementptr inbounds %struct.annotation, %struct.annotation* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %83

38:                                               ; preds = %27
  %39 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %40 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call %struct.evsel* @hists_to_evsel(%struct.TYPE_6__* %41)
  store %struct.evsel* %42, %struct.evsel** %6, align 8
  %43 = load %struct.popup_action*, %struct.popup_action** %5, align 8
  %44 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %43, i32 0, i32 0
  %45 = load %struct.evsel*, %struct.evsel** %6, align 8
  %46 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %47 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %50 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = call i32 @map_symbol__tui_annotate(%struct.TYPE_4__* %44, %struct.evsel* %45, i32 %48, %struct.TYPE_5__* %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %54 = call %struct.hist_entry* @hist_browser__selected_entry(%struct.hist_browser* %53)
  store %struct.hist_entry* %54, %struct.hist_entry** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 113
  br i1 %56, label %61, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @CTRL(i8 signext 99)
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %38
  %62 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  %63 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %83

67:                                               ; preds = %61, %57
  %68 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %69 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %68, i32 0, i32 0
  %70 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %71 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ui_browser__update_nr_entries(i32* %69, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %80 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %79, i32 0, i32 0
  %81 = call i32 @ui_browser__handle_resize(i32* %80)
  br label %82

82:                                               ; preds = %78, %67
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %66, %37, %26
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @perf_env__lookup_objdump(i32, i32*) #1

declare dso_local %struct.annotation* @symbol__annotation(i32) #1

declare dso_local %struct.evsel* @hists_to_evsel(%struct.TYPE_6__*) #1

declare dso_local i32 @map_symbol__tui_annotate(%struct.TYPE_4__*, %struct.evsel*, i32, %struct.TYPE_5__*) #1

declare dso_local %struct.hist_entry* @hist_browser__selected_entry(%struct.hist_browser*) #1

declare dso_local i32 @CTRL(i8 signext) #1

declare dso_local i32 @ui_browser__update_nr_entries(i32*, i32) #1

declare dso_local i32 @ui_browser__handle_resize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
