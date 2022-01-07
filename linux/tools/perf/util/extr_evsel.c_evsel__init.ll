; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_evsel__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_evsel__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.evsel*)* }
%struct.evsel = type { i32, i32, i8*, double, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32, %struct.evsel*, i32 }
%struct.perf_event_attr = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@perf_evsel__object = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evsel__init(%struct.evsel* %0, %struct.perf_event_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.evsel*, %struct.evsel** %4, align 8
  %8 = getelementptr inbounds %struct.evsel, %struct.evsel* %7, i32 0, i32 17
  %9 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %10 = call i32 @perf_evsel__init(i32* %8, %struct.perf_event_attr* %9)
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.evsel*, %struct.evsel** %4, align 8
  %13 = getelementptr inbounds %struct.evsel, %struct.evsel* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.evsel*, %struct.evsel** %4, align 8
  %19 = getelementptr inbounds %struct.evsel, %struct.evsel* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.evsel*, %struct.evsel** %4, align 8
  %21 = load %struct.evsel*, %struct.evsel** %4, align 8
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 16
  store %struct.evsel* %20, %struct.evsel** %22, align 8
  %23 = load %struct.evsel*, %struct.evsel** %4, align 8
  %24 = getelementptr inbounds %struct.evsel, %struct.evsel* %23, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.evsel*, %struct.evsel** %4, align 8
  %26 = getelementptr inbounds %struct.evsel, %struct.evsel* %25, i32 0, i32 3
  store double 1.000000e+00, double* %26, align 8
  %27 = load i32, i32* @ULONG_MAX, align 4
  %28 = load %struct.evsel*, %struct.evsel** %4, align 8
  %29 = getelementptr inbounds %struct.evsel, %struct.evsel* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 8
  %30 = load %struct.evsel*, %struct.evsel** %4, align 8
  %31 = getelementptr inbounds %struct.evsel, %struct.evsel* %30, i32 0, i32 14
  store i32* null, i32** %31, align 8
  %32 = load %struct.evsel*, %struct.evsel** %4, align 8
  %33 = getelementptr inbounds %struct.evsel, %struct.evsel* %32, i32 0, i32 13
  store i32* null, i32** %33, align 8
  %34 = load %struct.evsel*, %struct.evsel** %4, align 8
  %35 = getelementptr inbounds %struct.evsel, %struct.evsel* %34, i32 0, i32 4
  store i32 -1, i32* %35, align 8
  %36 = load %struct.evsel*, %struct.evsel** %4, align 8
  %37 = getelementptr inbounds %struct.evsel, %struct.evsel* %36, i32 0, i32 12
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load i32 (%struct.evsel*)*, i32 (%struct.evsel*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @perf_evsel__object, i32 0, i32 0), align 8
  %40 = load %struct.evsel*, %struct.evsel** %4, align 8
  %41 = call i32 %39(%struct.evsel* %40)
  %42 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %43 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__perf_evsel__sample_size(i32 %44)
  %46 = load %struct.evsel*, %struct.evsel** %4, align 8
  %47 = getelementptr inbounds %struct.evsel, %struct.evsel* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 8
  %48 = load %struct.evsel*, %struct.evsel** %4, align 8
  %49 = call i32 @perf_evsel__calc_id_pos(%struct.evsel* %48)
  %50 = load %struct.evsel*, %struct.evsel** %4, align 8
  %51 = getelementptr inbounds %struct.evsel, %struct.evsel* %50, i32 0, i32 5
  store i32 0, i32* %51, align 4
  %52 = load %struct.evsel*, %struct.evsel** %4, align 8
  %53 = getelementptr inbounds %struct.evsel, %struct.evsel* %52, i32 0, i32 10
  store i32* null, i32** %53, align 8
  %54 = load %struct.evsel*, %struct.evsel** %4, align 8
  %55 = getelementptr inbounds %struct.evsel, %struct.evsel* %54, i32 0, i32 9
  store i32* null, i32** %55, align 8
  %56 = load %struct.evsel*, %struct.evsel** %4, align 8
  %57 = getelementptr inbounds %struct.evsel, %struct.evsel* %56, i32 0, i32 8
  store i32* null, i32** %57, align 8
  %58 = load %struct.evsel*, %struct.evsel** %4, align 8
  %59 = getelementptr inbounds %struct.evsel, %struct.evsel* %58, i32 0, i32 6
  store i32 0, i32* %59, align 8
  %60 = load %struct.evsel*, %struct.evsel** %4, align 8
  %61 = getelementptr inbounds %struct.evsel, %struct.evsel* %60, i32 0, i32 7
  store i32* null, i32** %61, align 8
  ret void
}

declare dso_local i32 @perf_evsel__init(i32*, %struct.perf_event_attr*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__perf_evsel__sample_size(i32) #1

declare dso_local i32 @perf_evsel__calc_id_pos(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
