; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_report__config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_report__config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { double }
%struct.report = type { double, i32 }

@.str = private unnamed_addr constant [13 x i8] c"report.group\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"report.percent-limit\00", align 1
@callchain_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"report.children\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"report.queue-size\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"report.sort_order\00", align 1
@default_sort_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @report__config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report__config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.report*, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.report*
  store %struct.report* %11, %struct.report** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @perf_config_bool(i8* %16, i8* %17)
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 1), align 8
  store i32 0, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = call double @strtof(i8* %24, i32* null)
  store double %25, double* %9, align 8
  %26 = load double, double* %9, align 8
  %27 = load %struct.report*, %struct.report** %8, align 8
  %28 = getelementptr inbounds %struct.report, %struct.report* %27, i32 0, i32 0
  store double %26, double* %28, align 8
  %29 = load double, double* %9, align 8
  store double %29, double* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @callchain_param, i32 0, i32 0), align 8
  store i32 0, i32* %4, align 4
  br label %56

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @perf_config_bool(i8* %35, i8* %36)
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 0), align 8
  store i32 0, i32* %4, align 4
  br label %56

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load %struct.report*, %struct.report** %8, align 8
  %44 = getelementptr inbounds %struct.report, %struct.report* %43, i32 0, i32 1
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @perf_config_u64(i32* %44, i8* %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %56

48:                                               ; preds = %38
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strdup(i8* %53)
  store i32 %54, i32* @default_sort_order, align 4
  store i32 0, i32* %4, align 4
  br label %56

55:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52, %42, %34, %23, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @perf_config_bool(i8*, i8*) #1

declare dso_local double @strtof(i8*, i32*) #1

declare dso_local i32 @perf_config_u64(i32*, i8*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
