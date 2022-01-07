; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, i64 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32, i32, i32, i64 }
%struct.thread = type { i32 }

@NSEC_PER_MSEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [27 x i8] c"%22s %10.3f %s %d/%d [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, %struct.evsel*, %struct.perf_sample*, %struct.thread*)* @trace__fprintf_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__fprintf_sample(%struct.trace* %0, %struct.evsel* %1, %struct.perf_sample* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.trace*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store %struct.trace* %0, %struct.trace** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.trace*, %struct.trace** %5, align 8
  %12 = getelementptr inbounds %struct.trace, %struct.trace* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %4
  %16 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %17 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to double
  %20 = load double, double* @NSEC_PER_MSEC, align 8
  %21 = fdiv double %19, %20
  store double %21, double* %10, align 8
  %22 = load %struct.trace*, %struct.trace** %5, align 8
  %23 = getelementptr inbounds %struct.trace, %struct.trace* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.evsel*, %struct.evsel** %6, align 8
  %26 = call i8* @perf_evsel__name(%struct.evsel* %25)
  %27 = load double, double* %10, align 8
  %28 = load %struct.thread*, %struct.thread** %8, align 8
  %29 = call i8* @thread__comm_str(%struct.thread* %28)
  %30 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %31 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %34 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %37 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @fprintf(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %26, double %27, i8* %29, i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %15, %4
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i64 @fprintf(i32, i8*, i8*, double, i8*, i32, i32, i32) #1

declare dso_local i8* @perf_evsel__name(%struct.evsel*) #1

declare dso_local i8* @thread__comm_str(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
