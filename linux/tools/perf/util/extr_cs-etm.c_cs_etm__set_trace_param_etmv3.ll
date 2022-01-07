; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__set_trace_param_etmv3.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__set_trace_param_etmv3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_trace_params = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.cs_etm_auxtrace = type { i8*** }

@CS_ETM_ETMCR = common dso_local global i64 0, align 8
@CS_ETM_ETMTRACEIDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_etm_trace_params*, %struct.cs_etm_auxtrace*, i32, i32)* @cs_etm__set_trace_param_etmv3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm__set_trace_param_etmv3(%struct.cs_etm_trace_params* %0, %struct.cs_etm_auxtrace* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cs_etm_trace_params*, align 8
  %6 = alloca %struct.cs_etm_auxtrace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  store %struct.cs_etm_trace_params* %0, %struct.cs_etm_trace_params** %5, align 8
  store %struct.cs_etm_auxtrace* %1, %struct.cs_etm_auxtrace** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %6, align 8
  %11 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %10, i32 0, i32 0
  %12 = load i8***, i8**** %11, align 8
  store i8*** %12, i8**** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @cs_etm__get_v7_protocol_version(i32 %13)
  %15 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %15, i64 %17
  %19 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %18, i32 0, i32 1
  store i32 %14, i32* %19, align 8
  %20 = load i8***, i8**** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8**, i8*** %20, i64 %22
  %24 = load i8**, i8*** %23, align 8
  %25 = load i64, i64* @CS_ETM_ETMCR, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %28, i64 %30
  %32 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %27, i8** %33, align 8
  %34 = load i8***, i8**** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8**, i8*** %34, i64 %36
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* @CS_ETM_ETMTRACEIDR, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %42, i64 %44
  %46 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %41, i8** %47, align 8
  ret void
}

declare dso_local i32 @cs_etm__get_v7_protocol_version(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
