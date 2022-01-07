; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_compr_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_compr_runtime = type { i32, i32, %struct.q6asm_dai_rtd* }
%struct.q6asm_dai_rtd = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.snd_compr_params = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.q6asm_dai_data = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"private data null or audio client freed\0A\00", align 1
@SND_COMPRESS_PLAYBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"q6asm_open_write failed\0A\00", align 1
@LEGACY_PCM_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Stream reg failed ret:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Buffer Mapping failed ret:%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@Q6ASM_STREAM_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*)* @q6asm_dai_compr_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_compr_set_params(%struct.snd_compr_stream* %0, %struct.snd_compr_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_params*, align 8
  %6 = alloca %struct.snd_compr_runtime*, align 8
  %7 = alloca %struct.q6asm_dai_rtd*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.q6asm_dai_data*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_params* %1, %struct.snd_compr_params** %5, align 8
  %14 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %14, i32 0, i32 2
  %16 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %15, align 8
  store %struct.snd_compr_runtime* %16, %struct.snd_compr_runtime** %6, align 8
  %17 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %17, i32 0, i32 2
  %19 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %18, align 8
  store %struct.q6asm_dai_rtd* %19, %struct.q6asm_dai_rtd** %7, align 8
  %20 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %20, i32 0, i32 1
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %21, align 8
  store %struct.snd_soc_pcm_runtime* %22, %struct.snd_soc_pcm_runtime** %8, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %24 = load i32, i32* @DRV_NAME, align 4
  %25 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %23, i32 %24)
  store %struct.snd_soc_component* %25, %struct.snd_soc_component** %9, align 8
  %26 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %12, align 8
  %32 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %33 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %32, i32 0, i32 8
  %34 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %35 = call i32 @memcpy(i32* %33, %struct.snd_compr_params* %34, i32 4)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %37 = call %struct.q6asm_dai_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %36)
  store %struct.q6asm_dai_data* %37, %struct.q6asm_dai_data** %11, align 8
  %38 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %11, align 8
  %39 = icmp ne %struct.q6asm_dai_data* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %162

43:                                               ; preds = %2
  %44 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %45 = icmp ne %struct.q6asm_dai_rtd* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %48 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.device*, %struct.device** %12, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %162

56:                                               ; preds = %46
  %57 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %58 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %61 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %63 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %66 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %68 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %71 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %75 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %77 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %76, i32 0, i32 3
  store i32 16, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @SND_COMPRESS_PLAYBACK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %56
  %82 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %83 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %86 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %90 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @q6asm_open_write(i32* %84, i32 %88, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %81
  %96 = load %struct.device*, %struct.device** %12, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %99 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @q6asm_audio_client_free(i32* %100)
  %102 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %103 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %102, i32 0, i32 6
  store i32* null, i32** %103, align 8
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %3, align 4
  br label %162

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105, %56
  %107 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %108 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @q6asm_get_session_id(i32* %109)
  %111 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %112 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 8
  %113 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %114 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @LEGACY_PCM_MODE, align 4
  %119 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %120 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @q6routing_stream_open(i32 %117, i32 %118, i32 %121, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %106
  %127 = load %struct.device*, %struct.device** %12, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %3, align 4
  br label %162

131:                                              ; preds = %106
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %134 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %137 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %140 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %143 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sdiv i32 %141, %144
  %146 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %147 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @q6asm_map_memory_regions(i32 %132, i32* %135, i32 %138, i32 %145, i32 %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %131
  %153 = load %struct.device*, %struct.device** %12, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %162

158:                                              ; preds = %131
  %159 = load i32, i32* @Q6ASM_STREAM_RUNNING, align 4
  %160 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %7, align 8
  %161 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %158, %152, %126, %95, %51, %40
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.snd_compr_params*, i32) #1

declare dso_local %struct.q6asm_dai_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @q6asm_open_write(i32*, i32, i32) #1

declare dso_local i32 @q6asm_audio_client_free(i32*) #1

declare dso_local i32 @q6asm_get_session_id(i32*) #1

declare dso_local i32 @q6routing_stream_open(i32, i32, i32, i32) #1

declare dso_local i32 @q6asm_map_memory_regions(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
