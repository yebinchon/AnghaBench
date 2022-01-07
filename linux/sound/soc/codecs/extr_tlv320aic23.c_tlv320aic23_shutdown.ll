; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.aic23 = type { i64, i64 }

@TLV320AIC23_ACTIVE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @tlv320aic23_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlv320aic23_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.aic23*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  store %struct.snd_soc_component* %9, %struct.snd_soc_component** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.aic23* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.aic23* %11, %struct.aic23** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = call i32 @snd_soc_component_is_active(%struct.snd_soc_component* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = call i32 @udelay(i32 50)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %18 = load i32, i32* @TLV320AIC23_ACTIVE, align 4
  %19 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.aic23*, %struct.aic23** %6, align 8
  %28 = getelementptr inbounds %struct.aic23, %struct.aic23* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %32

29:                                               ; preds = %20
  %30 = load %struct.aic23*, %struct.aic23** %6, align 8
  %31 = getelementptr inbounds %struct.aic23, %struct.aic23* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  ret void
}

declare dso_local %struct.aic23* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_is_active(%struct.snd_soc_component*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
