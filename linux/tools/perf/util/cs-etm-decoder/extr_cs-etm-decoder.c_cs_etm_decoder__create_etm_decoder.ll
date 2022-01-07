; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__create_etm_decoder.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__create_etm_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_decoder_params = type { i64 }
%struct.cs_etm_trace_params = type { i32 }
%struct.cs_etm_decoder = type { i32 }

@CS_ETM_OPERATION_PRINT = common dso_local global i64 0, align 8
@CS_ETM_OPERATION_DECODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_decoder_params*, %struct.cs_etm_trace_params*, %struct.cs_etm_decoder*)* @cs_etm_decoder__create_etm_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_decoder__create_etm_decoder(%struct.cs_etm_decoder_params* %0, %struct.cs_etm_trace_params* %1, %struct.cs_etm_decoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_etm_decoder_params*, align 8
  %6 = alloca %struct.cs_etm_trace_params*, align 8
  %7 = alloca %struct.cs_etm_decoder*, align 8
  store %struct.cs_etm_decoder_params* %0, %struct.cs_etm_decoder_params** %5, align 8
  store %struct.cs_etm_trace_params* %1, %struct.cs_etm_trace_params** %6, align 8
  store %struct.cs_etm_decoder* %2, %struct.cs_etm_decoder** %7, align 8
  %8 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %5, align 8
  %9 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CS_ETM_OPERATION_PRINT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %6, align 8
  %15 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %7, align 8
  %16 = call i32 @cs_etm_decoder__create_etm_packet_printer(%struct.cs_etm_trace_params* %14, %struct.cs_etm_decoder* %15)
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %5, align 8
  %19 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CS_ETM_OPERATION_DECODE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %6, align 8
  %25 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %7, align 8
  %26 = call i32 @cs_etm_decoder__create_etm_packet_decoder(%struct.cs_etm_trace_params* %24, %struct.cs_etm_decoder* %25)
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %23, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @cs_etm_decoder__create_etm_packet_printer(%struct.cs_etm_trace_params*, %struct.cs_etm_decoder*) #1

declare dso_local i32 @cs_etm_decoder__create_etm_packet_decoder(%struct.cs_etm_trace_params*, %struct.cs_etm_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
