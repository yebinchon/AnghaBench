; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_set_runtime_hwparams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-generic-dmaengine-pcm.c_dmaengine_pcm_set_runtime_hwparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.dmaengine_pcm = type { i32, %struct.TYPE_2__*, %struct.dma_chan** }
%struct.TYPE_2__ = type { %struct.snd_pcm_hardware* }
%struct.snd_pcm_hardware = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_chan = type { i32 }
%struct.device = type { i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32 }
%struct.dma_slave_caps = type { i64, i32, i32, i64, i64 }

@SND_DMAENGINE_PCM_DRV_NAME = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@SND_DMAENGINE_PCM_FLAG_NO_RESIDUE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BATCH = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_PAUSE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_RESUME = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_SEGMENT = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SND_DMAENGINE_PCM_DAI_FLAG_PACK = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_FIRST = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @dmaengine_pcm_set_runtime_hwparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmaengine_pcm_set_runtime_hwparams(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.dmaengine_pcm*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %10 = alloca %struct.dma_slave_caps, align 8
  %11 = alloca %struct.snd_pcm_hardware, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %17, align 8
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %4, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %20 = load i32, i32* @SND_DMAENGINE_PCM_DRV_NAME, align 4
  %21 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %19, i32 %20)
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %5, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %23 = call %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component* %22)
  store %struct.dmaengine_pcm* %23, %struct.dmaengine_pcm** %6, align 8
  %24 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %6, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = call %struct.device* @dmaengine_dma_dev(%struct.dmaengine_pcm* %24, %struct.snd_pcm_substream* %25)
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %27, i32 0, i32 2
  %29 = load %struct.dma_chan**, %struct.dma_chan*** %28, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %29, i64 %32
  %34 = load %struct.dma_chan*, %struct.dma_chan** %33, align 8
  store %struct.dma_chan* %34, %struct.dma_chan** %8, align 8
  %35 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = or i32 %39, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %6, align 8
  %44 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %1
  %48 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %6, align 8
  %49 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %51, align 8
  %53 = icmp ne %struct.snd_pcm_hardware* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %6, align 8
  %57 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %59, align 8
  %61 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %55, %struct.snd_pcm_hardware* %60)
  store i32 %61, i32* %2, align 4
  br label %182

62:                                               ; preds = %47, %1
  %63 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %64 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %67 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(i32 %65, %struct.snd_pcm_substream* %66)
  store %struct.snd_dmaengine_dai_dma_data* %67, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %68 = call i32 @memset(%struct.snd_pcm_hardware* %11, i32 0, i32 32)
  %69 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %70 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %73 = or i32 %71, %72
  %74 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 1
  store i32 2, i32* %75, align 4
  %76 = load i32, i32* @UINT_MAX, align 4
  %77 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 7
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 2
  store i32 256, i32* %78, align 4
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = call i32 @dma_get_max_seg_size(%struct.device* %79)
  %81 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 6
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @SIZE_MAX, align 4
  %83 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 5
  store i32 %82, i32* %83, align 4
  %84 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %85 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 4
  store i32 %86, i32* %87, align 4
  %88 = load %struct.dmaengine_pcm*, %struct.dmaengine_pcm** %6, align 8
  %89 = getelementptr inbounds %struct.dmaengine_pcm, %struct.dmaengine_pcm* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SND_DMAENGINE_PCM_FLAG_NO_RESIDUE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %62
  %95 = load i32, i32* @SNDRV_PCM_INFO_BATCH, align 4
  %96 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %62
  %100 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %101 = call i32 @dma_get_slave_caps(%struct.dma_chan* %100, %struct.dma_slave_caps* %10)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i32, i32* @SNDRV_PCM_INFO_PAUSE, align 4
  %114 = load i32, i32* @SNDRV_PCM_INFO_RESUME, align 4
  %115 = or i32 %113, %114
  %116 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %112, %108, %104
  %120 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DMA_RESIDUE_GRANULARITY_SEGMENT, align 8
  %123 = icmp sle i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* @SNDRV_PCM_INFO_BATCH, align 4
  %126 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %131 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %12, align 4
  br label %141

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %99
  %143 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %144 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SND_DMAENGINE_PCM_DAI_FLAG_PACK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %179, label %149

149:                                              ; preds = %142
  %150 = load i64, i64* @SNDRV_PCM_FORMAT_FIRST, align 8
  store i64 %150, i64* %13, align 8
  br label %151

151:                                              ; preds = %175, %149
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* @SNDRV_PCM_FORMAT_LAST, align 8
  %154 = icmp sle i64 %152, %153
  br i1 %154, label %155, label %178

155:                                              ; preds = %151
  %156 = load i64, i64* %13, align 8
  %157 = call i32 @snd_pcm_format_physical_width(i64 %156)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  switch i32 %158, label %173 [
    i32 8, label %159
    i32 16, label %159
    i32 24, label %159
    i32 32, label %159
    i32 64, label %159
  ]

159:                                              ; preds = %155, %155, %155, %155, %155
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %15, align 4
  %162 = sdiv i32 %161, 8
  %163 = shl i32 1, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i64, i64* %13, align 8
  %168 = call i32 @pcm_format_to_bits(i64 %167)
  %169 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %159
  br label %174

173:                                              ; preds = %155
  br label %174

174:                                              ; preds = %173, %172
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %13, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %13, align 8
  br label %151

178:                                              ; preds = %151
  br label %179

179:                                              ; preds = %178, %142
  %180 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %181 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %180, %struct.snd_pcm_hardware* %11)
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %179, %54
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.dmaengine_pcm* @soc_component_to_pcm(%struct.snd_soc_component*) #1

declare dso_local %struct.device* @dmaengine_dma_dev(%struct.dmaengine_pcm*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, %struct.snd_pcm_hardware*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @memset(%struct.snd_pcm_hardware*, i32, i32) #1

declare dso_local i32 @dma_get_max_seg_size(%struct.device*) #1

declare dso_local i32 @dma_get_slave_caps(%struct.dma_chan*, %struct.dma_slave_caps*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i64) #1

declare dso_local i32 @pcm_format_to_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
