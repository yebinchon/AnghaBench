; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_report__browse_hists.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_report__browse_hists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.report = type { i32, i32, %struct.perf_session* }
%struct.perf_session = type { %struct.TYPE_2__, %struct.evlist* }
%struct.TYPE_2__ = type { i32 }
%struct.evlist = type { i32 }

@TIPDIR = common dso_local global i32 0, align 4
@DOCDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Cannot load tips.txt file, please install perf!\00", align 1
@use_browser = common dso_local global i32 0, align 4
@K_SWITCH_INPUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.report*)* @report__browse_hists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report__browse_hists(%struct.report* %0) #0 {
  %2 = alloca %struct.report*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i8*, align 8
  store %struct.report* %0, %struct.report** %2, align 8
  %7 = load %struct.report*, %struct.report** %2, align 8
  %8 = getelementptr inbounds %struct.report, %struct.report* %7, i32 0, i32 2
  %9 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  store %struct.perf_session* %9, %struct.perf_session** %4, align 8
  %10 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %11 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %10, i32 0, i32 1
  %12 = load %struct.evlist*, %struct.evlist** %11, align 8
  store %struct.evlist* %12, %struct.evlist** %5, align 8
  %13 = load i32, i32* @TIPDIR, align 4
  %14 = call i32 @system_path(i32 %13)
  %15 = call i8* @perf_tip(i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @DOCDIR, align 4
  %20 = call i8* @perf_tip(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %24

24:                                               ; preds = %23, %18
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* @use_browser, align 4
  switch i32 %26, label %48 [
    i32 1, label %27
    i32 2, label %44
  ]

27:                                               ; preds = %25
  %28 = load %struct.evlist*, %struct.evlist** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.report*, %struct.report** %2, align 8
  %31 = getelementptr inbounds %struct.report, %struct.report* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %34 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.report*, %struct.report** %2, align 8
  %37 = getelementptr inbounds %struct.report, %struct.report* %36, i32 0, i32 0
  %38 = call i32 @perf_evlist__tui_browse_hists(%struct.evlist* %28, i8* %29, i32* null, i32 %32, i32* %35, i32 1, i32* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @K_SWITCH_INPUT_DATA, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %27
  br label %53

44:                                               ; preds = %25
  %45 = load %struct.report*, %struct.report** %2, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @report__gtk_browse_hists(%struct.report* %45, i8* %46)
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %25
  %49 = load %struct.evlist*, %struct.evlist** %5, align 8
  %50 = load %struct.report*, %struct.report** %2, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @perf_evlist__tty_browse_hists(%struct.evlist* %49, %struct.report* %50, i8* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %44, %43
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i8* @perf_tip(i32) #1

declare dso_local i32 @system_path(i32) #1

declare dso_local i32 @perf_evlist__tui_browse_hists(%struct.evlist*, i8*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @report__gtk_browse_hists(%struct.report*, i8*) #1

declare dso_local i32 @perf_evlist__tty_browse_hists(%struct.evlist*, %struct.report*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
