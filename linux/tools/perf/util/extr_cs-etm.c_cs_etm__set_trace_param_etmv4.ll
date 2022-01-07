; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__set_trace_param_etmv4.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__set_trace_param_etmv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_trace_params = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cs_etm_auxtrace = type { i8*** }

@CS_ETM_PROTO_ETMV4i = common dso_local global i32 0, align 4
@CS_ETMV4_TRCIDR0 = common dso_local global i64 0, align 8
@CS_ETMV4_TRCIDR1 = common dso_local global i64 0, align 8
@CS_ETMV4_TRCIDR2 = common dso_local global i64 0, align 8
@CS_ETMV4_TRCIDR8 = common dso_local global i64 0, align 8
@CS_ETMV4_TRCCONFIGR = common dso_local global i64 0, align 8
@CS_ETMV4_TRCTRACEIDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_etm_trace_params*, %struct.cs_etm_auxtrace*, i32)* @cs_etm__set_trace_param_etmv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm__set_trace_param_etmv4(%struct.cs_etm_trace_params* %0, %struct.cs_etm_auxtrace* %1, i32 %2) #0 {
  %4 = alloca %struct.cs_etm_trace_params*, align 8
  %5 = alloca %struct.cs_etm_auxtrace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  store %struct.cs_etm_trace_params* %0, %struct.cs_etm_trace_params** %4, align 8
  store %struct.cs_etm_auxtrace* %1, %struct.cs_etm_auxtrace** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %5, align 8
  %9 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %8, i32 0, i32 0
  %10 = load i8***, i8**** %9, align 8
  store i8*** %10, i8**** %7, align 8
  %11 = load i32, i32* @CS_ETM_PROTO_ETMV4i, align 4
  %12 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %12, i64 %14
  %16 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %15, i32 0, i32 1
  store i32 %11, i32* %16, align 8
  %17 = load i8***, i8**** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8**, i8*** %17, i64 %19
  %21 = load i8**, i8*** %20, align 8
  %22 = load i64, i64* @CS_ETMV4_TRCIDR0, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %25, i64 %27
  %29 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store i8* %24, i8** %30, align 8
  %31 = load i8***, i8**** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8**, i8*** %31, i64 %33
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* @CS_ETMV4_TRCIDR1, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %39, i64 %41
  %43 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i8* %38, i8** %44, align 8
  %45 = load i8***, i8**** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8**, i8*** %45, i64 %47
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* @CS_ETMV4_TRCIDR2, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %53, i64 %55
  %57 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i8* %52, i8** %58, align 8
  %59 = load i8***, i8**** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8**, i8*** %59, i64 %61
  %63 = load i8**, i8*** %62, align 8
  %64 = load i64, i64* @CS_ETMV4_TRCIDR8, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %67, i64 %69
  %71 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i8* %66, i8** %72, align 8
  %73 = load i8***, i8**** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8**, i8*** %73, i64 %75
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* @CS_ETMV4_TRCCONFIGR, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %81, i64 %83
  %85 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i8* %80, i8** %86, align 8
  %87 = load i8***, i8**** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8**, i8*** %87, i64 %89
  %91 = load i8**, i8*** %90, align 8
  %92 = load i64, i64* @CS_ETMV4_TRCTRACEIDR, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %95, i64 %97
  %99 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i8* %94, i8** %100, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
