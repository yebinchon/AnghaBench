; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c___perf_session__process_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c___perf_session__process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, %struct.ordered_events, %struct.perf_tool*, %struct.TYPE_2__, i32 }
%struct.ordered_events = type { i32 }
%struct.perf_tool = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.reader = type { i64, i32, i32, i32 }
%struct.ui_progress = type { i32 }

@process_simple = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Processing events...\00", align 1
@OE_FLUSH__FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*)* @__perf_session__process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_session__process_events(%struct.perf_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca %struct.reader, align 8
  %5 = alloca %struct.ordered_events*, align 8
  %6 = alloca %struct.perf_tool*, align 8
  %7 = alloca %struct.ui_progress, align 4
  %8 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  %9 = getelementptr inbounds %struct.reader, %struct.reader* %4, i32 0, i32 0
  %10 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %11 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = getelementptr inbounds %struct.reader, %struct.reader* %4, i32 0, i32 1
  %15 = load i32, i32* @process_simple, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.reader, %struct.reader* %4, i32 0, i32 2
  %17 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %18 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %16, align 4
  %21 = getelementptr inbounds %struct.reader, %struct.reader* %4, i32 0, i32 3
  %22 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %23 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @perf_data__fd(i32 %24)
  store i32 %25, i32* %21, align 8
  %26 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %27 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %26, i32 0, i32 1
  store %struct.ordered_events* %27, %struct.ordered_events** %5, align 8
  %28 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %29 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %28, i32 0, i32 2
  %30 = load %struct.perf_tool*, %struct.perf_tool** %29, align 8
  store %struct.perf_tool* %30, %struct.perf_tool** %6, align 8
  %31 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %32 = call i32 @perf_tool__fill_defaults(%struct.perf_tool* %31)
  %33 = getelementptr inbounds %struct.reader, %struct.reader* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %81

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.reader, %struct.reader* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ui_progress__init_size(%struct.ui_progress* %7, i64 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %42 = call i32 @reader__process_events(%struct.reader* %4, %struct.perf_session* %41, %struct.ui_progress* %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %63

46:                                               ; preds = %37
  %47 = load %struct.ordered_events*, %struct.ordered_events** %5, align 8
  %48 = load i32, i32* @OE_FLUSH__FINAL, align 4
  %49 = call i32 @ordered_events__flush(%struct.ordered_events* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %63

53:                                               ; preds = %46
  %54 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %55 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %56 = call i32 @auxtrace__flush_events(%struct.perf_session* %54, %struct.perf_tool* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %63

60:                                               ; preds = %53
  %61 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %62 = call i32 @perf_session__flush_thread_stacks(%struct.perf_session* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %59, %52, %45
  %64 = call i32 (...) @ui_progress__finish()
  %65 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %66 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %71 = call i32 @perf_session__warn_about_errors(%struct.perf_session* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %74 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %73, i32 0, i32 1
  %75 = call i32 @ordered_events__reinit(%struct.ordered_events* %74)
  %76 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %77 = call i32 @auxtrace__free_events(%struct.perf_session* %76)
  %78 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %79 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %72, %36
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @perf_data__fd(i32) #1

declare dso_local i32 @perf_tool__fill_defaults(%struct.perf_tool*) #1

declare dso_local i32 @ui_progress__init_size(%struct.ui_progress*, i64, i8*) #1

declare dso_local i32 @reader__process_events(%struct.reader*, %struct.perf_session*, %struct.ui_progress*) #1

declare dso_local i32 @ordered_events__flush(%struct.ordered_events*, i32) #1

declare dso_local i32 @auxtrace__flush_events(%struct.perf_session*, %struct.perf_tool*) #1

declare dso_local i32 @perf_session__flush_thread_stacks(%struct.perf_session*) #1

declare dso_local i32 @ui_progress__finish(...) #1

declare dso_local i32 @perf_session__warn_about_errors(%struct.perf_session*) #1

declare dso_local i32 @ordered_events__reinit(%struct.ordered_events*) #1

declare dso_local i32 @auxtrace__free_events(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
