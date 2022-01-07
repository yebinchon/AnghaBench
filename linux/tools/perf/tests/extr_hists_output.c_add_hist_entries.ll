; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_output.c_add_hist_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_output.c_add_hist_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.hists = type { i32 }
%struct.machine = type { i32 }
%struct.addr_location = type { i32, i32, i32 }
%struct.evsel = type { i32 }
%struct.hist_entry_iter = type { i32, i32*, %struct.perf_sample*, %struct.evsel* }

@__const.add_hist_entries.sample = private unnamed_addr constant %struct.perf_sample { i32 100, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@fake_samples = common dso_local global %struct.TYPE_3__* null, align 8
@hist_iter_normal = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@sysctl_perf_event_max_stack = common dso_local global i32 0, align 4
@TEST_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Not enough memory for adding a hist entry\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hists*, %struct.machine*)* @add_hist_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_hist_entries(%struct.hists* %0, %struct.machine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.machine*, align 8
  %6 = alloca %struct.addr_location, align 4
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.perf_sample, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hist_entry_iter, align 8
  store %struct.hists* %0, %struct.hists** %4, align 8
  store %struct.machine* %1, %struct.machine** %5, align 8
  %11 = load %struct.hists*, %struct.hists** %4, align 8
  %12 = call %struct.evsel* @hists_to_evsel(%struct.hists* %11)
  store %struct.evsel* %12, %struct.evsel** %7, align 8
  %13 = bitcast %struct.perf_sample* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.perf_sample* @__const.add_hist_entries.sample to i8*), i64 24, i1 false)
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %80, %2
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fake_samples, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 1
  store i32* @hist_iter_normal, i32** %21, align 8
  %22 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 2
  store %struct.perf_sample* %8, %struct.perf_sample** %22, align 8
  %23 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 3
  %24 = load %struct.evsel*, %struct.evsel** %7, align 8
  store %struct.evsel* %24, %struct.evsel** %23, align 8
  %25 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  %26 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fake_samples, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fake_samples, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fake_samples, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fake_samples, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.machine*, %struct.machine** %5, align 8
  %52 = call i64 @machine__resolve(%struct.machine* %51, %struct.addr_location* %6, %struct.perf_sample* %8)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %19
  br label %85

55:                                               ; preds = %19
  %56 = load i32, i32* @sysctl_perf_event_max_stack, align 4
  %57 = call i64 @hist_entry_iter__add(%struct.hist_entry_iter* %10, %struct.addr_location* %6, i32 %56, i32* null)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @addr_location__put(%struct.addr_location* %6)
  br label %85

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %6, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fake_samples, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 4
  %68 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fake_samples, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fake_samples, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %61
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %14

83:                                               ; preds = %14
  %84 = load i32, i32* @TEST_OK, align 4
  store i32 %84, i32* %3, align 4
  br label %88

85:                                               ; preds = %59, %54
  %86 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @TEST_FAIL, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %83
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.evsel* @hists_to_evsel(%struct.hists*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @machine__resolve(%struct.machine*, %struct.addr_location*, %struct.perf_sample*) #1

declare dso_local i64 @hist_entry_iter__add(%struct.hist_entry_iter*, %struct.addr_location*, i32, i32*) #1

declare dso_local i32 @addr_location__put(%struct.addr_location*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
