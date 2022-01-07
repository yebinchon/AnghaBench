; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hists_browser__headers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hists_browser__headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.TYPE_4__, %struct.hists* }
%struct.TYPE_4__ = type { i64 }
%struct.hists = type { %struct.perf_hpp_list* }
%struct.perf_hpp_list = type { i32 }

@HE_COLORSET_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_browser*)* @hists_browser__headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hists_browser__headers(%struct.hist_browser* %0) #0 {
  %2 = alloca %struct.hist_browser*, align 8
  %3 = alloca %struct.hists*, align 8
  %4 = alloca %struct.perf_hpp_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  store %struct.hist_browser* %0, %struct.hist_browser** %2, align 8
  %7 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %8 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %7, i32 0, i32 1
  %9 = load %struct.hists*, %struct.hists** %8, align 8
  store %struct.hists* %9, %struct.hists** %3, align 8
  %10 = load %struct.hists*, %struct.hists** %3, align 8
  %11 = getelementptr inbounds %struct.hists, %struct.hists* %10, i32 0, i32 0
  %12 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %11, align 8
  store %struct.perf_hpp_list* %12, %struct.perf_hpp_list** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %16 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @hists_browser__scnprintf_headers(%struct.hist_browser* %20, i8* %21, i32 1024, i32 %22)
  %24 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %25 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ui_browser__gotorc_title(%struct.TYPE_4__* %25, i32 %26, i32 0)
  %28 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %29 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %28, i32 0, i32 0
  %30 = load i32, i32* @HE_COLORSET_ROOT, align 4
  %31 = call i32 @ui_browser__set_color(%struct.TYPE_4__* %29, i32 %30)
  %32 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %33 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %32, i32 0, i32 0
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %35 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %36 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @ui_browser__write_nstring(%struct.TYPE_4__* %33, i8* %34, i64 %39)
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local i32 @hists_browser__scnprintf_headers(%struct.hist_browser*, i8*, i32, i32) #1

declare dso_local i32 @ui_browser__gotorc_title(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ui_browser__set_color(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ui_browser__write_nstring(%struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
