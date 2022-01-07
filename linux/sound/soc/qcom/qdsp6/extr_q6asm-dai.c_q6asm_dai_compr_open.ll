; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm-dai.c_q6asm_dai_compr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.snd_compr_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_compr_runtime = type { %struct.q6asm_dai_rtd* }
%struct.q6asm_dai_rtd = type { i32, i32, i32, %struct.TYPE_5__, %struct.snd_compr_stream* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.q6asm_dai_data = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Drv data not found ..\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@compress_event_handler = common dso_local global i64 0, align 8
@LEGACY_PCM_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not allocate memory\0A\00", align 1
@COMPR_PLAYBACK_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@COMPR_PLAYBACK_MAX_NUM_FRAGMENTS = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot allocate buffer(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @q6asm_dai_compr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_dai_compr_open(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_compr_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.q6asm_dai_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.q6asm_dai_rtd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %14 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %4, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = load i32, i32* @DRV_NAME, align 4
  %19 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %17, i32 %18)
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %5, align 8
  %20 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %21 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %20, i32 0, i32 0
  %22 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %21, align 8
  store %struct.snd_compr_runtime* %22, %struct.snd_compr_runtime** %6, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %24, align 8
  store %struct.snd_soc_dai* %25, %struct.snd_soc_dai** %7, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %9, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %35 = call %struct.q6asm_dai_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %34)
  store %struct.q6asm_dai_data* %35, %struct.q6asm_dai_data** %8, align 8
  %36 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %8, align 8
  %37 = icmp ne %struct.q6asm_dai_data* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %1
  %39 = load %struct.device*, %struct.device** %9, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %135

43:                                               ; preds = %1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.q6asm_dai_rtd* @kzalloc(i32 24, i32 %44)
  store %struct.q6asm_dai_rtd* %45, %struct.q6asm_dai_rtd** %10, align 8
  %46 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %47 = icmp ne %struct.q6asm_dai_rtd* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %135

51:                                               ; preds = %43
  %52 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %53 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %54 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %53, i32 0, i32 4
  store %struct.snd_compr_stream* %52, %struct.snd_compr_stream** %54, align 8
  %55 = load %struct.device*, %struct.device** %9, align 8
  %56 = load i64, i64* @compress_event_handler, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @LEGACY_PCM_MODE, align 4
  %61 = call i32 @q6asm_audio_client_alloc(%struct.device* %55, i32 %57, %struct.q6asm_dai_rtd* %58, i32 %59, i32 %60)
  %62 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %63 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %65 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %51
  %70 = load %struct.device*, %struct.device** %9, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %73 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %13, align 4
  br label %131

76:                                               ; preds = %51
  %77 = load i32, i32* @COMPR_PLAYBACK_MAX_FRAGMENT_SIZE, align 4
  %78 = load i32, i32* @COMPR_PLAYBACK_MAX_NUM_FRAGMENTS, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %81 = load %struct.device*, %struct.device** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %84 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %83, i32 0, i32 3
  %85 = call i32 @snd_dma_alloc_pages(i32 %80, %struct.device* %81, i32 %82, %struct.TYPE_5__* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load %struct.device*, %struct.device** %9, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %126

91:                                               ; preds = %76
  %92 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %8, align 8
  %93 = getelementptr inbounds %struct.q6asm_dai_data, %struct.q6asm_dai_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %98 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %102 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %115

103:                                              ; preds = %91
  %104 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %105 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.q6asm_dai_data*, %struct.q6asm_dai_data** %8, align 8
  %109 = getelementptr inbounds %struct.q6asm_dai_data, %struct.q6asm_dai_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 32
  %112 = or i32 %107, %111
  %113 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %114 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %103, %96
  %116 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %117 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %118 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %117, i32 0, i32 3
  %119 = call i32 @snd_compr_set_runtime_buffer(%struct.snd_compr_stream* %116, %struct.TYPE_5__* %118)
  %120 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %121 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %120, i32 0, i32 2
  %122 = call i32 @spin_lock_init(i32* %121)
  %123 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %124 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %6, align 8
  %125 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %124, i32 0, i32 0
  store %struct.q6asm_dai_rtd* %123, %struct.q6asm_dai_rtd** %125, align 8
  store i32 0, i32* %2, align 4
  br label %135

126:                                              ; preds = %88
  %127 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %128 = getelementptr inbounds %struct.q6asm_dai_rtd, %struct.q6asm_dai_rtd* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @q6asm_audio_client_free(i32 %129)
  br label %131

131:                                              ; preds = %126, %69
  %132 = load %struct.q6asm_dai_rtd*, %struct.q6asm_dai_rtd** %10, align 8
  %133 = call i32 @kfree(%struct.q6asm_dai_rtd* %132)
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %115, %48, %38
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.q6asm_dai_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.q6asm_dai_rtd* @kzalloc(i32, i32) #1

declare dso_local i32 @q6asm_audio_client_alloc(%struct.device*, i32, %struct.q6asm_dai_rtd*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, %struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @snd_compr_set_runtime_buffer(%struct.snd_compr_stream*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @q6asm_audio_client_free(i32) #1

declare dso_local i32 @kfree(%struct.q6asm_dai_rtd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
