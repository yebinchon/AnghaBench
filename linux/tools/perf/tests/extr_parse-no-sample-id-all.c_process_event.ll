; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-no-sample-id-all.c_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-no-sample-id-all.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.perf_sample = type { i32 }

@PERF_RECORD_HEADER_ATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"perf_event__process_attr failed\0A\00", align 1
@PERF_RECORD_USER_TYPE_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"perf_evlist__parse_sample failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist**, %union.perf_event*)* @process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_event(%struct.evlist** %0, %union.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evlist**, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample, align 4
  store %struct.evlist** %0, %struct.evlist*** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %7 = load %union.perf_event*, %union.perf_event** %5, align 8
  %8 = bitcast %union.perf_event* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PERF_RECORD_HEADER_ATTR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %union.perf_event*, %union.perf_event** %5, align 8
  %15 = load %struct.evlist**, %struct.evlist*** %4, align 8
  %16 = call i64 @perf_event__process_attr(i32* null, %union.perf_event* %14, %struct.evlist** %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %43

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load %union.perf_event*, %union.perf_event** %5, align 8
  %23 = bitcast %union.perf_event* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PERF_RECORD_USER_TYPE_START, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.evlist**, %struct.evlist*** %4, align 8
  %31 = load %struct.evlist*, %struct.evlist** %30, align 8
  %32 = icmp ne %struct.evlist* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %43

34:                                               ; preds = %29
  %35 = load %struct.evlist**, %struct.evlist*** %4, align 8
  %36 = load %struct.evlist*, %struct.evlist** %35, align 8
  %37 = load %union.perf_event*, %union.perf_event** %5, align 8
  %38 = call i64 @perf_evlist__parse_sample(%struct.evlist* %36, %union.perf_event* %37, %struct.perf_sample* %6)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %40, %33, %28, %20, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @perf_event__process_attr(i32*, %union.perf_event*, %struct.evlist**) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @perf_evlist__parse_sample(%struct.evlist*, %union.perf_event*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
