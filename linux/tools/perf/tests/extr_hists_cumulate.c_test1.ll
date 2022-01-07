; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_cumulate.c_test1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_hists_cumulate.c_test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.evsel = type { i32 }
%struct.machine = type { i32 }
%struct.hists = type { i32 }
%struct.result = type { i32, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bash\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[kernel]\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"page_fault\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"xmalloc\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"libc\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"cmd_record\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CALLCHAIN = common dso_local global i32 0, align 4
@callchain_param = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.machine*)* @test1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test1(%struct.evsel* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hists*, align 8
  %7 = alloca [9 x %struct.result], align 16
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  store %struct.machine* %1, %struct.machine** %4, align 8
  %8 = load %struct.evsel*, %struct.evsel** %3, align 8
  %9 = call %struct.hists* @evsel__hists(%struct.evsel* %8)
  store %struct.hists* %9, %struct.hists** %6, align 8
  %10 = getelementptr inbounds [9 x %struct.result], [9 x %struct.result]* %7, i64 0, i64 0
  %11 = getelementptr inbounds %struct.result, %struct.result* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.result, %struct.result* %10, i32 0, i32 1
  store i8* inttoptr (i64 2000 to i8*), i8** %12, align 8
  %13 = getelementptr inbounds %struct.result, %struct.result* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.result, %struct.result* %10, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.result, %struct.result* %10, i32 0, i32 4
  store i32 ptrtoint ([5 x i8]* @.str.1 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.result, %struct.result* %10, i64 1
  %17 = getelementptr inbounds %struct.result, %struct.result* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.result, %struct.result* %16, i32 0, i32 1
  store i8* inttoptr (i64 1000 to i8*), i8** %18, align 8
  %19 = getelementptr inbounds %struct.result, %struct.result* %16, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.result, %struct.result* %16, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.result, %struct.result* %16, i32 0, i32 4
  store i32 ptrtoint ([11 x i8]* @.str.4 to i32), i32* %21, align 8
  %22 = getelementptr inbounds %struct.result, %struct.result* %16, i64 1
  %23 = getelementptr inbounds %struct.result, %struct.result* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.result, %struct.result* %22, i32 0, i32 1
  store i8* inttoptr (i64 1000 to i8*), i8** %24, align 8
  %25 = getelementptr inbounds %struct.result, %struct.result* %22, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.result, %struct.result* %22, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds %struct.result, %struct.result* %22, i32 0, i32 4
  store i32 ptrtoint ([5 x i8]* @.str.1 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.result, %struct.result* %22, i64 1
  %29 = getelementptr inbounds %struct.result, %struct.result* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.result, %struct.result* %28, i32 0, i32 1
  store i8* inttoptr (i64 1000 to i8*), i8** %30, align 8
  %31 = getelementptr inbounds %struct.result, %struct.result* %28, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.result, %struct.result* %28, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.result, %struct.result* %28, i32 0, i32 4
  store i32 ptrtoint ([8 x i8]* @.str.5 to i32), i32* %33, align 8
  %34 = getelementptr inbounds %struct.result, %struct.result* %28, i64 1
  %35 = getelementptr inbounds %struct.result, %struct.result* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.result, %struct.result* %34, i32 0, i32 1
  store i8* inttoptr (i64 1000 to i8*), i8** %36, align 8
  %37 = getelementptr inbounds %struct.result, %struct.result* %34, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.result, %struct.result* %34, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.result, %struct.result* %34, i32 0, i32 4
  store i32 ptrtoint ([11 x i8]* @.str.4 to i32), i32* %39, align 8
  %40 = getelementptr inbounds %struct.result, %struct.result* %34, i64 1
  %41 = getelementptr inbounds %struct.result, %struct.result* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.result, %struct.result* %40, i32 0, i32 1
  store i8* inttoptr (i64 1000 to i8*), i8** %42, align 8
  %43 = getelementptr inbounds %struct.result, %struct.result* %40, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.result, %struct.result* %40, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.result, %struct.result* %40, i32 0, i32 4
  store i32 ptrtoint ([9 x i8]* @.str.6 to i32), i32* %45, align 8
  %46 = getelementptr inbounds %struct.result, %struct.result* %40, i64 1
  %47 = getelementptr inbounds %struct.result, %struct.result* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.result, %struct.result* %46, i32 0, i32 1
  store i8* inttoptr (i64 1000 to i8*), i8** %48, align 8
  %49 = getelementptr inbounds %struct.result, %struct.result* %46, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %49, align 8
  %50 = getelementptr inbounds %struct.result, %struct.result* %46, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.result, %struct.result* %46, i32 0, i32 4
  store i32 ptrtoint ([5 x i8]* @.str.8 to i32), i32* %51, align 8
  %52 = getelementptr inbounds %struct.result, %struct.result* %46, i64 1
  %53 = getelementptr inbounds %struct.result, %struct.result* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.result, %struct.result* %52, i32 0, i32 1
  store i8* inttoptr (i64 1000 to i8*), i8** %54, align 8
  %55 = getelementptr inbounds %struct.result, %struct.result* %52, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.result, %struct.result* %52, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %56, align 8
  %57 = getelementptr inbounds %struct.result, %struct.result* %52, i32 0, i32 4
  store i32 ptrtoint ([7 x i8]* @.str.9 to i32), i32* %57, align 8
  %58 = getelementptr inbounds %struct.result, %struct.result* %52, i64 1
  %59 = getelementptr inbounds %struct.result, %struct.result* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.result, %struct.result* %58, i32 0, i32 1
  store i8* inttoptr (i64 1000 to i8*), i8** %60, align 8
  %61 = getelementptr inbounds %struct.result, %struct.result* %58, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %61, align 8
  %62 = getelementptr inbounds %struct.result, %struct.result* %58, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds %struct.result, %struct.result* %58, i32 0, i32 4
  store i32 ptrtoint ([11 x i8]* @.str.10 to i32), i32* %63, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 4
  %64 = load %struct.evsel*, %struct.evsel** %3, align 8
  %65 = load i32, i32* @CALLCHAIN, align 4
  %66 = call i32 @perf_evsel__reset_sample_bit(%struct.evsel* %64, i32 %65)
  %67 = call i32 @setup_sorting(i32* null)
  %68 = call i32 @callchain_register_param(i32* @callchain_param)
  %69 = load %struct.hists*, %struct.hists** %6, align 8
  %70 = load %struct.machine*, %struct.machine** %4, align 8
  %71 = call i32 @add_hist_entries(%struct.hists* %69, %struct.machine* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %2
  br label %81

75:                                               ; preds = %2
  %76 = load %struct.hists*, %struct.hists** %6, align 8
  %77 = getelementptr inbounds [9 x %struct.result], [9 x %struct.result]* %7, i64 0, i64 0
  %78 = getelementptr inbounds [9 x %struct.result], [9 x %struct.result]* %7, i64 0, i64 0
  %79 = call i32 @ARRAY_SIZE(%struct.result* %78)
  %80 = call i32 @do_test(%struct.hists* %76, %struct.result* %77, i32 %79, i32* null, i32 0)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %75, %74
  %82 = load %struct.hists*, %struct.hists** %6, align 8
  %83 = call i32 @del_hist_entries(%struct.hists* %82)
  %84 = call i32 (...) @reset_output_field()
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.hists* @evsel__hists(%struct.evsel*) #1

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

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
