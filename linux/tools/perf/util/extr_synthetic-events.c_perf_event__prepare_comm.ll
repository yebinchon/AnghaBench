; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__prepare_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__prepare_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.machine = type { i64, i32 }

@PERF_RECORD_COMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.perf_event*, i64, %struct.machine*, i64*, i64*)* @perf_event__prepare_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__prepare_comm(%union.perf_event* %0, i64 %1, %struct.machine* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %union.perf_event* %0, %union.perf_event** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.machine* %2, %struct.machine** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i64*, i64** %11, align 8
  store i64 -1, i64* %13, align 8
  %14 = load %union.perf_event*, %union.perf_event** %7, align 8
  %15 = bitcast %union.perf_event* %14 to %struct.TYPE_6__*
  %16 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 32)
  %17 = load %struct.machine*, %struct.machine** %9, align 8
  %18 = call i64 @machine__is_host(%struct.machine* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load %union.perf_event*, %union.perf_event** %7, align 8
  %23 = bitcast %union.perf_event* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = call i64 @perf_event__get_comm_ids(i64 %21, %struct.TYPE_6__* %25, i32 8, i64* %26, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %89

31:                                               ; preds = %20
  br label %37

32:                                               ; preds = %5
  %33 = load %struct.machine*, %struct.machine** %9, align 8
  %34 = getelementptr inbounds %struct.machine, %struct.machine* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %10, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %31
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %89

42:                                               ; preds = %37
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load %union.perf_event*, %union.perf_event** %7, align 8
  %46 = bitcast %union.perf_event* %45 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* @PERF_RECORD_COMM, align 4
  %49 = load %union.perf_event*, %union.perf_event** %7, align 8
  %50 = bitcast %union.perf_event* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %union.perf_event*, %union.perf_event** %7, align 8
  %54 = bitcast %union.perf_event* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @strlen(%struct.TYPE_6__* %56)
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @PERF_ALIGN(i64 %60, i32 4)
  store i64 %61, i64* %12, align 8
  %62 = load %union.perf_event*, %union.perf_event** %7, align 8
  %63 = bitcast %union.perf_event* %62 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %66
  %68 = load %struct.machine*, %struct.machine** %9, align 8
  %69 = getelementptr inbounds %struct.machine, %struct.machine* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memset(%struct.TYPE_6__* %67, i32 0, i32 %70)
  %72 = load i64, i64* %12, align 8
  %73 = sub i64 8, %72
  %74 = sub i64 32, %73
  %75 = load %struct.machine*, %struct.machine** %9, align 8
  %76 = getelementptr inbounds %struct.machine, %struct.machine* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add i64 %74, %78
  %80 = trunc i64 %79 to i32
  %81 = load %union.perf_event*, %union.perf_event** %7, align 8
  %82 = bitcast %union.perf_event* %81 to %struct.TYPE_6__*
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %union.perf_event*, %union.perf_event** %7, align 8
  %87 = bitcast %union.perf_event* %86 to %struct.TYPE_6__*
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %42, %41, %30
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local i64 @perf_event__get_comm_ids(i64, %struct.TYPE_6__*, i32, i64*, i64*) #1

declare dso_local i32 @strlen(%struct.TYPE_6__*) #1

declare dso_local i64 @PERF_ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
