; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_evlist.c___perf_evlist__propagate_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_evlist.c___perf_evlist__propagate_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i64, i32, i64 }
%struct.perf_evsel = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_evlist*, %struct.perf_evsel*)* @__perf_evlist__propagate_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_evlist__propagate_maps(%struct.perf_evlist* %0, %struct.perf_evsel* %1) #0 {
  %3 = alloca %struct.perf_evlist*, align 8
  %4 = alloca %struct.perf_evsel*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %3, align 8
  store %struct.perf_evsel* %1, %struct.perf_evsel** %4, align 8
  %5 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %6 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %11 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9, %2
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %16 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @perf_cpu_map__put(i64 %17)
  %19 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %20 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @perf_cpu_map__get(i64 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %25 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %47

26:                                               ; preds = %9
  %27 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %28 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %31 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %36 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @perf_cpu_map__put(i64 %37)
  %39 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %40 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @perf_cpu_map__get(i64 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %45 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %34, %26
  br label %47

47:                                               ; preds = %46, %14
  %48 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %49 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @perf_thread_map__put(i32 %50)
  %52 = load %struct.perf_evlist*, %struct.perf_evlist** %3, align 8
  %53 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @perf_thread_map__get(i32 %54)
  %56 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %57 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  ret void
}

declare dso_local i32 @perf_cpu_map__put(i64) #1

declare dso_local i8* @perf_cpu_map__get(i64) #1

declare dso_local i32 @perf_thread_map__put(i32) #1

declare dso_local i32 @perf_thread_map__get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
