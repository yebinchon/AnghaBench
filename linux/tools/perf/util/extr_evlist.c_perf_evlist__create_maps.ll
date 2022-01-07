; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__create_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__create_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.target = type { i32, i32, i32, i32, i64, i64 }
%struct.perf_cpu_map = type { i32 }
%struct.perf_thread_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__create_maps(%struct.evlist* %0, %struct.target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca %struct.target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_cpu_map*, align 8
  %8 = alloca %struct.perf_thread_map*, align 8
  store %struct.evlist* %0, %struct.evlist** %4, align 8
  store %struct.target* %1, %struct.target** %5, align 8
  %9 = load %struct.target*, %struct.target** %5, align 8
  %10 = getelementptr inbounds %struct.target, %struct.target* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.target*, %struct.target** %5, align 8
  %15 = getelementptr inbounds %struct.target, %struct.target* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ false, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.target*, %struct.target** %5, align 8
  %22 = getelementptr inbounds %struct.target, %struct.target* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.target*, %struct.target** %5, align 8
  %25 = getelementptr inbounds %struct.target, %struct.target* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.target*, %struct.target** %5, align 8
  %28 = getelementptr inbounds %struct.target, %struct.target* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.perf_thread_map* @thread_map__new_str(i32 %23, i32 %26, i32 %29, i32 %30)
  store %struct.perf_thread_map* %31, %struct.perf_thread_map** %8, align 8
  %32 = load %struct.perf_thread_map*, %struct.perf_thread_map** %8, align 8
  %33 = icmp ne %struct.perf_thread_map* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %69

35:                                               ; preds = %18
  %36 = load %struct.target*, %struct.target** %5, align 8
  %37 = call i64 @target__uses_dummy_map(%struct.target* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call %struct.perf_cpu_map* (...) @perf_cpu_map__dummy_new()
  store %struct.perf_cpu_map* %40, %struct.perf_cpu_map** %7, align 8
  br label %46

41:                                               ; preds = %35
  %42 = load %struct.target*, %struct.target** %5, align 8
  %43 = getelementptr inbounds %struct.target, %struct.target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32 %44)
  store %struct.perf_cpu_map* %45, %struct.perf_cpu_map** %7, align 8
  br label %46

46:                                               ; preds = %41, %39
  %47 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %7, align 8
  %48 = icmp ne %struct.perf_cpu_map* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %66

50:                                               ; preds = %46
  %51 = load %struct.target*, %struct.target** %5, align 8
  %52 = getelementptr inbounds %struct.target, %struct.target* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.evlist*, %struct.evlist** %4, align 8
  %59 = getelementptr inbounds %struct.evlist, %struct.evlist* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.evlist*, %struct.evlist** %4, align 8
  %62 = getelementptr inbounds %struct.evlist, %struct.evlist* %61, i32 0, i32 0
  %63 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %7, align 8
  %64 = load %struct.perf_thread_map*, %struct.perf_thread_map** %8, align 8
  %65 = call i32 @perf_evlist__set_maps(%struct.TYPE_2__* %62, %struct.perf_cpu_map* %63, %struct.perf_thread_map* %64)
  store i32 0, i32* %3, align 4
  br label %69

66:                                               ; preds = %49
  %67 = load %struct.perf_thread_map*, %struct.perf_thread_map** %8, align 8
  %68 = call i32 @perf_thread_map__put(%struct.perf_thread_map* %67)
  store i32 -1, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %50, %34
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.perf_thread_map* @thread_map__new_str(i32, i32, i32, i32) #1

declare dso_local i64 @target__uses_dummy_map(%struct.target*) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__dummy_new(...) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32) #1

declare dso_local i32 @perf_evlist__set_maps(%struct.TYPE_2__*, %struct.perf_cpu_map*, %struct.perf_thread_map*) #1

declare dso_local i32 @perf_thread_map__put(%struct.perf_thread_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
