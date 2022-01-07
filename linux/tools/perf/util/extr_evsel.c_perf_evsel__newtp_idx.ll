; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__newtp_idx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__newtp_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.evsel = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32 }

@perf_evsel__object = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evsel* @perf_evsel__newtp_idx(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_event_attr, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @perf_evsel__object, i32 0, i32 0), align 4
  %12 = call %struct.evsel* @zalloc(i32 %11)
  store %struct.evsel* %12, %struct.evsel** %8, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.evsel*, %struct.evsel** %8, align 8
  %16 = icmp eq %struct.evsel* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %74

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 0
  %20 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %21 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %19, align 4
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 3
  %30 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  store i32 %30, i32* %29, align 4
  %31 = load %struct.evsel*, %struct.evsel** %8, align 8
  %32 = getelementptr inbounds %struct.evsel, %struct.evsel* %31, i32 0, i32 0
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @asprintf(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %68

38:                                               ; preds = %18
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.TYPE_5__* @trace_event__tp_format(i8* %39, i8* %40)
  %42 = load %struct.evsel*, %struct.evsel** %8, align 8
  %43 = getelementptr inbounds %struct.evsel, %struct.evsel* %42, i32 0, i32 1
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.evsel*, %struct.evsel** %8, align 8
  %45 = getelementptr inbounds %struct.evsel, %struct.evsel* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i64 @IS_ERR(%struct.TYPE_5__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.evsel*, %struct.evsel** %8, align 8
  %51 = getelementptr inbounds %struct.evsel, %struct.evsel* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.TYPE_5__* %52)
  store i32 %53, i32* %9, align 4
  br label %68

54:                                               ; preds = %38
  %55 = call i32 @event_attr_init(%struct.perf_event_attr* %10)
  %56 = load %struct.evsel*, %struct.evsel** %8, align 8
  %57 = getelementptr inbounds %struct.evsel, %struct.evsel* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.evsel*, %struct.evsel** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @evsel__init(%struct.evsel* %63, %struct.perf_event_attr* %10, i32 %64)
  br label %66

66:                                               ; preds = %54
  %67 = load %struct.evsel*, %struct.evsel** %8, align 8
  store %struct.evsel* %67, %struct.evsel** %4, align 8
  br label %77

68:                                               ; preds = %49, %37
  %69 = load %struct.evsel*, %struct.evsel** %8, align 8
  %70 = getelementptr inbounds %struct.evsel, %struct.evsel* %69, i32 0, i32 0
  %71 = call i32 @zfree(i32* %70)
  %72 = load %struct.evsel*, %struct.evsel** %8, align 8
  %73 = call i32 @free(%struct.evsel* %72)
  br label %74

74:                                               ; preds = %68, %17
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.evsel* @ERR_PTR(i32 %75)
  store %struct.evsel* %76, %struct.evsel** %4, align 8
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.evsel*, %struct.evsel** %4, align 8
  ret %struct.evsel* %78
}

declare dso_local %struct.evsel* @zalloc(i32) #1

declare dso_local i64 @asprintf(i32*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @trace_event__tp_format(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local i32 @evsel__init(%struct.evsel*, %struct.perf_event_attr*, i32) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @free(%struct.evsel*) #1

declare dso_local %struct.evsel* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
