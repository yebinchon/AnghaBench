; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_map_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_map_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { i32 }
%struct.popup_action = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.map* }
%struct.map = type { i32 }

@dso = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Browse map details\00", align 1
@do_browse_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*, i8**, %struct.map*)* @add_map_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_map_opt(%struct.hist_browser* %0, %struct.popup_action* %1, i8** %2, %struct.map* %3) #0 {
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
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @dso, align 4
  %14 = call i32 @hists__has(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.map*, %struct.map** %9, align 8
  %18 = icmp eq %struct.map* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %33

20:                                               ; preds = %16
  %21 = load i8**, i8*** %8, align 8
  %22 = call i64 @asprintf(i8** %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %33

25:                                               ; preds = %20
  %26 = load %struct.map*, %struct.map** %9, align 8
  %27 = load %struct.popup_action*, %struct.popup_action** %7, align 8
  %28 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.map* %26, %struct.map** %29, align 8
  %30 = load i32, i32* @do_browse_map, align 4
  %31 = load %struct.popup_action*, %struct.popup_action** %7, align 8
  %32 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %25, %24, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @hists__has(i32, i32) #1

declare dso_local i64 @asprintf(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
