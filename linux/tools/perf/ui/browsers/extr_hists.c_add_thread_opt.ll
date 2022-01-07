; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_thread_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_thread_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32 }
%struct.hist_browser = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.popup_action = type { i32, %struct.thread* }

@comm = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Zoom %s %s(%d) thread\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"out of\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Zoom %s %s thread\00", align 1
@do_zoom_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*, i8**, %struct.thread*)* @add_thread_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_thread_opt(%struct.hist_browser* %0, %struct.popup_action* %1, i8** %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_browser*, align 8
  %7 = alloca %struct.popup_action*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  store %struct.hist_browser* %0, %struct.hist_browser** %6, align 8
  store %struct.popup_action* %1, %struct.popup_action** %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load %struct.hist_browser*, %struct.hist_browser** %6, align 8
  %12 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.thread*, %struct.thread** %9, align 8
  %15 = call i64 @hists__has(%struct.TYPE_2__* %13, %struct.thread* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load %struct.hist_browser*, %struct.hist_browser** %6, align 8
  %19 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.thread*, %struct.thread** @comm, align 8
  %22 = call i64 @hists__has(%struct.TYPE_2__* %20, %struct.thread* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %4
  %25 = load %struct.thread*, %struct.thread** %9, align 8
  %26 = icmp eq %struct.thread* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %17
  store i32 0, i32* %5, align 4
  br label %91

28:                                               ; preds = %24
  %29 = load %struct.hist_browser*, %struct.hist_browser** %6, align 8
  %30 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.thread*, %struct.thread** %9, align 8
  %33 = call i64 @hists__has(%struct.TYPE_2__* %31, %struct.thread* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load i8**, i8*** %8, align 8
  %37 = load %struct.hist_browser*, %struct.hist_browser** %6, align 8
  %38 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %45 = load %struct.thread*, %struct.thread** %9, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load %struct.thread*, %struct.thread** %9, align 8
  %51 = call i8* @thread__comm_str(%struct.thread* %50)
  br label %53

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i8* [ %51, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %52 ]
  %55 = load %struct.thread*, %struct.thread** %9, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %54, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %80

59:                                               ; preds = %28
  %60 = load i8**, i8*** %8, align 8
  %61 = load %struct.hist_browser*, %struct.hist_browser** %6, align 8
  %62 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %69 = load %struct.thread*, %struct.thread** %9, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load %struct.thread*, %struct.thread** %9, align 8
  %75 = call i8* @thread__comm_str(%struct.thread* %74)
  br label %77

76:                                               ; preds = %59
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i8* [ %75, %73 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %76 ]
  %79 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %68, i8* %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %77, %53
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %91

84:                                               ; preds = %80
  %85 = load %struct.thread*, %struct.thread** %9, align 8
  %86 = load %struct.popup_action*, %struct.popup_action** %7, align 8
  %87 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %86, i32 0, i32 1
  store %struct.thread* %85, %struct.thread** %87, align 8
  %88 = load i32, i32* @do_zoom_thread, align 4
  %89 = load %struct.popup_action*, %struct.popup_action** %7, align 8
  %90 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  store i32 1, i32* %5, align 4
  br label %91

91:                                               ; preds = %84, %83, %27
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @hists__has(%struct.TYPE_2__*, %struct.thread*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, ...) #1

declare dso_local i8* @thread__comm_str(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
