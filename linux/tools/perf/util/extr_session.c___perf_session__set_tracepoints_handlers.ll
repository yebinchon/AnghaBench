; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c___perf_session__set_tracepoints_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c___perf_session__set_tracepoints_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }
%struct.evsel_str_handler = type { i32*, i32 }
%struct.evsel = type { i32* }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__perf_session__set_tracepoints_handlers(%struct.perf_session* %0, %struct.evsel_str_handler* %1, i64 %2) #0 {
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca %struct.evsel_str_handler*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store %struct.evsel_str_handler* %1, %struct.evsel_str_handler** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %16 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.evsel_str_handler*, %struct.evsel_str_handler** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %18, i64 %19
  %21 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.evsel* @perf_evlist__find_tracepoint_by_name(i32 %17, i32 %22)
  store %struct.evsel* %23, %struct.evsel** %7, align 8
  %24 = load %struct.evsel*, %struct.evsel** %7, align 8
  %25 = icmp eq %struct.evsel* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %43

27:                                               ; preds = %14
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.evsel*, %struct.evsel** %7, align 8
  %31 = getelementptr inbounds %struct.evsel, %struct.evsel* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %47

35:                                               ; preds = %27
  %36 = load %struct.evsel_str_handler*, %struct.evsel_str_handler** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %36, i64 %37
  %39 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.evsel*, %struct.evsel** %7, align 8
  %42 = getelementptr inbounds %struct.evsel, %struct.evsel* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  br label %43

43:                                               ; preds = %35, %26
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %10

46:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local %struct.evsel* @perf_evlist__find_tracepoint_by_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
