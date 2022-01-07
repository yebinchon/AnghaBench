; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcpdm.c_omap_mcpdm_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.omap_mcpdm = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@MCPDM_DN_THRES_MAX = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @omap_mcpdm_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcpdm_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.omap_mcpdm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = call %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.omap_mcpdm* %16, %struct.omap_mcpdm** %8, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_channels(%struct.snd_pcm_hw_params* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %52 [
    i32 5, label %23
    i32 4, label %33
    i32 3, label %43
    i32 2, label %46
    i32 1, label %49
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %199

30:                                               ; preds = %23
  %31 = load i32, i32* %14, align 4
  %32 = or i32 %31, 16
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %3, %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %199

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  %42 = or i32 %41, 8
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %3, %40
  %44 = load i32, i32* %14, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %3, %43
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, 2
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %3, %46
  %50 = load i32, i32* %14, align 4
  %51 = or i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %199

55:                                               ; preds = %49
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %58 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %56, %struct.snd_pcm_substream* %57)
  store %struct.snd_dmaengine_dai_dma_data* %58, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %59 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %60 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %55
  %71 = load i32, i32* %14, align 4
  %72 = shl i32 %71, 3
  store i32 %72, i32* %14, align 4
  %73 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %74 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %70
  %86 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %87 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 3, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %70
  %97 = load i32, i32* @MCPDM_DN_THRES_MAX, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %12, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %103 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %13, align 4
  br label %138

105:                                              ; preds = %55
  %106 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %107 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %105
  %119 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %120 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 24, i32* %128, align 4
  br label %129

129:                                              ; preds = %118, %105
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %10, align 8
  %134 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @MCPDM_DN_THRES_MAX, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %129, %96
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @USEC_PER_SEC, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %143 = call i32 @params_rate(%struct.snd_pcm_hw_params* %142)
  %144 = sdiv i32 %141, %143
  %145 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %146 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %152 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %138
  %160 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %161 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 10, i32* %165, align 4
  br label %166

166:                                              ; preds = %159, %138
  %167 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %168 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %166
  %177 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %178 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %177, i32 0, i32 2
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %176
  %188 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %189 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %188, i32 0, i32 1
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %187, %176, %166
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.omap_mcpdm*, %struct.omap_mcpdm** %8, align 8
  %193 = getelementptr inbounds %struct.omap_mcpdm, %struct.omap_mcpdm* %192, i32 0, i32 2
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  store i32 %191, i32* %198, align 4
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %190, %52, %37, %27
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.omap_mcpdm* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
