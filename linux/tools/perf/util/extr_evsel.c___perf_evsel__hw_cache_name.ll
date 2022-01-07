; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c___perf_evsel__hw_cache_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c___perf_evsel__hw_cache_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"unknown-ext-hardware-cache-type\00", align 1
@PERF_COUNT_HW_CACHE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown-ext-hardware-cache-op\00", align 1
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown-ext-hardware-cache-result\00", align 1
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid-cache\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @__perf_evsel__hw_cache_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_evsel__hw_cache_name(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 0
  %14 = and i32 %13, 255
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %10, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @PERF_COUNT_HW_CACHE_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %51

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @PERF_COUNT_HW_CACHE_OP_MAX, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %51

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %51

38:                                               ; preds = %29
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @perf_evsel__is_cache_op_valid(i64 %39, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %51

44:                                               ; preds = %38
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @__perf_evsel__hw_cache_type_op_res_name(i64 %45, i64 %46, i64 %47, i8* %48, i64 %49)
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %43, %37, %28, %19
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @scnprintf(i8* %52, i64 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %44
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @perf_evsel__is_cache_op_valid(i64, i64) #1

declare dso_local i32 @__perf_evsel__hw_cache_type_op_res_name(i64, i64, i64, i8*, i64) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
