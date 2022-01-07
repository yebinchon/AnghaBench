; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__fprintf_cpu_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_perf_event__fprintf_cpu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_cpu_map = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get cpumap from event\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_event__fprintf_cpu_map(%union.perf_event* %0, i32* %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca i64, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %union.perf_event*, %union.perf_event** %3, align 8
  %8 = bitcast %union.perf_event* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call %struct.perf_cpu_map* @cpu_map__new_data(i32* %9)
  store %struct.perf_cpu_map* %10, %struct.perf_cpu_map** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @fprintf(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %6, align 8
  %13 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %14 = icmp ne %struct.perf_cpu_map* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @cpu_map__fprintf(%struct.perf_cpu_map* %16, i32* %17)
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %6, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @fprintf(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %28 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %27)
  %29 = load i64, i64* %6, align 8
  ret i64 %29
}

declare dso_local %struct.perf_cpu_map* @cpu_map__new_data(i32*) #1

declare dso_local i64 @fprintf(i32*, i8*) #1

declare dso_local i64 @cpu_map__fprintf(%struct.perf_cpu_map*, i32*) #1

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
