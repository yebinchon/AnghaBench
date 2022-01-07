; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c___add_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c___add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i8* }
%struct.perf_event_attr = type { i32 }
%struct.perf_pmu = type { i32, %struct.perf_cpu_map* }
%struct.perf_cpu_map = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evsel* (%struct.list_head*, i32*, %struct.perf_event_attr*, i8*, %struct.perf_pmu*, %struct.list_head*, i32, i8*)* @__add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evsel* @__add_event(%struct.list_head* %0, i32* %1, %struct.perf_event_attr* %2, i8* %3, %struct.perf_pmu* %4, %struct.list_head* %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.perf_event_attr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.perf_pmu*, align 8
  %15 = alloca %struct.list_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.evsel*, align 8
  %19 = alloca %struct.perf_cpu_map*, align 8
  store %struct.list_head* %0, %struct.list_head** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.perf_event_attr* %2, %struct.perf_event_attr** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.perf_pmu* %4, %struct.perf_pmu** %14, align 8
  store %struct.list_head* %5, %struct.list_head** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %20 = load %struct.perf_pmu*, %struct.perf_pmu** %14, align 8
  %21 = icmp ne %struct.perf_pmu* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %8
  %23 = load %struct.perf_pmu*, %struct.perf_pmu** %14, align 8
  %24 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %23, i32 0, i32 1
  %25 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %24, align 8
  br label %35

26:                                               ; preds = %8
  %27 = load i8*, i8** %17, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %17, align 8
  %31 = call %struct.perf_cpu_map* @perf_cpu_map__new(i8* %30)
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi %struct.perf_cpu_map* [ %31, %29 ], [ null, %32 ]
  br label %35

35:                                               ; preds = %33, %22
  %36 = phi %struct.perf_cpu_map* [ %25, %22 ], [ %34, %33 ]
  store %struct.perf_cpu_map* %36, %struct.perf_cpu_map** %19, align 8
  %37 = load %struct.perf_event_attr*, %struct.perf_event_attr** %12, align 8
  %38 = call i32 @event_attr_init(%struct.perf_event_attr* %37)
  %39 = load %struct.perf_event_attr*, %struct.perf_event_attr** %12, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.evsel* @perf_evsel__new_idx(%struct.perf_event_attr* %39, i32 %41)
  store %struct.evsel* %42, %struct.evsel** %18, align 8
  %43 = load %struct.evsel*, %struct.evsel** %18, align 8
  %44 = icmp ne %struct.evsel* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  store %struct.evsel* null, %struct.evsel** %9, align 8
  br label %97

46:                                               ; preds = %35
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %19, align 8
  %51 = call i8* @perf_cpu_map__get(%struct.perf_cpu_map* %50)
  %52 = load %struct.evsel*, %struct.evsel** %18, align 8
  %53 = getelementptr inbounds %struct.evsel, %struct.evsel* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i8* %51, i8** %54, align 8
  %55 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %19, align 8
  %56 = call i8* @perf_cpu_map__get(%struct.perf_cpu_map* %55)
  %57 = load %struct.evsel*, %struct.evsel** %18, align 8
  %58 = getelementptr inbounds %struct.evsel, %struct.evsel* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  %60 = load %struct.perf_pmu*, %struct.perf_pmu** %14, align 8
  %61 = icmp ne %struct.perf_pmu* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load %struct.perf_pmu*, %struct.perf_pmu** %14, align 8
  %64 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  br label %67

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ %65, %62 ], [ 0, %66 ]
  %69 = load %struct.evsel*, %struct.evsel** %18, align 8
  %70 = getelementptr inbounds %struct.evsel, %struct.evsel* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.evsel*, %struct.evsel** %18, align 8
  %74 = getelementptr inbounds %struct.evsel, %struct.evsel* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @strdup(i8* %78)
  %80 = load %struct.evsel*, %struct.evsel** %18, align 8
  %81 = getelementptr inbounds %struct.evsel, %struct.evsel* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %67
  %83 = load %struct.list_head*, %struct.list_head** %15, align 8
  %84 = icmp ne %struct.list_head* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.list_head*, %struct.list_head** %15, align 8
  %87 = load %struct.evsel*, %struct.evsel** %18, align 8
  %88 = getelementptr inbounds %struct.evsel, %struct.evsel* %87, i32 0, i32 2
  %89 = call i32 @list_splice(%struct.list_head* %86, i32* %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.evsel*, %struct.evsel** %18, align 8
  %92 = getelementptr inbounds %struct.evsel, %struct.evsel* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load %struct.list_head*, %struct.list_head** %10, align 8
  %95 = call i32 @list_add_tail(i32* %93, %struct.list_head* %94)
  %96 = load %struct.evsel*, %struct.evsel** %18, align 8
  store %struct.evsel* %96, %struct.evsel** %9, align 8
  br label %97

97:                                               ; preds = %90, %45
  %98 = load %struct.evsel*, %struct.evsel** %9, align 8
  ret %struct.evsel* %98
}

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i8*) #1

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local %struct.evsel* @perf_evsel__new_idx(%struct.perf_event_attr*, i32) #1

declare dso_local i8* @perf_cpu_map__get(%struct.perf_cpu_map*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @list_splice(%struct.list_head*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
