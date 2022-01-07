; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__gen_etmv4_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__gen_etmv4_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_trace_params = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@ARCH_V8 = common dso_local global i32 0, align 4
@profile_CortexA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_etm_trace_params*, %struct.TYPE_5__*)* @cs_etm_decoder__gen_etmv4_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm_decoder__gen_etmv4_config(%struct.cs_etm_trace_params* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.cs_etm_trace_params*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.cs_etm_trace_params* %0, %struct.cs_etm_trace_params** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %3, align 8
  %6 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 12
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %3, align 8
  %12 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 8
  %17 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %3, align 8
  %18 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 4
  %23 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %3, align 8
  %24 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %3, align 8
  %30 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %3, align 8
  %36 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @ARCH_V8, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @profile_CortexA, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
