; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__create_etm_packet_decoder.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__create_etm_packet_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_trace_params = type { i32 }
%struct.cs_etm_decoder = type { i32 }

@OCSD_BUILTIN_DCD_ETMV3 = common dso_local global i8* null, align 8
@OCSD_BUILTIN_DCD_PTM = common dso_local global i8* null, align 8
@OCSD_BUILTIN_DCD_ETMV4I = common dso_local global i8* null, align 8
@OCSD_CREATE_FLG_FULL_DECODER = common dso_local global i32 0, align 4
@cs_etm_decoder__gen_trace_elem_printer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_trace_params*, %struct.cs_etm_decoder*)* @cs_etm_decoder__create_etm_packet_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_decoder__create_etm_packet_decoder(%struct.cs_etm_trace_params* %0, %struct.cs_etm_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_trace_params*, align 8
  %5 = alloca %struct.cs_etm_decoder*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.cs_etm_trace_params* %0, %struct.cs_etm_trace_params** %4, align 8
  store %struct.cs_etm_decoder* %1, %struct.cs_etm_decoder** %5, align 8
  %11 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %12 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %33 [
    i32 130, label %14
    i32 128, label %14
    i32 129, label %28
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %16 = call i32 @cs_etm_decoder__gen_etmv3_config(%struct.cs_etm_trace_params* %15, i32* %7)
  %17 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %18 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 130
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i8*, i8** @OCSD_BUILTIN_DCD_ETMV3, align 8
  br label %25

23:                                               ; preds = %14
  %24 = load i8*, i8** @OCSD_BUILTIN_DCD_PTM, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i8* [ %22, %21 ], [ %24, %23 ]
  store i8* %26, i8** %6, align 8
  %27 = bitcast i32* %7 to i8*
  store i8* %27, i8** %9, align 8
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %4, align 8
  %30 = call i32 @cs_etm_decoder__gen_etmv4_config(%struct.cs_etm_trace_params* %29, i32* %8)
  %31 = load i8*, i8** @OCSD_BUILTIN_DCD_ETMV4I, align 8
  store i8* %31, i8** %6, align 8
  %32 = bitcast i32* %8 to i8*
  store i8* %32, i8** %9, align 8
  br label %34

33:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %54

34:                                               ; preds = %28, %25
  %35 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %36 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @OCSD_CREATE_FLG_FULL_DECODER, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @ocsd_dt_create_decoder(i32 %37, i8* %38, i32 %39, i8* %40, i32* %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %54

44:                                               ; preds = %34
  %45 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %46 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @cs_etm_decoder__gen_trace_elem_printer, align 4
  %49 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %50 = call i64 @ocsd_dt_set_gen_elem_outfn(i32 %47, i32 %48, %struct.cs_etm_decoder* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %43, %33
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @cs_etm_decoder__gen_etmv3_config(%struct.cs_etm_trace_params*, i32*) #1

declare dso_local i32 @cs_etm_decoder__gen_etmv4_config(%struct.cs_etm_trace_params*, i32*) #1

declare dso_local i64 @ocsd_dt_create_decoder(i32, i8*, i32, i8*, i32*) #1

declare dso_local i64 @ocsd_dt_set_gen_elem_outfn(i32, i32, %struct.cs_etm_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
