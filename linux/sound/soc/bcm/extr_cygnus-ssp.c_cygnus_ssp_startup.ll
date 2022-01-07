; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_cygnus_ssp_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_cygnus_ssp_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.cygnus_aio_port = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CYGNUS_RATE_MIN = common dso_local global i32 0, align 4
@CYGNUS_RATE_MAX = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@cygnus_rate_constraint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @cygnus_ssp_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cygnus_ssp_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.cygnus_aio_port*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = call %struct.cygnus_aio_port* @cygnus_dai_get_portinfo(%struct.snd_soc_dai* %6)
  store %struct.cygnus_aio_port* %7, %struct.cygnus_aio_port** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %11 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %8, %struct.snd_pcm_substream* %9, %struct.cygnus_aio_port* %10)
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %19 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %5, align 8
  %23 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @CYGNUS_RATE_MIN, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @CYGNUS_RATE_MAX, align 4
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %42 = call i32 @snd_pcm_hw_constraint_list(%struct.TYPE_6__* %40, i32 0, i32 %41, i32* @cygnus_rate_constraint)
  ret i32 0
}

declare dso_local %struct.cygnus_aio_port* @cygnus_dai_get_portinfo(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, %struct.cygnus_aio_port*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.TYPE_6__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
