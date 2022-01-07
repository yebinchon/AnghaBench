; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_hists__resort_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_hists__resort_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.symbol* }
%struct.symbol = type { i32 }
%struct.report = type { i64 }
%struct.evsel = type { i32 }

@annotation__default_options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i8*)* @hists__resort_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hists__resort_cb(%struct.hist_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.report*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.evsel*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.report*
  store %struct.report* %9, %struct.report** %5, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.symbol*, %struct.symbol** %12, align 8
  store %struct.symbol* %13, %struct.symbol** %6, align 8
  %14 = load %struct.report*, %struct.report** %5, align 8
  %15 = getelementptr inbounds %struct.report, %struct.report* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.symbol*, %struct.symbol** %6, align 8
  %20 = icmp ne %struct.symbol* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.symbol*, %struct.symbol** %6, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.evsel* @hists_to_evsel(i32 %29)
  store %struct.evsel* %30, %struct.evsel** %7, align 8
  %31 = load %struct.symbol*, %struct.symbol** %6, align 8
  %32 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %33 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.evsel*, %struct.evsel** %7, align 8
  %37 = call i32 @symbol__annotate2(%struct.symbol* %31, i32 %35, %struct.evsel* %36, i32* @annotation__default_options, i32* null)
  br label %38

38:                                               ; preds = %26, %21, %18, %2
  ret i32 0
}

declare dso_local %struct.evsel* @hists_to_evsel(i32) #1

declare dso_local i32 @symbol__annotate2(%struct.symbol*, i32, %struct.evsel*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
