; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_event_tool.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_add_event_tool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.evsel = type { i32, i32 }
%struct.perf_event_attr = type { i32, i32 }

@PERF_COUNT_SW_DUMMY = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PERF_TOOL_DURATION_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32*, i32)* @add_event_tool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_event_tool(%struct.list_head* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.perf_event_attr, align 4
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 0
  %11 = load i32, i32* @PERF_COUNT_SW_DUMMY, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 1
  %13 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.evsel* @__add_event(%struct.list_head* %14, i32* %15, %struct.perf_event_attr* %9, i32* null, i32* null, i32* null, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.evsel* %16, %struct.evsel** %8, align 8
  %17 = load %struct.evsel*, %struct.evsel** %8, align 8
  %18 = icmp ne %struct.evsel* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.evsel*, %struct.evsel** %8, align 8
  %25 = getelementptr inbounds %struct.evsel, %struct.evsel* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PERF_TOOL_DURATION_TIME, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = call i32 @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.evsel*, %struct.evsel** %8, align 8
  %32 = getelementptr inbounds %struct.evsel, %struct.evsel* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %22
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.evsel* @__add_event(%struct.list_head*, i32*, %struct.perf_event_attr*, i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
