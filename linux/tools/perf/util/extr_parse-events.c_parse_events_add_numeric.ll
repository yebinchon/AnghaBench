; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_add_numeric.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_add_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_state = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32, i32 }

@config_terms = common dso_local global i32 0, align 4
@config_term_common = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_add_numeric(%struct.parse_events_state* %0, %struct.list_head* %1, i32 %2, i32 %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.parse_events_state*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.perf_event_attr, align 4
  store %struct.parse_events_state* %0, %struct.parse_events_state** %7, align 8
  store %struct.list_head* %1, %struct.list_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  %13 = load i32, i32* @config_terms, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = call i32 @memset(%struct.perf_event_attr* %12, i32 0, i32 8)
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.list_head*, %struct.list_head** %11, align 8
  %21 = icmp ne %struct.list_head* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %5
  %23 = load %struct.list_head*, %struct.list_head** %11, align 8
  %24 = load %struct.parse_events_state*, %struct.parse_events_state** %7, align 8
  %25 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @config_term_common, align 4
  %28 = call i64 @config_attr(%struct.perf_event_attr* %12, %struct.list_head* %23, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %48

33:                                               ; preds = %22
  %34 = load %struct.list_head*, %struct.list_head** %11, align 8
  %35 = call i64 @get_config_terms(%struct.list_head* %34, i32* @config_terms)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %48

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %5
  %42 = load %struct.list_head*, %struct.list_head** %8, align 8
  %43 = load %struct.parse_events_state*, %struct.parse_events_state** %7, align 8
  %44 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %43, i32 0, i32 0
  %45 = load %struct.list_head*, %struct.list_head** %11, align 8
  %46 = call i32 @get_config_name(%struct.list_head* %45)
  %47 = call i32 @add_event(%struct.list_head* %42, i32* %44, %struct.perf_event_attr* %12, i32 %46, i32* @config_terms)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %41, %37, %30
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i64 @config_attr(%struct.perf_event_attr*, %struct.list_head*, i32, i32) #1

declare dso_local i64 @get_config_terms(%struct.list_head*, i32*) #1

declare dso_local i32 @add_event(%struct.list_head*, i32*, %struct.perf_event_attr*, i32, i32*) #1

declare dso_local i32 @get_config_name(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
