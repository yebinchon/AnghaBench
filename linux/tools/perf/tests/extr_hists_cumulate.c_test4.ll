; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_cumulate.c_test4.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_cumulate.c_test4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.result = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.evsel = type { i32 }
%struct.machine = type { i32 }
%struct.hists = type { i32 }
%struct.callchain_result = type { i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"run_command\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bash\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cmd_record\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"libc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"[kernel]\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"page_fault\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"xmalloc\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"sys_perf_event_open\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@__const.test4.expected = private unnamed_addr constant [12 x %struct.result] [%struct.result { i32 7000, i32 2000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct.result { i32 5000, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0) }, %struct.result { i32 3000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct.result { i32 3000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0) }, %struct.result { i32 2000, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0) }, %struct.result { i32 1000, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }], align 16
@symbol_conf = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@CALLCHAIN = common dso_local global i32 0, align 4
@callchain_param_default = common dso_local global i32 0, align 4
@callchain_param = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.machine*)* @test4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test4(%struct.evsel* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hists*, align 8
  %7 = alloca [12 x %struct.result], align 16
  %8 = alloca [12 x %struct.callchain_result], align 16
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  store %struct.machine* %1, %struct.machine** %4, align 8
  %9 = load %struct.evsel*, %struct.evsel** %3, align 8
  %10 = call %struct.hists* @evsel__hists(%struct.evsel* %9)
  store %struct.hists* %10, %struct.hists** %6, align 8
  %11 = bitcast [12 x %struct.result]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([12 x %struct.result]* @__const.test4.expected to i8*), i64 384, i1 false)
  %12 = bitcast [12 x %struct.callchain_result]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 384, i1 false)
  %13 = getelementptr inbounds [12 x %struct.callchain_result], [12 x %struct.callchain_result]* %8, i64 0, i64 0
  %14 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %13, i32 0, i32 0
  store i32 1, i32* %14, align 16
  %15 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %13, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str to i32), i32* %15, align 4
  %16 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %13, i64 1
  %17 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %16, i32 0, i32 0
  store i32 2, i32* %17, align 16
  %18 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %16, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str to i32), i32* %18, align 4
  %19 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %16, i64 1
  %20 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %19, i32 0, i32 0
  store i32 1, i32* %20, align 16
  %21 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %19, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.3 to i32), i32* %21, align 4
  %22 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %19, i64 1
  %23 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %22, i32 0, i32 0
  store i32 3, i32* %23, align 16
  %24 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %22, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str to i32), i32* %24, align 4
  %25 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %22, i64 1
  %26 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %25, i32 0, i32 0
  store i32 4, i32* %26, align 16
  %27 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %25, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.5 to i32), i32* %27, align 4
  %28 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %25, i64 1
  %29 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %28, i32 0, i32 0
  store i32 3, i32* %29, align 16
  %30 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %28, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str.7 to i32), i32* %30, align 4
  %31 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %28, i64 1
  %32 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %31, i32 0, i32 0
  store i32 6, i32* %32, align 16
  %33 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %31, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.3 to i32), i32* %33, align 4
  %34 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %31, i64 1
  %35 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %34, i32 0, i32 0
  store i32 3, i32* %35, align 16
  %36 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %34, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str.7 to i32), i32* %36, align 4
  %37 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %34, i64 1
  %38 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %37, i32 0, i32 0
  store i32 4, i32* %38, align 16
  %39 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %37, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str.7 to i32), i32* %39, align 4
  %40 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %37, i64 1
  %41 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %40, i32 0, i32 0
  store i32 3, i32* %41, align 16
  %42 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %40, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str.7 to i32), i32* %42, align 4
  %43 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %40, i64 1
  %44 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %43, i32 0, i32 0
  store i32 4, i32* %44, align 16
  %45 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %43, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.5 to i32), i32* %45, align 4
  %46 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %43, i64 1
  %47 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %46, i32 0, i32 0
  store i32 4, i32* %47, align 16
  %48 = getelementptr inbounds %struct.callchain_result, %struct.callchain_result* %46, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.5 to i32), i32* %48, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @symbol_conf, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @symbol_conf, i32 0, i32 1), align 4
  %49 = load %struct.evsel*, %struct.evsel** %3, align 8
  %50 = load i32, i32* @CALLCHAIN, align 4
  %51 = call i32 @perf_evsel__set_sample_bit(%struct.evsel* %49, i32 %50)
  %52 = call i32 @setup_sorting(i32* null)
  %53 = load i32, i32* @callchain_param_default, align 4
  store i32 %53, i32* @callchain_param, align 4
  %54 = call i32 @callchain_register_param(i32* @callchain_param)
  %55 = load %struct.hists*, %struct.hists** %6, align 8
  %56 = load %struct.machine*, %struct.machine** %4, align 8
  %57 = call i32 @add_hist_entries(%struct.hists* %55, %struct.machine* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %2
  br label %72

61:                                               ; preds = %2
  %62 = load %struct.hists*, %struct.hists** %6, align 8
  %63 = getelementptr inbounds [12 x %struct.result], [12 x %struct.result]* %7, i64 0, i64 0
  %64 = getelementptr inbounds [12 x %struct.result], [12 x %struct.result]* %7, i64 0, i64 0
  %65 = call i32 @ARRAY_SIZE(%struct.result* %64)
  %66 = getelementptr inbounds [12 x %struct.callchain_result], [12 x %struct.callchain_result]* %8, i64 0, i64 0
  %67 = bitcast %struct.callchain_result* %66 to %struct.result*
  %68 = getelementptr inbounds [12 x %struct.callchain_result], [12 x %struct.callchain_result]* %8, i64 0, i64 0
  %69 = bitcast %struct.callchain_result* %68 to %struct.result*
  %70 = call i32 @ARRAY_SIZE(%struct.result* %69)
  %71 = call i32 @do_test(%struct.hists* %62, %struct.result* %63, i32 %65, %struct.result* %67, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %61, %60
  %73 = load %struct.hists*, %struct.hists** %6, align 8
  %74 = call i32 @del_hist_entries(%struct.hists* %73)
  %75 = call i32 (...) @reset_output_field()
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.hists* @evsel__hists(%struct.evsel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @perf_evsel__set_sample_bit(%struct.evsel*, i32) #1

declare dso_local i32 @setup_sorting(i32*) #1

declare dso_local i32 @callchain_register_param(i32*) #1

declare dso_local i32 @add_hist_entries(%struct.hists*, %struct.machine*) #1

declare dso_local i32 @do_test(%struct.hists*, %struct.result*, i32, %struct.result*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.result*) #1

declare dso_local i32 @del_hist_entries(%struct.hists*) #1

declare dso_local i32 @reset_output_field(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
