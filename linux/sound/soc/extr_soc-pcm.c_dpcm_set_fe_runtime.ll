; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_set_fe_runtime.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_set_fe_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.snd_soc_dai_driver* }
%struct.snd_soc_dai_driver = type { i32, i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @dpcm_set_fe_runtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpcm_set_fe_runtime(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 2
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %14, align 8
  store %struct.snd_soc_dai* %15, %struct.snd_soc_dai** %5, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %17, align 8
  store %struct.snd_soc_dai_driver* %18, %struct.snd_soc_dai_driver** %6, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %26 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %26, i32 0, i32 1
  %28 = call i32 @dpcm_init_runtime_hw(%struct.snd_pcm_runtime* %25, i32* %27)
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %31 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %31, i32 0, i32 0
  %33 = call i32 @dpcm_init_runtime_hw(%struct.snd_pcm_runtime* %30, i32* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = call i32 @dpcm_runtime_merge_format(%struct.snd_pcm_substream* %35, i32* %38)
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = call i32 @dpcm_runtime_merge_chan(%struct.snd_pcm_substream* %40, i32* %43, i32* %46)
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dpcm_runtime_merge_rate(%struct.snd_pcm_substream* %48, i32* %51, i32* %54, i32* %57)
  ret void
}

declare dso_local i32 @dpcm_init_runtime_hw(%struct.snd_pcm_runtime*, i32*) #1

declare dso_local i32 @dpcm_runtime_merge_format(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @dpcm_runtime_merge_chan(%struct.snd_pcm_substream*, i32*, i32*) #1

declare dso_local i32 @dpcm_runtime_merge_rate(%struct.snd_pcm_substream*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
