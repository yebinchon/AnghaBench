; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sof_intel_hda_dev* }
%struct.sof_intel_hda_dev = type { i64 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_dma_buffer*, %struct.hdac_stream* }
%struct.snd_dma_buffer = type { i32 }
%struct.hdac_stream = type { i32, i32, i32, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_hw_params = type { i32, i32 }
%struct.sof_ipc_stream_params = type { i32, i64 }
%struct.hdac_ext_stream = type { i32 }

@SNDRV_PCM_INFO_NO_PERIOD_WAKEUP = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error: hdac prepare failed: %x\0A\00", align 1
@HDA_DSP_SPIB_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_pcm_hw_params(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1, %struct.snd_pcm_hw_params* %2, %struct.sof_ipc_stream_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_hw_params*, align 8
  %9 = alloca %struct.sof_ipc_stream_params*, align 8
  %10 = alloca %struct.hdac_stream*, align 8
  %11 = alloca %struct.hdac_ext_stream*, align 8
  %12 = alloca %struct.sof_intel_hda_dev*, align 8
  %13 = alloca %struct.snd_dma_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %7, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %8, align 8
  store %struct.sof_ipc_stream_params* %3, %struct.sof_ipc_stream_params** %9, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.hdac_stream*, %struct.hdac_stream** %21, align 8
  store %struct.hdac_stream* %22, %struct.hdac_stream** %10, align 8
  %23 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %24 = call %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream* %23)
  store %struct.hdac_ext_stream* %24, %struct.hdac_ext_stream** %11, align 8
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %26 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %28, align 8
  store %struct.sof_intel_hda_dev* %29, %struct.sof_intel_hda_dev** %12, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %31 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %34 = call i32 @params_rate(%struct.snd_pcm_hw_params* %33)
  %35 = call i32 @get_mult_div(%struct.snd_sof_dev* %32, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %38 = call i32 @params_width(%struct.snd_pcm_hw_params* %37)
  %39 = call i32 @get_bits(%struct.snd_sof_dev* %36, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %41 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %42 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %41, i32 0, i32 5
  store %struct.snd_pcm_substream* %40, %struct.snd_pcm_substream** %42, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %46, align 8
  store %struct.snd_dma_buffer* %47, %struct.snd_dma_buffer** %13, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %52 = call i32 @params_channels(%struct.snd_pcm_hw_params* %51)
  %53 = sub nsw i32 %52, 1
  %54 = or i32 %50, %53
  %55 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %56 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %59 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %61 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %60)
  %62 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %63 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SNDRV_PCM_INFO_NO_PERIOD_WAKEUP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %4
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %70, %4
  %78 = phi i1 [ false, %4 ], [ %76, %70 ]
  %79 = zext i1 %78 to i32
  %80 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %81 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %83 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %84 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %13, align 8
  %85 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %86 = call i32 @hda_dsp_stream_hw_params(%struct.snd_sof_dev* %82, %struct.hdac_ext_stream* %83, %struct.snd_dma_buffer* %84, %struct.snd_pcm_hw_params* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %91 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %5, align 4
  br label %117

96:                                               ; preds = %77
  %97 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %98 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %99 = load i32, i32* @HDA_DSP_SPIB_DISABLE, align 4
  %100 = call i32 @hda_dsp_stream_spib_config(%struct.snd_sof_dev* %97, %struct.hdac_ext_stream* %98, i32 %99, i32 0)
  %101 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %12, align 8
  %102 = icmp ne %struct.sof_intel_hda_dev* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.sof_intel_hda_dev*, %struct.sof_intel_hda_dev** %12, align 8
  %105 = getelementptr inbounds %struct.sof_intel_hda_dev, %struct.sof_intel_hda_dev* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.sof_ipc_stream_params*, %struct.sof_ipc_stream_params** %9, align 8
  %110 = getelementptr inbounds %struct.sof_ipc_stream_params, %struct.sof_ipc_stream_params* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %108, %103, %96
  %112 = load %struct.hdac_stream*, %struct.hdac_stream** %10, align 8
  %113 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sof_ipc_stream_params*, %struct.sof_ipc_stream_params** %9, align 8
  %116 = getelementptr inbounds %struct.sof_ipc_stream_params, %struct.sof_ipc_stream_params* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %111, %89
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream*) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @get_mult_div(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @get_bits(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @hda_dsp_stream_hw_params(%struct.snd_sof_dev*, %struct.hdac_ext_stream*, %struct.snd_dma_buffer*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hda_dsp_stream_spib_config(%struct.snd_sof_dev*, %struct.hdac_ext_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
