; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__init_trace_params.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__init_trace_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_trace_params = type { i32 }
%struct.cs_etm_auxtrace = type { i32, i32** }

@CS_ETM_MAGIC = common dso_local global i64 0, align 8
@CS_ETM_ETMIDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_trace_params*, %struct.cs_etm_auxtrace*)* @cs_etm__init_trace_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__init_trace_params(%struct.cs_etm_trace_params* %0, %struct.cs_etm_auxtrace* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_trace_params*, align 8
  %5 = alloca %struct.cs_etm_auxtrace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cs_etm_trace_params* %0, %struct.cs_etm_trace_params** %4, align 8
  store %struct.cs_etm_auxtrace* %1, %struct.cs_etm_auxtrace** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %52, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %5, align 8
  %12 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %9
  %16 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %5, align 8
  %17 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @CS_ETM_MAGIC, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %48 [
    i32 129, label %27
    i32 128, label %43
  ]

27:                                               ; preds = %15
  %28 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %5, align 8
  %29 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @CS_ETM_ETMIDR, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %39 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @cs_etm__set_trace_param_etmv3(%struct.cs_etm_trace_params* %38, %struct.cs_etm_auxtrace* %39, i32 %40, i32 %41)
  br label %51

43:                                               ; preds = %15
  %44 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %45 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cs_etm__set_trace_param_etmv4(%struct.cs_etm_trace_params* %44, %struct.cs_etm_auxtrace* %45, i32 %46)
  br label %51

48:                                               ; preds = %15
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %43, %27
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %9

55:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cs_etm__set_trace_param_etmv3(%struct.cs_etm_trace_params*, %struct.cs_etm_auxtrace*, i32, i32) #1

declare dso_local i32 @cs_etm__set_trace_param_etmv4(%struct.cs_etm_trace_params*, %struct.cs_etm_auxtrace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
