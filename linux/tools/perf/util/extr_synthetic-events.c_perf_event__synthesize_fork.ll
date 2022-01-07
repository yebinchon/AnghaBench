; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__synthesize_fork.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__synthesize_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.machine = type { i64 }

@PERF_RECORD_FORK = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_FORK_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_tool*, %union.perf_event*, i64, i64, i64, i32, %struct.machine*)* @perf_event__synthesize_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__synthesize_fork(%struct.perf_tool* %0, %union.perf_event* %1, i64 %2, i64 %3, i64 %4, i32 %5, %struct.machine* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_tool*, align 8
  %10 = alloca %union.perf_event*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.machine*, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %9, align 8
  store %union.perf_event* %1, %union.perf_event** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.machine* %6, %struct.machine** %15, align 8
  %16 = load %union.perf_event*, %union.perf_event** %10, align 8
  %17 = bitcast %union.perf_event* %16 to %struct.TYPE_4__*
  %18 = load %struct.machine*, %struct.machine** %15, align 8
  %19 = getelementptr inbounds %struct.machine, %struct.machine* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 48, %20
  %22 = call i32 @memset(%struct.TYPE_4__* %17, i32 0, i64 %21)
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %7
  %27 = load i64, i64* %13, align 8
  %28 = load %union.perf_event*, %union.perf_event** %10, align 8
  %29 = bitcast %union.perf_event* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %union.perf_event*, %union.perf_event** %10, align 8
  %33 = bitcast %union.perf_event* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i64 %31, i64* %34, align 8
  br label %44

35:                                               ; preds = %7
  %36 = load i64, i64* %12, align 8
  %37 = load %union.perf_event*, %union.perf_event** %10, align 8
  %38 = bitcast %union.perf_event* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %union.perf_event*, %union.perf_event** %10, align 8
  %42 = bitcast %union.perf_event* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %35, %26
  %45 = load i64, i64* %12, align 8
  %46 = load %union.perf_event*, %union.perf_event** %10, align 8
  %47 = bitcast %union.perf_event* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %union.perf_event*, %union.perf_event** %10, align 8
  %51 = bitcast %union.perf_event* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 %49, i64* %52, align 8
  %53 = load i32, i32* @PERF_RECORD_FORK, align 4
  %54 = load %union.perf_event*, %union.perf_event** %10, align 8
  %55 = bitcast %union.perf_event* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @PERF_RECORD_MISC_FORK_EXEC, align 4
  %59 = load %union.perf_event*, %union.perf_event** %10, align 8
  %60 = bitcast %union.perf_event* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 8
  %63 = load %struct.machine*, %struct.machine** %15, align 8
  %64 = getelementptr inbounds %struct.machine, %struct.machine* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 48, %65
  %67 = load %union.perf_event*, %union.perf_event** %10, align 8
  %68 = bitcast %union.perf_event* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %66, i64* %70, align 8
  %71 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %72 = load %union.perf_event*, %union.perf_event** %10, align 8
  %73 = load %struct.machine*, %struct.machine** %15, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @perf_tool__process_synth_event(%struct.perf_tool* %71, %union.perf_event* %72, %struct.machine* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %44
  store i32 -1, i32* %8, align 4
  br label %79

78:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i64 @perf_tool__process_synth_event(%struct.perf_tool*, %union.perf_event*, %struct.machine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
