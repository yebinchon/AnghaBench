; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_set_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.perf_pmu = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"--filter option should follow a -e tracepoint or HW tracer option\0A\00", align 1
@PERF_TYPE_TRACEPOINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"not enough memory to hold filter string\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"nr_addr_filters\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"This CPU does not support address filtering\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i8*)* @set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_filter(%struct.evsel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_pmu*, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.perf_pmu* null, %struct.perf_pmu** %9, align 8
  %11 = load %struct.evsel*, %struct.evsel** %4, align 8
  %12 = icmp eq %struct.evsel* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load %struct.evsel*, %struct.evsel** %4, align 8
  %18 = getelementptr inbounds %struct.evsel, %struct.evsel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PERF_TYPE_TRACEPOINT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.evsel*, %struct.evsel** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @perf_evsel__append_tp_filter(%struct.evsel* %25, i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %71

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %71

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %49, %33
  %35 = load %struct.perf_pmu*, %struct.perf_pmu** %9, align 8
  %36 = call %struct.perf_pmu* @perf_pmu__scan(%struct.perf_pmu* %35)
  store %struct.perf_pmu* %36, %struct.perf_pmu** %9, align 8
  %37 = icmp ne %struct.perf_pmu* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.perf_pmu*, %struct.perf_pmu** %9, align 8
  %40 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.evsel*, %struct.evsel** %4, align 8
  %43 = getelementptr inbounds %struct.evsel, %struct.evsel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %50

49:                                               ; preds = %38
  br label %34

50:                                               ; preds = %48, %34
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.perf_pmu*, %struct.perf_pmu** %9, align 8
  %55 = call i32 @perf_pmu__scan_file(%struct.perf_pmu* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %71

62:                                               ; preds = %56
  %63 = load %struct.evsel*, %struct.evsel** %4, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @perf_evsel__append_addr_filter(%struct.evsel* %63, i8* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %71

70:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67, %59, %32, %29, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @perf_evsel__append_tp_filter(%struct.evsel*, i8*) #1

declare dso_local %struct.perf_pmu* @perf_pmu__scan(%struct.perf_pmu*) #1

declare dso_local i32 @perf_pmu__scan_file(%struct.perf_pmu*, i8*, i8*, i32*) #1

declare dso_local i64 @perf_evsel__append_addr_filter(%struct.evsel*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
