; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_add_single_cumulative_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_add_single_cumulative_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry_iter = type { i32, %struct.hist_entry*, i32, %struct.hist_entry**, %struct.perf_sample*, %struct.evsel* }
%struct.hist_entry = type { i32 }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.addr_location = type { i32 }
%struct.hists = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@callchain_cursor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*)* @iter_add_single_cumulative_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_add_single_cumulative_entry(%struct.hist_entry_iter* %0, %struct.addr_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry_iter*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.hists*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.hist_entry**, align 8
  %10 = alloca %struct.hist_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  %12 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %13 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %12, i32 0, i32 5
  %14 = load %struct.evsel*, %struct.evsel** %13, align 8
  store %struct.evsel* %14, %struct.evsel** %6, align 8
  %15 = load %struct.evsel*, %struct.evsel** %6, align 8
  %16 = call %struct.hists* @evsel__hists(%struct.evsel* %15)
  store %struct.hists* %16, %struct.hists** %7, align 8
  %17 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %18 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %17, i32 0, i32 4
  %19 = load %struct.perf_sample*, %struct.perf_sample** %18, align 8
  store %struct.perf_sample* %19, %struct.perf_sample** %8, align 8
  %20 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %21 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %20, i32 0, i32 3
  %22 = load %struct.hist_entry**, %struct.hist_entry*** %21, align 8
  store %struct.hist_entry** %22, %struct.hist_entry*** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.hists*, %struct.hists** %7, align 8
  %24 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %25 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %26 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %29 = call %struct.hist_entry* @hists__add_entry(%struct.hists* %23, %struct.addr_location* %24, i32 %27, i32* null, i32* null, %struct.perf_sample* %28, i32 1)
  store %struct.hist_entry* %29, %struct.hist_entry** %10, align 8
  %30 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %31 = icmp eq %struct.hist_entry* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %2
  %36 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %37 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %38 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %37, i32 0, i32 1
  store %struct.hist_entry* %36, %struct.hist_entry** %38, align 8
  %39 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %40 = load %struct.hist_entry**, %struct.hist_entry*** %9, align 8
  %41 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %42 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.hist_entry*, %struct.hist_entry** %40, i64 %45
  store %struct.hist_entry* %39, %struct.hist_entry** %46, align 8
  %47 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %48 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %49 = call i32 @hist_entry__append_callchain(%struct.hist_entry* %47, %struct.perf_sample* %48)
  %50 = call i32 @callchain_cursor_commit(i32* @callchain_cursor)
  %51 = load %struct.hists*, %struct.hists** %7, align 8
  %52 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %53 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @hists__inc_nr_samples(%struct.hists* %51, i32 %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %35, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.hists* @evsel__hists(%struct.evsel*) #1

declare dso_local %struct.hist_entry* @hists__add_entry(%struct.hists*, %struct.addr_location*, i32, i32*, i32*, %struct.perf_sample*, i32) #1

declare dso_local i32 @hist_entry__append_callchain(%struct.hist_entry*, %struct.perf_sample*) #1

declare dso_local i32 @callchain_cursor_commit(i32*) #1

declare dso_local i32 @hists__inc_nr_samples(%struct.hists*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
