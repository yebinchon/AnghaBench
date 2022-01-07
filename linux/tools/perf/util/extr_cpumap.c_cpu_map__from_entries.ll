; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__from_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__from_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32* }
%struct.cpu_map_entries = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_cpu_map* (%struct.cpu_map_entries*)* @cpu_map__from_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_cpu_map* @cpu_map__from_entries(%struct.cpu_map_entries* %0) #0 {
  %2 = alloca %struct.cpu_map_entries*, align 8
  %3 = alloca %struct.perf_cpu_map*, align 8
  %4 = alloca i32, align 4
  store %struct.cpu_map_entries* %0, %struct.cpu_map_entries** %2, align 8
  %5 = load %struct.cpu_map_entries*, %struct.cpu_map_entries** %2, align 8
  %6 = getelementptr inbounds %struct.cpu_map_entries, %struct.cpu_map_entries* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.perf_cpu_map* @perf_cpu_map__empty_new(i32 %7)
  store %struct.perf_cpu_map* %8, %struct.perf_cpu_map** %3, align 8
  %9 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %10 = icmp ne %struct.perf_cpu_map* %9, null
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %50, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.cpu_map_entries*, %struct.cpu_map_entries** %2, align 8
  %15 = getelementptr inbounds %struct.cpu_map_entries, %struct.cpu_map_entries* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %12
  %19 = load %struct.cpu_map_entries*, %struct.cpu_map_entries** %2, align 8
  %20 = getelementptr inbounds %struct.cpu_map_entries, %struct.cpu_map_entries* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %29 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 -1, i32* %33, align 4
  br label %49

34:                                               ; preds = %18
  %35 = load %struct.cpu_map_entries*, %struct.cpu_map_entries** %2, align 8
  %36 = getelementptr inbounds %struct.cpu_map_entries, %struct.cpu_map_entries* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  %44 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %34, %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %12

53:                                               ; preds = %12
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  ret %struct.perf_cpu_map* %55
}

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__empty_new(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
