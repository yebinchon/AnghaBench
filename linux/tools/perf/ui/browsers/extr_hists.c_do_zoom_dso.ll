; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_do_zoom_dso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_do_zoom_dso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.popup_action = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.map* }
%struct.map = type { %struct.TYPE_7__* }

@dso = common dso_local global i32 0, align 4
@HISTC_DSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"To zoom out press ESC or ENTER + \22Zoom out of %s DSO\22\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"the Kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*)* @do_zoom_dso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_zoom_dso(%struct.hist_browser* %0, %struct.popup_action* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_browser*, align 8
  %5 = alloca %struct.popup_action*, align 8
  %6 = alloca %struct.map*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %4, align 8
  store %struct.popup_action* %1, %struct.popup_action** %5, align 8
  %7 = load %struct.popup_action*, %struct.popup_action** %5, align 8
  %8 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.map*, %struct.map** %9, align 8
  store %struct.map* %10, %struct.map** %6, align 8
  %11 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %12 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load i32, i32* @dso, align 4
  %15 = call i32 @hists__has(%struct.TYPE_8__* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.map*, %struct.map** %6, align 8
  %19 = icmp eq %struct.map* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %82

21:                                               ; preds = %17
  %22 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %23 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %30 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %33 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = call i32 @pstack__remove(i32 %31, %struct.TYPE_7__** %35)
  %37 = load i32, i32* @HISTC_DSO, align 4
  %38 = call i32 @perf_hpp__set_elide(i32 %37, i32 0)
  %39 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %40 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %42, align 8
  %43 = call i32 (...) @ui_helpline__pop()
  br label %75

44:                                               ; preds = %21
  %45 = load %struct.map*, %struct.map** %6, align 8
  %46 = call i64 @__map__is_kernel(%struct.map* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %55

49:                                               ; preds = %44
  %50 = load %struct.map*, %struct.map** %6, align 8
  %51 = getelementptr inbounds %struct.map, %struct.map* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  br label %55

55:                                               ; preds = %49, %48
  %56 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %48 ], [ %54, %49 ]
  %57 = call i32 @ui_helpline__fpush(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load %struct.map*, %struct.map** %6, align 8
  %59 = getelementptr inbounds %struct.map, %struct.map* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %62 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %64, align 8
  %65 = load i32, i32* @HISTC_DSO, align 4
  %66 = call i32 @perf_hpp__set_elide(i32 %65, i32 1)
  %67 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %68 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %71 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @pstack__push(i32 %69, %struct.TYPE_7__** %73)
  br label %75

75:                                               ; preds = %55, %28
  %76 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %77 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = call i32 @hists__filter_by_dso(%struct.TYPE_8__* %78)
  %80 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %81 = call i32 @hist_browser__reset(%struct.hist_browser* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @hists__has(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pstack__remove(i32, %struct.TYPE_7__**) #1

declare dso_local i32 @perf_hpp__set_elide(i32, i32) #1

declare dso_local i32 @ui_helpline__pop(...) #1

declare dso_local i32 @ui_helpline__fpush(i8*, i8*) #1

declare dso_local i64 @__map__is_kernel(%struct.map*) #1

declare dso_local i32 @pstack__push(i32, %struct.TYPE_7__**) #1

declare dso_local i32 @hists__filter_by_dso(%struct.TYPE_8__*) #1

declare dso_local i32 @hist_browser__reset(%struct.hist_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
