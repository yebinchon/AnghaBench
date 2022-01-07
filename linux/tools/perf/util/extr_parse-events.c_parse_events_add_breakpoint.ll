; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_add_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_add_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HW_BREAKPOINT_X = common dso_local global i64 0, align 8
@HW_BREAKPOINT_LEN_4 = common dso_local global i32 0, align 4
@PERF_TYPE_BREAKPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_add_breakpoint(%struct.list_head* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_event_attr, align 8
  store %struct.list_head* %0, %struct.list_head** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = call i32 @memset(%struct.perf_event_attr* %12, i32 0, i32 32)
  %14 = load i8*, i8** %9, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i64 @parse_breakpoint_type(i8* %17, %struct.perf_event_attr* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %44

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HW_BREAKPOINT_X, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 8, i32* %11, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @HW_BREAKPOINT_LEN_4, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %32, %31
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @PERF_TYPE_BREAKPOINT, align 4
  %39 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 3
  store i32 1, i32* %40, align 4
  %41 = load %struct.list_head*, %struct.list_head** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @add_event(%struct.list_head* %41, i32* %42, %struct.perf_event_attr* %12, i32* null, i32* null)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %35, %20
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i64 @parse_breakpoint_type(i8*, %struct.perf_event_attr*) #1

declare dso_local i32 @add_event(%struct.list_head*, i32*, %struct.perf_event_attr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
