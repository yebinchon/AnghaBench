; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_find_perf_probe_point_from_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_find_perf_probe_point_from_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_point = type { i32, i64, i64, i32, i64 }
%struct.perf_probe_point = type { i64, i64, i32 }
%struct.symbol = type { i32, i32 }
%struct.map = type { i64 (%struct.map*, i32)* }

@ENOENT = common dso_local global i32 0, align 4
@host_machine = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_point*, %struct.perf_probe_point*, i32)* @find_perf_probe_point_from_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_perf_probe_point_from_map(%struct.probe_trace_point* %0, %struct.perf_probe_point* %1, i32 %2) #0 {
  %4 = alloca %struct.probe_trace_point*, align 8
  %5 = alloca %struct.perf_probe_point*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.probe_trace_point* %0, %struct.probe_trace_point** %4, align 8
  store %struct.perf_probe_point* %1, %struct.perf_probe_point** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.symbol* null, %struct.symbol** %7, align 8
  store %struct.map* null, %struct.map** %8, align 8
  %11 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %12 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %20 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.map* @dso__new_map(i32 %21)
  store %struct.map* %22, %struct.map** %8, align 8
  %23 = load %struct.map*, %struct.map** %8, align 8
  %24 = icmp ne %struct.map* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %97

26:                                               ; preds = %18
  %27 = load %struct.map*, %struct.map** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call %struct.symbol* @map__find_symbol(%struct.map* %27, i64 %28)
  store %struct.symbol* %29, %struct.symbol** %7, align 8
  br label %59

30:                                               ; preds = %3
  %31 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %32 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %40 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @kernel_get_symbol_address_by_name(i64 %41, i64* %9, i32 1, i32 0)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %97

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %35, %30
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %51 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i32, i32* @host_machine, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call %struct.symbol* @machine__find_kernel_symbol(i32 %55, i64 %56, %struct.map** %8)
  store %struct.symbol* %57, %struct.symbol** %7, align 8
  br label %58

58:                                               ; preds = %49, %46
  br label %59

59:                                               ; preds = %58, %26
  %60 = load %struct.symbol*, %struct.symbol** %7, align 8
  %61 = icmp ne %struct.symbol* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %97

63:                                               ; preds = %59
  %64 = load %struct.probe_trace_point*, %struct.probe_trace_point** %4, align 8
  %65 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %68 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.map*, %struct.map** %8, align 8
  %71 = getelementptr inbounds %struct.map, %struct.map* %70, i32 0, i32 0
  %72 = load i64 (%struct.map*, i32)*, i64 (%struct.map*, i32)** %71, align 8
  %73 = load %struct.map*, %struct.map** %8, align 8
  %74 = load %struct.symbol*, %struct.symbol** %7, align 8
  %75 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 %72(%struct.map* %73, i32 %76)
  %78 = sub nsw i64 %69, %77
  %79 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %80 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.symbol*, %struct.symbol** %7, align 8
  %82 = getelementptr inbounds %struct.symbol, %struct.symbol* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @strdup(i32 %83)
  %85 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %86 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.perf_probe_point*, %struct.perf_probe_point** %5, align 8
  %88 = getelementptr inbounds %struct.perf_probe_point, %struct.perf_probe_point* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %63
  br label %95

92:                                               ; preds = %63
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  br label %95

95:                                               ; preds = %92, %91
  %96 = phi i32 [ 0, %91 ], [ %94, %92 ]
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %62, %44, %25
  %98 = load %struct.map*, %struct.map** %8, align 8
  %99 = icmp ne %struct.map* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load %struct.map*, %struct.map** %8, align 8
  %105 = call i32 @map__put(%struct.map* %104)
  br label %106

106:                                              ; preds = %103, %100, %97
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local %struct.map* @dso__new_map(i32) #1

declare dso_local %struct.symbol* @map__find_symbol(%struct.map*, i64) #1

declare dso_local i64 @kernel_get_symbol_address_by_name(i64, i64*, i32, i32) #1

declare dso_local %struct.symbol* @machine__find_kernel_symbol(i32, i64, %struct.map**) #1

declare dso_local i64 @strdup(i32) #1

declare dso_local i32 @map__put(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
