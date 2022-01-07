; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_is_link_time_supported.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_is_link_time_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_audio_tstamp_config = type { i64 }

@SNDRV_PCM_INFO_HAS_LINK_SYNCHRONIZED_ATIME = common dso_local global i32 0, align 4
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK_SYNCHRONIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_runtime*, %struct.snd_pcm_audio_tstamp_config*)* @is_link_time_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_link_time_supported(%struct.snd_pcm_runtime* %0, %struct.snd_pcm_audio_tstamp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_audio_tstamp_config*, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %4, align 8
  store %struct.snd_pcm_audio_tstamp_config* %1, %struct.snd_pcm_audio_tstamp_config** %5, align 8
  %6 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SNDRV_PCM_INFO_HAS_LINK_SYNCHRONIZED_ATIME, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.snd_pcm_audio_tstamp_config*, %struct.snd_pcm_audio_tstamp_config** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_config* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK_SYNCHRONIZED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %22

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
