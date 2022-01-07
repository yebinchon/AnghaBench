; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_hist_iter__report_callback.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_hist_iter__report_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hist_entry_iter = type { %struct.perf_sample*, %struct.evsel*, %struct.hist_entry* }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.hist_entry = type { %struct.mem_info*, %struct.branch_info* }
%struct.mem_info = type { i32 }
%struct.branch_info = type { i32, i32 }
%struct.addr_location = type { i32 }
%struct.report = type { i64, i32 }

@sort__mode = common dso_local global i64 0, align 8
@SORT_MODE__BRANCH = common dso_local global i64 0, align 8
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)* @hist_iter__report_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_iter__report_callback(%struct.hist_entry_iter* %0, %struct.addr_location* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_entry_iter*, align 8
  %7 = alloca %struct.addr_location*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.report*, align 8
  %12 = alloca %struct.hist_entry*, align 8
  %13 = alloca %struct.evsel*, align 8
  %14 = alloca %struct.perf_sample*, align 8
  %15 = alloca %struct.mem_info*, align 8
  %16 = alloca %struct.branch_info*, align 8
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %6, align 8
  store %struct.addr_location* %1, %struct.addr_location** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.report*
  store %struct.report* %18, %struct.report** %11, align 8
  %19 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %20 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %19, i32 0, i32 2
  %21 = load %struct.hist_entry*, %struct.hist_entry** %20, align 8
  store %struct.hist_entry* %21, %struct.hist_entry** %12, align 8
  %22 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %23 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %22, i32 0, i32 1
  %24 = load %struct.evsel*, %struct.evsel** %23, align 8
  store %struct.evsel* %24, %struct.evsel** %13, align 8
  %25 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %26 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %25, i32 0, i32 0
  %27 = load %struct.perf_sample*, %struct.perf_sample** %26, align 8
  store %struct.perf_sample* %27, %struct.perf_sample** %14, align 8
  %28 = call i32 (...) @ui__has_annotation()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load %struct.report*, %struct.report** %11, align 8
  %32 = getelementptr inbounds %struct.report, %struct.report* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %111

36:                                               ; preds = %30, %4
  %37 = load i64, i64* @sort__mode, align 8
  %38 = load i64, i64* @SORT_MODE__BRANCH, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %42 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %41, i32 0, i32 1
  %43 = load %struct.branch_info*, %struct.branch_info** %42, align 8
  store %struct.branch_info* %43, %struct.branch_info** %16, align 8
  %44 = load %struct.branch_info*, %struct.branch_info** %16, align 8
  %45 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %44, i32 0, i32 1
  %46 = load %struct.perf_sample*, %struct.perf_sample** %14, align 8
  %47 = load %struct.evsel*, %struct.evsel** %13, align 8
  %48 = call i32 @addr_map_symbol__inc_samples(i32* %45, %struct.perf_sample* %46, %struct.evsel* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %109

52:                                               ; preds = %40
  %53 = load %struct.branch_info*, %struct.branch_info** %16, align 8
  %54 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %53, i32 0, i32 0
  %55 = load %struct.perf_sample*, %struct.perf_sample** %14, align 8
  %56 = load %struct.evsel*, %struct.evsel** %13, align 8
  %57 = call i32 @addr_map_symbol__inc_samples(i32* %54, %struct.perf_sample* %55, %struct.evsel* %56)
  store i32 %57, i32* %10, align 4
  br label %108

58:                                               ; preds = %36
  %59 = load %struct.report*, %struct.report** %11, align 8
  %60 = getelementptr inbounds %struct.report, %struct.report* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %65 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %64, i32 0, i32 0
  %66 = load %struct.mem_info*, %struct.mem_info** %65, align 8
  store %struct.mem_info* %66, %struct.mem_info** %15, align 8
  %67 = load %struct.mem_info*, %struct.mem_info** %15, align 8
  %68 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %67, i32 0, i32 0
  %69 = load %struct.perf_sample*, %struct.perf_sample** %14, align 8
  %70 = load %struct.evsel*, %struct.evsel** %13, align 8
  %71 = call i32 @addr_map_symbol__inc_samples(i32* %68, %struct.perf_sample* %69, %struct.evsel* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %109

75:                                               ; preds = %63
  %76 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %77 = load %struct.perf_sample*, %struct.perf_sample** %14, align 8
  %78 = load %struct.evsel*, %struct.evsel** %13, align 8
  %79 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %80 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @hist_entry__inc_addr_samples(%struct.hist_entry* %76, %struct.perf_sample* %77, %struct.evsel* %78, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %107

83:                                               ; preds = %58
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %91 = load %struct.perf_sample*, %struct.perf_sample** %14, align 8
  %92 = load %struct.evsel*, %struct.evsel** %13, align 8
  %93 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %94 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hist_entry__inc_addr_samples(%struct.hist_entry* %90, %struct.perf_sample* %91, %struct.evsel* %92, i32 %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %89, %86
  br label %106

98:                                               ; preds = %83
  %99 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %100 = load %struct.perf_sample*, %struct.perf_sample** %14, align 8
  %101 = load %struct.evsel*, %struct.evsel** %13, align 8
  %102 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %103 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @hist_entry__inc_addr_samples(%struct.hist_entry* %99, %struct.perf_sample* %100, %struct.evsel* %101, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %98, %97
  br label %107

107:                                              ; preds = %106, %75
  br label %108

108:                                              ; preds = %107, %52
  br label %109

109:                                              ; preds = %108, %74, %51
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %35
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @ui__has_annotation(...) #1

declare dso_local i32 @addr_map_symbol__inc_samples(i32*, %struct.perf_sample*, %struct.evsel*) #1

declare dso_local i32 @hist_entry__inc_addr_samples(%struct.hist_entry*, %struct.perf_sample*, %struct.evsel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
