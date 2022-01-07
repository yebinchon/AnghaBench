; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_fe_dai_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-pcm.c_dpcm_fe_dai_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SND_SOC_DPCM_UPDATE_FE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ASoC: close FE %s\0A\00", align 1
@SND_SOC_DAPM_STREAM_STOP = common dso_local global i32 0, align 4
@SND_SOC_DPCM_STATE_CLOSE = common dso_local global i32 0, align 4
@SND_SOC_DPCM_UPDATE_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @dpcm_fe_dai_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpcm_fe_dai_shutdown(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  store %struct.snd_soc_pcm_runtime* %7, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SND_SOC_DPCM_UPDATE_FE, align 4
  %14 = call i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime* %11, i32 %12, i32 %13)
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dpcm_be_dai_shutdown(%struct.snd_soc_pcm_runtime* %15, i32 %18)
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %30 = call i32 @soc_pcm_close(%struct.snd_pcm_substream* %29)
  %31 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SND_SOC_DAPM_STREAM_STOP, align 4
  %34 = call i32 @dpcm_dapm_stream_event(%struct.snd_soc_pcm_runtime* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @SND_SOC_DPCM_STATE_CLOSE, align 4
  %36 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %35, i32* %42, align 4
  %43 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SND_SOC_DPCM_UPDATE_NO, align 4
  %46 = call i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime* %43, i32 %44, i32 %45)
  ret i32 0
}

declare dso_local i32 @dpcm_set_fe_update_state(%struct.snd_soc_pcm_runtime*, i32, i32) #1

declare dso_local i32 @dpcm_be_dai_shutdown(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @soc_pcm_close(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dpcm_dapm_stream_event(%struct.snd_soc_pcm_runtime*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
