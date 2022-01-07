; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.parse_events_error = type { i32 }
%struct.parse_events_state = type { i64, i32, %struct.evlist*, %struct.parse_events_error*, i32 }
%struct.evsel = type { i32 }

@PE_START_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WARNING: event parser found nothing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events(%struct.evlist* %0, i8* %1, %struct.parse_events_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.parse_events_error*, align 8
  %8 = alloca %struct.parse_events_state, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.parse_events_error* %2, %struct.parse_events_error** %7, align 8
  %11 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 1
  %13 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @LIST_HEAD_INIT(i32 %14)
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 2
  %17 = load %struct.evlist*, %struct.evlist** %5, align 8
  store %struct.evlist* %17, %struct.evlist** %16, align 8
  %18 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 3
  %19 = load %struct.parse_events_error*, %struct.parse_events_error** %7, align 8
  store %struct.parse_events_error* %19, %struct.parse_events_error** %18, align 8
  %20 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 4
  %21 = load %struct.evlist*, %struct.evlist** %5, align 8
  %22 = getelementptr inbounds %struct.evlist, %struct.evlist* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %20, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @PE_START_EVENTS, align 4
  %27 = call i32 @parse_events__scanner(i8* %25, %struct.parse_events_state* %8, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = call i32 (...) @perf_pmu__parse_cleanup()
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 1
  %33 = call i64 @list_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %55

37:                                               ; preds = %31
  %38 = load %struct.evlist*, %struct.evlist** %5, align 8
  %39 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 1
  %40 = call i32 @perf_evlist__splice_list_tail(%struct.evlist* %38, i32* %39)
  %41 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.evlist*, %struct.evlist** %5, align 8
  %44 = getelementptr inbounds %struct.evlist, %struct.evlist* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.evlist*, %struct.evlist** %5, align 8
  %50 = call %struct.evsel* @evlist__last(%struct.evlist* %49)
  store %struct.evsel* %50, %struct.evsel** %10, align 8
  %51 = load %struct.evsel*, %struct.evsel** %10, align 8
  %52 = getelementptr inbounds %struct.evsel, %struct.evsel* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %37, %35
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @LIST_HEAD_INIT(i32) #1

declare dso_local i32 @parse_events__scanner(i8*, %struct.parse_events_state*, i32) #1

declare dso_local i32 @perf_pmu__parse_cleanup(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @perf_evlist__splice_list_tail(%struct.evlist*, i32*) #1

declare dso_local %struct.evsel* @evlist__last(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
