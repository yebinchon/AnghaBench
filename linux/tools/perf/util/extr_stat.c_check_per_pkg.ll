; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_check_per_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat.c_check_per_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i64*, i32 }
%struct.perf_counts_values = type { i64, i64 }
%struct.perf_cpu_map = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_counts_values*, i32, i32*)* @check_per_pkg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_per_pkg(%struct.evsel* %0, %struct.perf_counts_values* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca %struct.perf_counts_values*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.perf_cpu_map*, align 8
  %12 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %6, align 8
  store %struct.perf_counts_values* %1, %struct.perf_counts_values** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.evsel*, %struct.evsel** %6, align 8
  %14 = getelementptr inbounds %struct.evsel, %struct.evsel* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %10, align 8
  %16 = load %struct.evsel*, %struct.evsel** %6, align 8
  %17 = call %struct.perf_cpu_map* @evsel__cpus(%struct.evsel* %16)
  store %struct.perf_cpu_map* %17, %struct.perf_cpu_map** %11, align 8
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.evsel*, %struct.evsel** %6, align 8
  %20 = getelementptr inbounds %struct.evsel, %struct.evsel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %11, align 8
  %26 = call i64 @perf_cpu_map__empty(%struct.perf_cpu_map* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %69

29:                                               ; preds = %24
  %30 = load i64*, i64** %10, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = call i32 (...) @cpu__max_cpu()
  %34 = call i64* @zalloc(i32 %33)
  store i64* %34, i64** %10, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %69

40:                                               ; preds = %32
  %41 = load i64*, i64** %10, align 8
  %42 = load %struct.evsel*, %struct.evsel** %6, align 8
  %43 = getelementptr inbounds %struct.evsel, %struct.evsel* %42, i32 0, i32 0
  store i64* %41, i64** %43, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.perf_counts_values*, %struct.perf_counts_values** %7, align 8
  %46 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.perf_counts_values*, %struct.perf_counts_values** %7, align 8
  %51 = getelementptr inbounds %struct.perf_counts_values, %struct.perf_counts_values* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %44
  store i32 0, i32* %5, align 4
  br label %69

55:                                               ; preds = %49
  %56 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @cpu_map__get_socket(%struct.perf_cpu_map* %56, i32 %57, i32* null)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %69

62:                                               ; preds = %55
  %63 = load i32, i32* %12, align 4
  %64 = load i64*, i64** %10, align 8
  %65 = call i32 @test_and_set_bit(i32 %63, i64* %64)
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %61, %54, %37, %28, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.perf_cpu_map* @evsel__cpus(%struct.evsel*) #1

declare dso_local i64 @perf_cpu_map__empty(%struct.perf_cpu_map*) #1

declare dso_local i64* @zalloc(i32) #1

declare dso_local i32 @cpu__max_cpu(...) #1

declare dso_local i32 @cpu_map__get_socket(%struct.perf_cpu_map*, i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
