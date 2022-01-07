; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_soc_pcm_codec_params_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_soc_pcm_codec_params_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_hw_params*, i32)* @soc_pcm_codec_params_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_pcm_codec_params_fixup(%struct.snd_pcm_hw_params* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @hweight_long(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %10 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %11 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %9, i32 %10)
  store %struct.snd_interval* %11, %struct.snd_interval** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %14 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %17 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local i32 @hweight_long(i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
