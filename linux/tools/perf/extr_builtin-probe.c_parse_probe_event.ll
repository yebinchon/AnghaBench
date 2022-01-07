; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-probe.c_parse_probe_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-probe.c_parse_probe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, %struct.perf_probe_event* }
%struct.perf_probe_event = type { i32, i32, i32, i32 }

@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"probe-definition(%d): %s\0A\00", align 1
@MAX_PROBES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Too many probes (> %d) were specified.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%d arguments\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_probe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_probe_event(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_probe_event*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load %struct.perf_probe_event*, %struct.perf_probe_event** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 5), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %6, i64 %7
  store %struct.perf_probe_event* %8, %struct.perf_probe_event** %4, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %9, i8* %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 8
  %14 = load i64, i64* @MAX_PROBES, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i64, i64* @MAX_PROBES, align 8
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  store i32 -1, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 4), align 8
  %21 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 3), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 3), align 8
  %27 = call i32 @strdup(i64 %26)
  %28 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %29 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %31 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %52

37:                                               ; preds = %25
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 1), align 8
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 2), align 4
  %40 = call i32 @nsinfo__get(i32 %39)
  %41 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %42 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %45 = call i32 @parse_perf_probe_command(i8* %43, %struct.perf_probe_event* %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.perf_probe_event*, %struct.perf_probe_event** %4, align 8
  %47 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %38, %34, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @strdup(i64) #1

declare dso_local i32 @nsinfo__get(i32) #1

declare dso_local i32 @parse_perf_probe_command(i8*, %struct.perf_probe_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
