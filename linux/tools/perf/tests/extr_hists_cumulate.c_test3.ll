; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_cumulate.c_test3.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_cumulate.c_test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.result = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.evsel = type { i32 }
%struct.machine = type { i32 }
%struct.hists = type { i32 }

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
@.str.10 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"sys_perf_event_open\00", align 1
@__const.test3.expected = private unnamed_addr constant [12 x %struct.result] [%struct.result { i32 7000, i32 2000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct.result { i32 5000, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0) }, %struct.result { i32 3000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct.result { i32 3000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0) }, %struct.result { i32 2000, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0) }, %struct.result { i32 1000, i32 1000, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, %struct.result { i32 1000, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0) }], align 16
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CALLCHAIN = common dso_local global i32 0, align 4
@callchain_param = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.machine*)* @test3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test3(%struct.evsel* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hists*, align 8
  %7 = alloca [12 x %struct.result], align 16
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  store %struct.machine* %1, %struct.machine** %4, align 8
  %8 = load %struct.evsel*, %struct.evsel** %3, align 8
  %9 = call %struct.hists* @evsel__hists(%struct.evsel* %8)
  store %struct.hists* %9, %struct.hists** %6, align 8
  %10 = bitcast [12 x %struct.result]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([12 x %struct.result]* @__const.test3.expected to i8*), i64 384, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %11 = load %struct.evsel*, %struct.evsel** %3, align 8
  %12 = load i32, i32* @CALLCHAIN, align 4
  %13 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %11, i32 %12)
  %14 = call i32 @setup_sorting(i32* null)
  %15 = call i32 @callchain_register_param(i32* @callchain_param)
  %16 = load %struct.hists*, %struct.hists** %6, align 8
  %17 = load %struct.machine*, %struct.machine** %4, align 8
  %18 = call i32 @add_hist_entries(%struct.hists* %16, %struct.machine* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.hists*, %struct.hists** %6, align 8
  %24 = getelementptr inbounds [12 x %struct.result], [12 x %struct.result]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [12 x %struct.result], [12 x %struct.result]* %7, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(%struct.result* %25)
  %27 = call i32 @do_test(%struct.hists* %23, %struct.result* %24, i32 %26, i32* null, i32 0)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %21
  %29 = load %struct.hists*, %struct.hists** %6, align 8
  %30 = call i32 @del_hist_entries(%struct.hists* %29)
  %31 = call i32 (...) @reset_output_field()
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.hists* @evsel__hists(%struct.evsel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @perf_evsel__reset_sample_bit(%struct.evsel*, i32) #1

declare dso_local i32 @setup_sorting(i32*) #1

declare dso_local i32 @callchain_register_param(i32*) #1

declare dso_local i32 @add_hist_entries(%struct.hists*, %struct.machine*) #1

declare dso_local i32 @do_test(%struct.hists*, %struct.result*, i32, i32*, i32) #1

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
