; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__dump_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__dump_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_auxtrace = type { i32 }
%struct.auxtrace_buffer = type { i64, i64, i32 }
%struct.cs_etm_decoder_params = type { i32 }
%struct.cs_etm_trace_params = type { i32 }
%struct.cs_etm_decoder = type { i32 }

@PERF_COLOR_BLUE = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c". ... CoreSight ETM Trace data: size %zu bytes\0A\00", align 1
@CS_ETM_OPERATION_PRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_etm_auxtrace*, %struct.auxtrace_buffer*)* @cs_etm__dump_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm__dump_event(%struct.cs_etm_auxtrace* %0, %struct.auxtrace_buffer* %1) #0 {
  %3 = alloca %struct.cs_etm_auxtrace*, align 8
  %4 = alloca %struct.auxtrace_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cs_etm_decoder_params, align 4
  %8 = alloca %struct.cs_etm_trace_params*, align 8
  %9 = alloca %struct.cs_etm_decoder*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cs_etm_auxtrace* %0, %struct.cs_etm_auxtrace** %3, align 8
  store %struct.auxtrace_buffer* %1, %struct.auxtrace_buffer** %4, align 8
  %12 = load i8*, i8** @PERF_COLOR_BLUE, align 8
  store i8* %12, i8** %6, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @stdout, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @color_fprintf(i32 %15, i8* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %22 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call %struct.cs_etm_trace_params* @zalloc(i32 %26)
  store %struct.cs_etm_trace_params* %27, %struct.cs_etm_trace_params** %8, align 8
  %28 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %8, align 8
  %29 = icmp ne %struct.cs_etm_trace_params* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %87

31:                                               ; preds = %2
  %32 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %8, align 8
  %33 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %34 = call i64 @cs_etm__init_trace_params(%struct.cs_etm_trace_params* %32, %struct.cs_etm_auxtrace* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %85

37:                                               ; preds = %31
  %38 = load i32, i32* @CS_ETM_OPERATION_PRINT, align 4
  %39 = call i64 @cs_etm__init_decoder_params(%struct.cs_etm_decoder_params* %7, i32* null, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %85

42:                                               ; preds = %37
  %43 = load %struct.cs_etm_auxtrace*, %struct.cs_etm_auxtrace** %3, align 8
  %44 = getelementptr inbounds %struct.cs_etm_auxtrace, %struct.cs_etm_auxtrace* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %8, align 8
  %47 = call %struct.cs_etm_decoder* @cs_etm_decoder__new(i32 %45, %struct.cs_etm_decoder_params* %7, %struct.cs_etm_trace_params* %46)
  store %struct.cs_etm_decoder* %47, %struct.cs_etm_decoder** %9, align 8
  %48 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %9, align 8
  %49 = icmp ne %struct.cs_etm_decoder* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %85

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %76, %51
  %53 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %9, align 8
  %54 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub i64 %65, %66
  %68 = call i32 @cs_etm_decoder__process_data_block(%struct.cs_etm_decoder* %53, i32 %56, i32* %62, i64 %67, i64* %11)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  br label %82

72:                                               ; preds = %52
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %52, label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %9, align 8
  %84 = call i32 @cs_etm_decoder__free(%struct.cs_etm_decoder* %83)
  br label %85

85:                                               ; preds = %82, %50, %41, %36
  %86 = call i32 @zfree(%struct.cs_etm_trace_params** %8)
  br label %87

87:                                               ; preds = %85, %30
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @color_fprintf(i32, i8*, i8*, i64) #1

declare dso_local %struct.cs_etm_trace_params* @zalloc(i32) #1

declare dso_local i64 @cs_etm__init_trace_params(%struct.cs_etm_trace_params*, %struct.cs_etm_auxtrace*) #1

declare dso_local i64 @cs_etm__init_decoder_params(%struct.cs_etm_decoder_params*, i32*, i32) #1

declare dso_local %struct.cs_etm_decoder* @cs_etm_decoder__new(i32, %struct.cs_etm_decoder_params*, %struct.cs_etm_trace_params*) #1

declare dso_local i32 @cs_etm_decoder__process_data_block(%struct.cs_etm_decoder*, i32, i32*, i64, i64*) #1

declare dso_local i32 @cs_etm_decoder__free(%struct.cs_etm_decoder*) #1

declare dso_local i32 @zfree(%struct.cs_etm_trace_params**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
