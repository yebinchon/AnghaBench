; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_is_event_supported.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_is_event_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32 }
%struct.perf_thread_map = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @is_event_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_event_supported(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.perf_event_attr, align 4
  %10 = alloca %struct.perf_thread_map*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 2
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %14, align 4
  %16 = call %struct.perf_thread_map* @thread_map__new_by_tid(i32 0)
  store %struct.perf_thread_map* %16, %struct.perf_thread_map** %10, align 8
  %17 = load %struct.perf_thread_map*, %struct.perf_thread_map** %10, align 8
  %18 = icmp eq %struct.perf_thread_map* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = call %struct.evsel* @evsel__new(%struct.perf_event_attr* %9)
  store %struct.evsel* %21, %struct.evsel** %8, align 8
  %22 = load %struct.evsel*, %struct.evsel** %8, align 8
  %23 = icmp ne %struct.evsel* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.evsel*, %struct.evsel** %8, align 8
  %26 = load %struct.perf_thread_map*, %struct.perf_thread_map** %10, align 8
  %27 = call i32 @evsel__open(%struct.evsel* %25, i32* null, %struct.perf_thread_map* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @EACCES, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.evsel*, %struct.evsel** %8, align 8
  %37 = getelementptr inbounds %struct.evsel, %struct.evsel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.evsel*, %struct.evsel** %8, align 8
  %41 = load %struct.perf_thread_map*, %struct.perf_thread_map** %10, align 8
  %42 = call i32 @evsel__open(%struct.evsel* %40, i32* null, %struct.perf_thread_map* %41)
  %43 = icmp sge i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %35, %24
  %46 = load %struct.evsel*, %struct.evsel** %8, align 8
  %47 = call i32 @evsel__delete(%struct.evsel* %46)
  br label %48

48:                                               ; preds = %45, %20
  %49 = load %struct.perf_thread_map*, %struct.perf_thread_map** %10, align 8
  %50 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.perf_thread_map* @thread_map__new_by_tid(i32) #1

declare dso_local %struct.evsel* @evsel__new(%struct.perf_event_attr*) #1

declare dso_local i32 @evsel__open(%struct.evsel*, i32*, %struct.perf_thread_map*) #1

declare dso_local i32 @evsel__delete(%struct.evsel*) #1

declare dso_local i32 @perf_thread_map__put(%struct.perf_thread_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
