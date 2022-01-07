; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_evlist__deliver_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_evlist__deliver_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }
%struct.perf_tool = type { i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)* }
%struct.perf_sample = type opaque
%struct.evsel = type opaque
%struct.machine = type opaque
%union.perf_event = type { i32 }
%struct.perf_sample.0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.evsel.1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.machine.2 = type { i32 }

@PERF_SAMPLE_READ = common dso_local global i32 0, align 4
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*, %struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, %struct.evsel.1*, %struct.machine.2*)* @perf_evlist__deliver_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evlist__deliver_sample(%struct.evlist* %0, %struct.perf_tool* %1, %union.perf_event* %2, %struct.perf_sample.0* %3, %struct.evsel.1* %4, %struct.machine.2* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca %struct.perf_tool*, align 8
  %10 = alloca %union.perf_event*, align 8
  %11 = alloca %struct.perf_sample.0*, align 8
  %12 = alloca %struct.evsel.1*, align 8
  %13 = alloca %struct.machine.2*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %8, align 8
  store %struct.perf_tool* %1, %struct.perf_tool** %9, align 8
  store %union.perf_event* %2, %union.perf_event** %10, align 8
  store %struct.perf_sample.0* %3, %struct.perf_sample.0** %11, align 8
  store %struct.evsel.1* %4, %struct.evsel.1** %12, align 8
  store %struct.machine.2* %5, %struct.machine.2** %13, align 8
  %16 = load %struct.evsel.1*, %struct.evsel.1** %12, align 8
  %17 = getelementptr inbounds %struct.evsel.1, %struct.evsel.1* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.evsel.1*, %struct.evsel.1** %12, align 8
  %22 = getelementptr inbounds %struct.evsel.1, %struct.evsel.1* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @PERF_SAMPLE_READ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %6
  %31 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %32 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %31, i32 0, i32 0
  %33 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_sample*, %struct.evsel*, %struct.machine*)** %32, align 8
  %34 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %35 = load %union.perf_event*, %union.perf_event** %10, align 8
  %36 = load %struct.perf_sample.0*, %struct.perf_sample.0** %11, align 8
  %37 = bitcast %struct.perf_sample.0* %36 to %struct.perf_sample*
  %38 = load %struct.evsel.1*, %struct.evsel.1** %12, align 8
  %39 = bitcast %struct.evsel.1* %38 to %struct.evsel*
  %40 = load %struct.machine.2*, %struct.machine.2** %13, align 8
  %41 = bitcast %struct.machine.2* %40 to %struct.machine*
  %42 = call i32 %33(%struct.perf_tool* %34, %union.perf_event* %35, %struct.perf_sample* %37, %struct.evsel* %39, %struct.machine* %41)
  store i32 %42, i32* %7, align 4
  br label %65

43:                                               ; preds = %6
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.evlist*, %struct.evlist** %8, align 8
  %50 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %51 = load %union.perf_event*, %union.perf_event** %10, align 8
  %52 = load %struct.perf_sample.0*, %struct.perf_sample.0** %11, align 8
  %53 = load %struct.machine.2*, %struct.machine.2** %13, align 8
  %54 = call i32 @deliver_sample_group(%struct.evlist* %49, %struct.perf_tool* %50, %union.perf_event* %51, %struct.perf_sample.0* %52, %struct.machine.2* %53)
  store i32 %54, i32* %7, align 4
  br label %65

55:                                               ; preds = %43
  %56 = load %struct.evlist*, %struct.evlist** %8, align 8
  %57 = load %struct.perf_tool*, %struct.perf_tool** %9, align 8
  %58 = load %union.perf_event*, %union.perf_event** %10, align 8
  %59 = load %struct.perf_sample.0*, %struct.perf_sample.0** %11, align 8
  %60 = load %struct.perf_sample.0*, %struct.perf_sample.0** %11, align 8
  %61 = getelementptr inbounds %struct.perf_sample.0, %struct.perf_sample.0* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.machine.2*, %struct.machine.2** %13, align 8
  %64 = call i32 @deliver_sample_value(%struct.evlist* %56, %struct.perf_tool* %57, %union.perf_event* %58, %struct.perf_sample.0* %59, i32* %62, %struct.machine.2* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %55, %48, %30
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @deliver_sample_group(%struct.evlist*, %struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, %struct.machine.2*) #1

declare dso_local i32 @deliver_sample_value(%struct.evlist*, %struct.perf_tool*, %union.perf_event*, %struct.perf_sample.0*, i32*, %struct.machine.2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
