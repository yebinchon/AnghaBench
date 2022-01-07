; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__create_etm_packet_printer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__create_etm_packet_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_trace_params = type { i32 }
%struct.cs_etm_decoder = type { i32 }

@OCSD_BUILTIN_DCD_ETMV3 = common dso_local global i8* null, align 8
@OCSD_BUILTIN_DCD_PTM = common dso_local global i8* null, align 8
@OCSD_BUILTIN_DCD_ETMV4I = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_trace_params*, %struct.cs_etm_decoder*)* @cs_etm_decoder__create_etm_packet_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_decoder__create_etm_packet_printer(%struct.cs_etm_trace_params* %0, %struct.cs_etm_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_trace_params*, align 8
  %5 = alloca %struct.cs_etm_decoder*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.cs_etm_trace_params* %0, %struct.cs_etm_trace_params** %4, align 8
  store %struct.cs_etm_decoder* %1, %struct.cs_etm_decoder** %5, align 8
  %10 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %11 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %32 [
    i32 130, label %13
    i32 128, label %13
    i32 129, label %27
  ]

13:                                               ; preds = %2, %2
  %14 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %15 = call i32 @cs_etm_decoder__gen_etmv3_config(%struct.cs_etm_trace_params* %14, i32* %7)
  %16 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %17 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 130
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i8*, i8** @OCSD_BUILTIN_DCD_ETMV3, align 8
  br label %24

22:                                               ; preds = %13
  %23 = load i8*, i8** @OCSD_BUILTIN_DCD_PTM, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i8* [ %21, %20 ], [ %23, %22 ]
  store i8* %25, i8** %6, align 8
  %26 = bitcast i32* %7 to i8*
  store i8* %26, i8** %9, align 8
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %29 = call i32 @cs_etm_decoder__gen_etmv4_config(%struct.cs_etm_trace_params* %28, i32* %8)
  %30 = load i8*, i8** @OCSD_BUILTIN_DCD_ETMV4I, align 8
  store i8* %30, i8** %6, align 8
  %31 = bitcast i32* %8 to i8*
  store i8* %31, i8** %9, align 8
  br label %33

32:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

33:                                               ; preds = %27, %24
  %34 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @cs_etm_decoder__create_packet_printer(%struct.cs_etm_decoder* %34, i8* %35, i8* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @cs_etm_decoder__gen_etmv3_config(%struct.cs_etm_trace_params*, i32*) #1

declare dso_local i32 @cs_etm_decoder__gen_etmv4_config(%struct.cs_etm_trace_params*, i32*) #1

declare dso_local i32 @cs_etm_decoder__create_packet_printer(%struct.cs_etm_decoder*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
