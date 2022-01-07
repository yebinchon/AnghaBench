; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.au1xpsc_audio_dmadata = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@au1xpsc_pcm_hardware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @au1xpsc_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.au1xpsc_audio_dmadata* @to_dmadata(%struct.snd_pcm_substream* %8)
  store %struct.au1xpsc_audio_dmadata* %9, %struct.au1xpsc_audio_dmadata** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = call i32* @snd_soc_dai_get_dma_data(i32 %18, %struct.snd_pcm_substream* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %4, align 8
  %33 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %34, i32* @au1xpsc_pcm_hardware)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.au1xpsc_audio_dmadata* @to_dmadata(%struct.snd_pcm_substream*) #1

declare dso_local i32* @snd_soc_dai_get_dma_data(i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
