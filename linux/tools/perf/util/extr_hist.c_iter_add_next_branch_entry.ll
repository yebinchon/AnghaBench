; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_add_next_branch_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_iter_add_next_branch_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry_iter = type { i32, %struct.hist_entry*, i32, i64, %struct.branch_info*, %struct.perf_sample*, %struct.evsel* }
%struct.hist_entry = type { i32 }
%struct.branch_info = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.perf_sample = type { i32, i32 }
%struct.evsel = type { i32 }
%struct.addr_location = type { i32 }
%struct.hists = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*)* @iter_add_next_branch_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_add_next_branch_entry(%struct.hist_entry_iter* %0, %struct.addr_location* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry_iter*, align 8
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.branch_info*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.hists*, align 8
  %9 = alloca %struct.perf_sample*, align 8
  %10 = alloca %struct.hist_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %4, align 8
  store %struct.addr_location* %1, %struct.addr_location** %5, align 8
  %13 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %14 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %13, i32 0, i32 6
  %15 = load %struct.evsel*, %struct.evsel** %14, align 8
  store %struct.evsel* %15, %struct.evsel** %7, align 8
  %16 = load %struct.evsel*, %struct.evsel** %7, align 8
  %17 = call %struct.hists* @evsel__hists(%struct.evsel* %16)
  store %struct.hists* %17, %struct.hists** %8, align 8
  %18 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %19 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %18, i32 0, i32 5
  %20 = load %struct.perf_sample*, %struct.perf_sample** %19, align 8
  store %struct.perf_sample* %20, %struct.perf_sample** %9, align 8
  store %struct.hist_entry* null, %struct.hist_entry** %10, align 8
  %21 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %22 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %25 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %24, i32 0, i32 4
  %26 = load %struct.branch_info*, %struct.branch_info** %25, align 8
  store %struct.branch_info* %26, %struct.branch_info** %6, align 8
  %27 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %28 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %2
  %32 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %32, i64 %34
  %36 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %41, i64 %43
  %45 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40, %31
  br label %90

50:                                               ; preds = %40, %2
  %51 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %52 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %54 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %60 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  br label %64

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %58
  %65 = phi i32 [ %62, %58 ], [ 1, %63 ]
  %66 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %67 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.hists*, %struct.hists** %8, align 8
  %69 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %70 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %71 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.branch_info*, %struct.branch_info** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %73, i64 %75
  %77 = load %struct.perf_sample*, %struct.perf_sample** %9, align 8
  %78 = call %struct.hist_entry* @hists__add_entry(%struct.hists* %68, %struct.addr_location* %69, i32 %72, %struct.branch_info* %76, i32* null, %struct.perf_sample* %77, i32 1)
  store %struct.hist_entry* %78, %struct.hist_entry** %10, align 8
  %79 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %80 = icmp eq %struct.hist_entry* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %99

84:                                               ; preds = %64
  %85 = load %struct.hists*, %struct.hists** %8, align 8
  %86 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %87 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @hists__inc_nr_samples(%struct.hists* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %49
  %91 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %92 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %93 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %92, i32 0, i32 1
  store %struct.hist_entry* %91, %struct.hist_entry** %93, align 8
  %94 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %4, align 8
  %95 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %90, %81
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.hists* @evsel__hists(%struct.evsel*) #1

declare dso_local %struct.hist_entry* @hists__add_entry(%struct.hists*, %struct.addr_location*, i32, %struct.branch_info*, i32*, %struct.perf_sample*, i32) #1

declare dso_local i32 @hists__inc_nr_samples(%struct.hists*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
