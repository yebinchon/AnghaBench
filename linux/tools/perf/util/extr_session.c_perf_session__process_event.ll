; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__process_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_3__, %struct.perf_tool*, %struct.evlist* }
%struct.TYPE_3__ = type { i64 }
%struct.perf_tool = type { i64 }
%struct.evlist = type { i32 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PERF_RECORD_HEADER_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_RECORD_USER_TYPE_START = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*, %union.perf_event*, i64)* @perf_session__process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__process_event(%struct.perf_session* %0, %union.perf_event* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca %struct.perf_tool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.perf_session* %0, %struct.perf_session** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %13 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %12, i32 0, i32 2
  %14 = load %struct.evlist*, %struct.evlist** %13, align 8
  store %struct.evlist* %14, %struct.evlist** %8, align 8
  %15 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %16 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %15, i32 0, i32 1
  %17 = load %struct.perf_tool*, %struct.perf_tool** %16, align 8
  store %struct.perf_tool* %17, %struct.perf_tool** %9, align 8
  %18 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %19 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %union.perf_event*, %union.perf_event** %6, align 8
  %25 = load %struct.evlist*, %struct.evlist** %8, align 8
  %26 = call i32 @perf_evlist__sample_id_all(%struct.evlist* %25)
  %27 = call i32 @event_swap(%union.perf_event* %24, i32 %26)
  br label %28

28:                                               ; preds = %23, %3
  %29 = load %union.perf_event*, %union.perf_event** %6, align 8
  %30 = bitcast %union.perf_event* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PERF_RECORD_HEADER_MAX, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %92

38:                                               ; preds = %28
  %39 = load %struct.evlist*, %struct.evlist** %8, align 8
  %40 = getelementptr inbounds %struct.evlist, %struct.evlist* %39, i32 0, i32 0
  %41 = load %union.perf_event*, %union.perf_event** %6, align 8
  %42 = bitcast %union.perf_event* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @events_stats__inc(i32* %40, i32 %44)
  %46 = load %union.perf_event*, %union.perf_event** %6, align 8
  %47 = bitcast %union.perf_event* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PERF_RECORD_USER_TYPE_START, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %54 = load %union.perf_event*, %union.perf_event** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @perf_session__process_user_event(%struct.perf_session* %53, %union.perf_event* %54, i64 %55)
  store i32 %56, i32* %4, align 4
  br label %92

57:                                               ; preds = %38
  %58 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %59 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  store i64 -1, i64* %11, align 8
  %63 = load %struct.evlist*, %struct.evlist** %8, align 8
  %64 = load %union.perf_event*, %union.perf_event** %6, align 8
  %65 = call i32 @perf_evlist__parse_sample_timestamp(%struct.evlist* %63, %union.perf_event* %64, i64* %11)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %92

73:                                               ; preds = %68, %62
  %74 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %75 = load %union.perf_event*, %union.perf_event** %6, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @perf_session__queue_event(%struct.perf_session* %74, %union.perf_event* %75, i64 %76, i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @ETIME, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %92

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %57
  %87 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %88 = load %union.perf_event*, %union.perf_event** %6, align 8
  %89 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @perf_session__deliver_event(%struct.perf_session* %87, %union.perf_event* %88, %struct.perf_tool* %89, i64 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %83, %71, %52, %35
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @event_swap(%union.perf_event*, i32) #1

declare dso_local i32 @perf_evlist__sample_id_all(%struct.evlist*) #1

declare dso_local i32 @events_stats__inc(i32*, i32) #1

declare dso_local i32 @perf_session__process_user_event(%struct.perf_session*, %union.perf_event*, i64) #1

declare dso_local i32 @perf_evlist__parse_sample_timestamp(%struct.evlist*, %union.perf_event*, i64*) #1

declare dso_local i32 @perf_session__queue_event(%struct.perf_session*, %union.perf_event*, i64, i64) #1

declare dso_local i32 @perf_session__deliver_event(%struct.perf_session*, %union.perf_event*, %struct.perf_tool*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
