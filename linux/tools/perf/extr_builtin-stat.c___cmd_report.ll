; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c___cmd_report.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c___cmd_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.perf_session*, i32, %struct.TYPE_6__, i32 }
%struct.perf_session = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.option = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"input file name\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"per-socket\00", align 1
@perf_stat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"aggregate counts per processor socket\00", align 1
@AGGR_SOCKET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"per-die\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"aggregate counts per processor die\00", align 1
@AGGR_DIE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"per-core\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"aggregate counts per physical processor core\00", align 1
@AGGR_CORE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"no-aggr\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"disable CPU count aggregation\00", align 1
@AGGR_NONE = common dso_local global i32 0, align 4
@stat_report_usage = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"perf.data\00", align 1
@PERF_DATA_MODE_READ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@stat_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@evsel_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @__cmd_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_report(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca [6 x %struct.option], align 16
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %7, i64 0, i64 0
  %11 = call i32 @OPT_STRING(i8 signext 105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** @input_name, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.option, %struct.option* %10, i64 1
  %14 = load i32, i32* @AGGR_SOCKET, align 4
  %15 = call i32 @OPT_SET_UINT(i8 signext 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 3), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %18 = load i32, i32* @AGGR_DIE, align 4
  %19 = call i32 @OPT_SET_UINT(i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 3), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %22 = load i32, i32* @AGGR_CORE, align 4
  %23 = call i32 @OPT_SET_UINT(i8 signext 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 3), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %26 = load i32, i32* @AGGR_NONE, align 4
  %27 = call i32 @OPT_SET_UINT(i8 signext 65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 3), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = call i32 (...) @OPT_END()
  %31 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %7, i64 0, i64 0
  %35 = load i32, i32* @stat_report_usage, align 4
  %36 = call i32 @parse_options(i32 %32, i8** %33, %struct.option* %34, i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  %37 = load i8*, i8** @input_name, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i8*, i8** @input_name, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39, %2
  %44 = load i32, i32* @STDIN_FILENO, align 4
  %45 = call i32 @fstat(i32 %44, %struct.stat* %8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISFIFO(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** @input_name, align 8
  br label %54

53:                                               ; preds = %47, %43
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** @input_name, align 8
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i8*, i8** @input_name, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 2, i32 0), align 8
  %57 = load i32, i32* @PERF_DATA_MODE_READ, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 2, i32 1), align 8
  %58 = call %struct.perf_session* @perf_session__new(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 2), i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 1))
  store %struct.perf_session* %58, %struct.perf_session** %6, align 8
  %59 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %60 = call i64 @IS_ERR(%struct.perf_session* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %64 = call i32 @PTR_ERR(%struct.perf_session* %63)
  store i32 %64, i32* %3, align 4
  br label %80

65:                                               ; preds = %55
  %66 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  store %struct.perf_session* %66, %struct.perf_session** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @perf_stat, i32 0, i32 0), align 8
  %67 = load i32, i32* @stderr, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stat_config, i32 0, i32 0), align 4
  %68 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %69 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* @evsel_list, align 4
  %71 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %72 = call i32 @perf_session__process_events(%struct.perf_session* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %65
  %78 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %79 = call i32 @perf_session__delete(%struct.perf_session* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %75, %62
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i8**, i8*, i8*) #1

declare dso_local i32 @OPT_SET_UINT(i8 signext, i8*, i32*, i8*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, %struct.option*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local %struct.perf_session* @perf_session__new(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_session*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_session*) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
