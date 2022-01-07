; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_add_single_normal_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_add_single_normal_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry_iter = type { %struct.hist_entry*, i32, %struct.perf_sample*, %struct.evsel* }
%struct.hist_entry = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.addr_location = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*)* @iter_add_single_normal_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_add_single_normal_entry(%struct.hist_entry_iter* %0, %struct.addr_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry_iter*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.hist_entry*, align 8
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  %9 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %10 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %9, i32 0, i32 3
  %11 = load %struct.evsel*, %struct.evsel** %10, align 8
  store %struct.evsel* %11, %struct.evsel** %6, align 8
  %12 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %13 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %12, i32 0, i32 2
  %14 = load %struct.perf_sample*, %struct.perf_sample** %13, align 8
  store %struct.perf_sample* %14, %struct.perf_sample** %7, align 8
  %15 = load %struct.evsel*, %struct.evsel** %6, align 8
  %16 = call i32 @evsel__hists(%struct.evsel* %15)
  %17 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %18 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %19 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %22 = call %struct.hist_entry* @hists__add_entry(i32 %16, %struct.addr_location* %17, i32 %20, i32* null, i32* null, %struct.perf_sample* %21, i32 1)
  store %struct.hist_entry* %22, %struct.hist_entry** %8, align 8
  %23 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  %24 = icmp eq %struct.hist_entry* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  %30 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %31 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %30, i32 0, i32 0
  store %struct.hist_entry* %29, %struct.hist_entry** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.hist_entry* @hists__add_entry(i32, %struct.addr_location*, i32, i32*, i32*, %struct.perf_sample*, i32) #1

declare dso_local i32 @evsel__hists(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
