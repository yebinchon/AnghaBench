; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_prepare_branch_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_prepare_branch_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry_iter = type { %struct.branch_info*, i32, i64, %struct.perf_sample* }
%struct.branch_info = type { i32 }
%struct.perf_sample = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.addr_location = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*)* @iter_prepare_branch_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_prepare_branch_entry(%struct.hist_entry_iter* %0, %struct.addr_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry_iter*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.branch_info*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  %8 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %9 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %8, i32 0, i32 3
  %10 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  store %struct.perf_sample* %10, %struct.perf_sample** %7, align 8
  %11 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %12 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %13 = call %struct.branch_info* @sample__resolve_bstack(%struct.perf_sample* %11, %struct.addr_location* %12)
  store %struct.branch_info* %13, %struct.branch_info** %6, align 8
  %14 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %15 = icmp ne %struct.branch_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %21 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %23 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %28 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %30 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %31 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %30, i32 0, i32 0
  store %struct.branch_info* %29, %struct.branch_info** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.branch_info* @sample__resolve_bstack(%struct.perf_sample*, %struct.addr_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
