; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_add_single_mem_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_add_single_mem_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry_iter = type { %struct.hist_entry*, i32, %struct.perf_sample*, i32, %struct.mem_info* }
%struct.hist_entry = type { i32 }
%struct.perf_sample = type { i32, i32 }
%struct.mem_info = type { i32 }
%struct.addr_location = type { i32 }
%struct.hists = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*)* @iter_add_single_mem_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_add_single_mem_entry(%struct.hist_entry_iter* %0, %struct.addr_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry_iter*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_info*, align 8
  %8 = alloca %struct.hists*, align 8
  %9 = alloca %struct.perf_sample*, align 8
  %10 = alloca %struct.hist_entry*, align 8
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  %11 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %12 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %11, i32 0, i32 4
  %13 = load %struct.mem_info*, %struct.mem_info** %12, align 8
  store %struct.mem_info* %13, %struct.mem_info** %7, align 8
  %14 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %15 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.hists* @evsel__hists(i32 %16)
  store %struct.hists* %17, %struct.hists** %8, align 8
  %18 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %19 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %18, i32 0, i32 2
  %20 = load %struct.perf_sample*, %struct.perf_sample** %19, align 8
  store %struct.perf_sample* %20, %struct.perf_sample** %9, align 8
  %21 = load %struct.mem_info*, %struct.mem_info** %7, align 8
  %22 = icmp eq %struct.mem_info* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %28 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hists*, %struct.hists** %8, align 8
  %38 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %39 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %40 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mem_info*, %struct.mem_info** %7, align 8
  %43 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %44 = call %struct.hist_entry* @hists__add_entry(%struct.hists* %37, %struct.addr_location* %38, i32 %41, i32* null, %struct.mem_info* %42, %struct.perf_sample* %43, i32 1)
  store %struct.hist_entry* %44, %struct.hist_entry** %10, align 8
  %45 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %46 = icmp ne %struct.hist_entry* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %33
  %51 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %52 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %53 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %52, i32 0, i32 0
  store %struct.hist_entry* %51, %struct.hist_entry** %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %47, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.hists* @evsel__hists(i32) #1

declare dso_local %struct.hist_entry* @hists__add_entry(%struct.hists*, %struct.addr_location*, i32, i32*, %struct.mem_info*, %struct.perf_sample*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
