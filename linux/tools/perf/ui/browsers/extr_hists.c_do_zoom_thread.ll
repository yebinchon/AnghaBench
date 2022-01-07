; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_do_zoom_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_do_zoom_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32 }
%struct.hist_browser = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.popup_action = type { %struct.thread* }

@comm = common dso_local global %struct.thread* null, align 8
@HISTC_THREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"To zoom out press ESC or ENTER + \22Zoom out of %s(%d) thread\22\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"To zoom out press ESC or ENTER + \22Zoom out of %s thread\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*)* @do_zoom_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_zoom_thread(%struct.hist_browser* %0, %struct.popup_action* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_browser*, align 8
  %5 = alloca %struct.popup_action*, align 8
  %6 = alloca %struct.thread*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %4, align 8
  store %struct.popup_action* %1, %struct.popup_action** %5, align 8
  %7 = load %struct.popup_action*, %struct.popup_action** %5, align 8
  %8 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %7, i32 0, i32 0
  %9 = load %struct.thread*, %struct.thread** %8, align 8
  store %struct.thread* %9, %struct.thread** %6, align 8
  %10 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %11 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = call i64 @hists__has(%struct.TYPE_3__* %12, %struct.thread* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %18 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load %struct.thread*, %struct.thread** @comm, align 8
  %21 = call i64 @hists__has(%struct.TYPE_3__* %19, %struct.thread* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16, %2
  %24 = load %struct.thread*, %struct.thread** %6, align 8
  %25 = icmp eq %struct.thread* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %16
  store i32 0, i32* %3, align 4
  br label %110

27:                                               ; preds = %23
  %28 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %29 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %36 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %39 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @pstack__remove(i32 %37, i64* %41)
  %43 = load i32, i32* @HISTC_THREAD, align 4
  %44 = call i32 @perf_hpp__set_elide(i32 %43, i32 0)
  %45 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %46 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @thread__zput(i64 %49)
  %51 = call i32 (...) @ui_helpline__pop()
  br label %103

52:                                               ; preds = %27
  %53 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %54 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load %struct.thread*, %struct.thread** %6, align 8
  %57 = call i64 @hists__has(%struct.TYPE_3__* %55, %struct.thread* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load %struct.thread*, %struct.thread** %6, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.thread*, %struct.thread** %6, align 8
  %66 = call i8* @thread__comm_str(%struct.thread* %65)
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i8* [ %66, %64 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %67 ]
  %70 = load %struct.thread*, %struct.thread** %6, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i8*, ...) @ui_helpline__fpush(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %72)
  br label %86

74:                                               ; preds = %52
  %75 = load %struct.thread*, %struct.thread** %6, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.thread*, %struct.thread** %6, align 8
  %81 = call i8* @thread__comm_str(%struct.thread* %80)
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i8* [ %81, %79 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %82 ]
  %85 = call i32 (i8*, i8*, ...) @ui_helpline__fpush(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %68
  %87 = load %struct.thread*, %struct.thread** %6, align 8
  %88 = call i64 @thread__get(%struct.thread* %87)
  %89 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %90 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 8
  %93 = load i32, i32* @HISTC_THREAD, align 4
  %94 = call i32 @perf_hpp__set_elide(i32 %93, i32 0)
  %95 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %96 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %99 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @pstack__push(i32 %97, i64* %101)
  br label %103

103:                                              ; preds = %86, %34
  %104 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %105 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 @hists__filter_by_thread(%struct.TYPE_3__* %106)
  %108 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %109 = call i32 @hist_browser__reset(%struct.hist_browser* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %103, %26
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @hists__has(%struct.TYPE_3__*, %struct.thread*) #1

declare dso_local i32 @pstack__remove(i32, i64*) #1

declare dso_local i32 @perf_hpp__set_elide(i32, i32) #1

declare dso_local i32 @thread__zput(i64) #1

declare dso_local i32 @ui_helpline__pop(...) #1

declare dso_local i32 @ui_helpline__fpush(i8*, i8*, ...) #1

declare dso_local i8* @thread__comm_str(%struct.thread*) #1

declare dso_local i64 @thread__get(%struct.thread*) #1

declare dso_local i32 @pstack__push(i32, i64*) #1

declare dso_local i32 @hists__filter_by_thread(%struct.TYPE_3__*) #1

declare dso_local i32 @hist_browser__reset(%struct.hist_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
