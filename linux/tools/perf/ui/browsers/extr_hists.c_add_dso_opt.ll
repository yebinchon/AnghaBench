; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_dso_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_dso_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.popup_action = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.map* }
%struct.map = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@dso = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Zoom %s %s DSO\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"out of\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"the Kernel\00", align 1
@do_zoom_dso = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*, i8**, %struct.map*)* @add_dso_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dso_opt(%struct.hist_browser* %0, %struct.popup_action* %1, i8** %2, %struct.map* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_browser*, align 8
  %7 = alloca %struct.popup_action*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.map*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %6, align 8
  store %struct.popup_action* %1, %struct.popup_action** %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.map* %3, %struct.map** %9, align 8
  %10 = load %struct.hist_browser*, %struct.hist_browser** %6, align 8
  %11 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i32, i32* @dso, align 4
  %14 = call i32 @hists__has(%struct.TYPE_6__* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.map*, %struct.map** %9, align 8
  %18 = icmp eq %struct.map* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %53

20:                                               ; preds = %16
  %21 = load i8**, i8*** %8, align 8
  %22 = load %struct.hist_browser*, %struct.hist_browser** %6, align 8
  %23 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %30 = load %struct.map*, %struct.map** %9, align 8
  %31 = call i64 @__map__is_kernel(%struct.map* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.map*, %struct.map** %9, align 8
  %36 = getelementptr inbounds %struct.map, %struct.map* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %40

40:                                               ; preds = %34, %33
  %41 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %33 ], [ %39, %34 ]
  %42 = call i64 @asprintf(i8** %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %53

45:                                               ; preds = %40
  %46 = load %struct.map*, %struct.map** %9, align 8
  %47 = load %struct.popup_action*, %struct.popup_action** %7, align 8
  %48 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.map* %46, %struct.map** %49, align 8
  %50 = load i32, i32* @do_zoom_dso, align 4
  %51 = load %struct.popup_action*, %struct.popup_action** %7, align 8
  %52 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %45, %44, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @hists__has(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i64 @__map__is_kernel(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
