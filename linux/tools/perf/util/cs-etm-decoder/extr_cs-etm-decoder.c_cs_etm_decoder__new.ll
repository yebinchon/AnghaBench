; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_decoder = type { i64, i32, i32 }
%struct.cs_etm_decoder_params = type { i64, i64, i64, i64, i32 }
%struct.cs_etm_trace_params = type { i32 }

@OCSD_RESP_CONT = common dso_local global i32 0, align 4
@OCSD_TRC_SRC_FRAME_FORMATTED = common dso_local global i32 0, align 4
@OCSD_TRC_SRC_SINGLE = common dso_local global i32 0, align 4
@OCSD_DFRMTR_HAS_FSYNCS = common dso_local global i32 0, align 4
@OCSD_DFRMTR_HAS_HSYNCS = common dso_local global i32 0, align 4
@OCSD_DFRMTR_FRAME_MEM_ALIGN = common dso_local global i32 0, align 4
@OCSD_DFRMTR_RESET_ON_4X_FSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cs_etm_decoder* @cs_etm_decoder__new(i32 %0, %struct.cs_etm_decoder_params* %1, %struct.cs_etm_trace_params* %2) #0 {
  %4 = alloca %struct.cs_etm_decoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_etm_decoder_params*, align 8
  %7 = alloca %struct.cs_etm_trace_params*, align 8
  %8 = alloca %struct.cs_etm_decoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cs_etm_decoder_params* %1, %struct.cs_etm_decoder_params** %6, align 8
  store %struct.cs_etm_trace_params* %2, %struct.cs_etm_trace_params** %7, align 8
  %13 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %7, align 8
  %14 = icmp ne %struct.cs_etm_trace_params* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %17 = icmp ne %struct.cs_etm_decoder_params* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %3
  store %struct.cs_etm_decoder* null, %struct.cs_etm_decoder** %4, align 8
  br label %124

19:                                               ; preds = %15
  %20 = call %struct.cs_etm_decoder* @zalloc(i32 16)
  store %struct.cs_etm_decoder* %20, %struct.cs_etm_decoder** %8, align 8
  %21 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %22 = icmp ne %struct.cs_etm_decoder* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store %struct.cs_etm_decoder* null, %struct.cs_etm_decoder** %4, align 8
  br label %124

24:                                               ; preds = %19
  %25 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %26 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %29 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @OCSD_RESP_CONT, align 4
  %31 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %32 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %34 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @OCSD_TRC_SRC_FRAME_FORMATTED, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @OCSD_TRC_SRC_SINGLE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %43 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %44 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @OCSD_DFRMTR_HAS_FSYNCS, align 4
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %55 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @OCSD_DFRMTR_HAS_HSYNCS, align 4
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %66 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @OCSD_DFRMTR_FRAME_MEM_ALIGN, align 4
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* @OCSD_DFRMTR_RESET_ON_4X_FSYNC, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @ocsd_create_dcd_tree(i32 %79, i32 %80)
  %82 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %83 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %85 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %121

89:                                               ; preds = %72
  %90 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %91 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %92 = call i32 @cs_etm_decoder__init_def_logger_printing(%struct.cs_etm_decoder_params* %90, %struct.cs_etm_decoder* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %121

96:                                               ; preds = %89
  %97 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %98 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %99 = call i32 @cs_etm_decoder__init_raw_frame_logging(%struct.cs_etm_decoder_params* %97, %struct.cs_etm_decoder* %98)
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %116, %96
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %6, align 8
  %106 = load %struct.cs_etm_trace_params*, %struct.cs_etm_trace_params** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cs_etm_trace_params, %struct.cs_etm_trace_params* %106, i64 %108
  %110 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %111 = call i32 @cs_etm_decoder__create_etm_decoder(%struct.cs_etm_decoder_params* %105, %struct.cs_etm_trace_params* %109, %struct.cs_etm_decoder* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %121

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %100

119:                                              ; preds = %100
  %120 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  store %struct.cs_etm_decoder* %120, %struct.cs_etm_decoder** %4, align 8
  br label %124

121:                                              ; preds = %114, %95, %88
  %122 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %8, align 8
  %123 = call i32 @cs_etm_decoder__free(%struct.cs_etm_decoder* %122)
  store %struct.cs_etm_decoder* null, %struct.cs_etm_decoder** %4, align 8
  br label %124

124:                                              ; preds = %121, %119, %23, %18
  %125 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %4, align 8
  ret %struct.cs_etm_decoder* %125
}

declare dso_local %struct.cs_etm_decoder* @zalloc(i32) #1

declare dso_local i64 @ocsd_create_dcd_tree(i32, i32) #1

declare dso_local i32 @cs_etm_decoder__init_def_logger_printing(%struct.cs_etm_decoder_params*, %struct.cs_etm_decoder*) #1

declare dso_local i32 @cs_etm_decoder__init_raw_frame_logging(%struct.cs_etm_decoder_params*, %struct.cs_etm_decoder*) #1

declare dso_local i32 @cs_etm_decoder__create_etm_decoder(%struct.cs_etm_decoder_params*, %struct.cs_etm_trace_params*, %struct.cs_etm_decoder*) #1

declare dso_local i32 @cs_etm_decoder__free(%struct.cs_etm_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
