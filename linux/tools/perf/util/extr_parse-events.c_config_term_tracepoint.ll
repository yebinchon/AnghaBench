; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_config_term_tracepoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_config_term_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }
%struct.parse_events_term = type { i32, i32 }
%struct.parse_events_error = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"unknown term\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"valid terms: call-graph,stack-size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event_attr*, %struct.parse_events_term*, %struct.parse_events_error*)* @config_term_tracepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_term_tracepoint(%struct.perf_event_attr* %0, %struct.parse_events_term* %1, %struct.parse_events_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca %struct.parse_events_term*, align 8
  %7 = alloca %struct.parse_events_error*, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %5, align 8
  store %struct.parse_events_term* %1, %struct.parse_events_term** %6, align 8
  store %struct.parse_events_error* %2, %struct.parse_events_error** %7, align 8
  %8 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %9 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %16 [
    i32 135, label %11
    i32 128, label %11
    i32 134, label %11
    i32 131, label %11
    i32 132, label %11
    i32 133, label %11
    i32 129, label %11
    i32 130, label %11
    i32 136, label %11
  ]

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %13 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %14 = load %struct.parse_events_error*, %struct.parse_events_error** %7, align 8
  %15 = call i32 @config_term_common(%struct.perf_event_attr* %12, %struct.parse_events_term* %13, %struct.parse_events_error* %14)
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.parse_events_error*, %struct.parse_events_error** %7, align 8
  %18 = icmp ne %struct.parse_events_error* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.parse_events_term*, %struct.parse_events_term** %6, align 8
  %21 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.parse_events_error*, %struct.parse_events_error** %7, align 8
  %24 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = call i8* @strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.parse_events_error*, %struct.parse_events_error** %7, align 8
  %27 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = call i8* @strdup(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.parse_events_error*, %struct.parse_events_error** %7, align 8
  %30 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %19, %16
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @config_term_common(%struct.perf_event_attr*, %struct.parse_events_term*, %struct.parse_events_error*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
