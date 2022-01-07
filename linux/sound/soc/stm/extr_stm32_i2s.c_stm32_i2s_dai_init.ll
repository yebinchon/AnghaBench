; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_dai_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_dai_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_stream = type { i8*, i32, i32, i32, i32 }

@SNDRV_PCM_RATE_8000_192000 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_pcm_stream*, i8*)* @stm32_i2s_dai_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_i2s_dai_init(%struct.snd_soc_pcm_stream* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_soc_pcm_stream*, align 8
  %4 = alloca i8*, align 8
  store %struct.snd_soc_pcm_stream* %0, %struct.snd_soc_pcm_stream** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %8, i32 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %10, i32 0, i32 2
  store i32 2, i32* %11, align 4
  %12 = load i32, i32* @SNDRV_PCM_RATE_8000_192000, align 4
  %13 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %16 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.snd_soc_pcm_stream*, %struct.snd_soc_pcm_stream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
