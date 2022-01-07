; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_main.c_snd_sb16dsp_get_pcm_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_main.c_snd_sb16dsp_get_pcm_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_ops = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_sb16_playback_ops = common dso_local global %struct.snd_pcm_ops zeroinitializer, align 4
@snd_sb16_capture_ops = common dso_local global %struct.snd_pcm_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_pcm_ops* @snd_sb16dsp_get_pcm_ops(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, %struct.snd_pcm_ops* @snd_sb16_playback_ops, %struct.snd_pcm_ops* @snd_sb16_capture_ops
  ret %struct.snd_pcm_ops* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
