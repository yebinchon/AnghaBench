; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__new_idx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__new_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.evsel = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.perf_event_attr = type { i32 }

@perf_evsel__object = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@perf_evsel__new_idx.unit = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [5 x i8] c"msec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evsel* @perf_evsel__new_idx(%struct.perf_event_attr* %0, i32 %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evsel*, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @perf_evsel__object, i32 0, i32 0), align 4
  %8 = call %struct.evsel* @zalloc(i32 %7)
  store %struct.evsel* %8, %struct.evsel** %6, align 8
  %9 = load %struct.evsel*, %struct.evsel** %6, align 8
  %10 = icmp ne %struct.evsel* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.evsel* null, %struct.evsel** %3, align 8
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.evsel*, %struct.evsel** %6, align 8
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @evsel__init(%struct.evsel* %13, %struct.perf_event_attr* %14, i32 %15)
  %17 = load %struct.evsel*, %struct.evsel** %6, align 8
  %18 = call i64 @perf_evsel__is_bpf_output(%struct.evsel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %22 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.evsel*, %struct.evsel** %6, align 8
  %29 = getelementptr inbounds %struct.evsel, %struct.evsel* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load %struct.evsel*, %struct.evsel** %6, align 8
  %35 = getelementptr inbounds %struct.evsel, %struct.evsel* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %20, %12
  %39 = load %struct.evsel*, %struct.evsel** %6, align 8
  %40 = call i64 @perf_evsel__is_clock(%struct.evsel* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** @perf_evsel__new_idx.unit, align 8
  %44 = load %struct.evsel*, %struct.evsel** %6, align 8
  %45 = getelementptr inbounds %struct.evsel, %struct.evsel* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.evsel*, %struct.evsel** %6, align 8
  %47 = getelementptr inbounds %struct.evsel, %struct.evsel* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.evsel*, %struct.evsel** %6, align 8
  store %struct.evsel* %49, %struct.evsel** %3, align 8
  br label %50

50:                                               ; preds = %48, %11
  %51 = load %struct.evsel*, %struct.evsel** %3, align 8
  ret %struct.evsel* %51
}

declare dso_local %struct.evsel* @zalloc(i32) #1

declare dso_local i32 @evsel__init(%struct.evsel*, %struct.perf_event_attr*, i32) #1

declare dso_local i64 @perf_evsel__is_bpf_output(%struct.evsel*) #1

declare dso_local i64 @perf_evsel__is_clock(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
