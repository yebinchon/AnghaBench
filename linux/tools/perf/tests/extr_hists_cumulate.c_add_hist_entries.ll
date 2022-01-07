; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_cumulate.c_add_hist_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_cumulate.c_add_hist_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32, %struct.ip_callchain*, i32, i32, i32, i32 }
%struct.ip_callchain = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hists = type { i32 }
%struct.machine = type { i32 }
%struct.addr_location = type { i32, i32, i32 }
%struct.evsel = type { i32 }
%struct.hist_entry_iter = type { i32, i32*, %struct.perf_sample*, %struct.evsel* }

@__const.add_hist_entries.sample = private unnamed_addr constant %struct.perf_sample { i32 1000, %struct.ip_callchain* null, i32 0, i32 0, i32 0, i32 0 }, align 8
@fake_samples = common dso_local global %struct.TYPE_5__* null, align 8
@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@hist_iter_cumulative = common dso_local global i32 0, align 4
@hist_iter_normal = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@fake_callchains = common dso_local global i64* null, align 8
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
  %8 = alloca %struct.perf_sample, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hist_entry_iter, align 8
  store %struct.hists* %0, %struct.hists** %4, align 8
  store %struct.machine* %1, %struct.machine** %5, align 8
  %11 = load %struct.hists*, %struct.hists** %4, align 8
  %12 = call %struct.evsel* @hists_to_evsel(%struct.hists* %11)
  store %struct.evsel* %12, %struct.evsel** %7, align 8
  %13 = bitcast %struct.perf_sample* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.perf_sample* @__const.add_hist_entries.sample to i8*), i64 32, i1 false)
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %87, %2
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_samples, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %90

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 2
  store %struct.perf_sample* %8, %struct.perf_sample** %22, align 8
  %23 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 3
  %24 = load %struct.evsel*, %struct.evsel** %7, align 8
  store %struct.evsel* %24, %struct.evsel** %23, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 1
  store i32* @hist_iter_cumulative, i32** %28, align 8
  br label %31

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %10, i32 0, i32 1
  store i32* @hist_iter_normal, i32** %30, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  %33 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_samples, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_samples, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_samples, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i64*, i64** @fake_callchains, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.ip_callchain*
  %57 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 1
  store %struct.ip_callchain* %56, %struct.ip_callchain** %57, align 8
  %58 = load %struct.machine*, %struct.machine** %5, align 8
  %59 = call i64 @machine__resolve(%struct.machine* %58, %struct.addr_location* %6, %struct.perf_sample* %8)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %31
  br label %92

62:                                               ; preds = %31
  %63 = load i32, i32* @sysctl_perf_event_max_stack, align 4
  %64 = call i64 @hist_entry_iter__add(%struct.hist_entry_iter* %10, %struct.addr_location* %6, i32 %63, i32* null)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @addr_location__put(%struct.addr_location* %6)
  br label %92

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %6, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_samples, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 4
  %75 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %6, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_samples, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_samples, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %68
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %14

90:                                               ; preds = %14
  %91 = load i32, i32* @TEST_OK, align 4
  store i32 %91, i32* %3, align 4
  br label %95

92:                                               ; preds = %66, %61
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @TEST_FAIL, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %90
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.evsel* @hists_to_evsel(%struct.hists*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

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
