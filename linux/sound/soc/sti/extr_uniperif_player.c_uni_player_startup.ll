; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_player.c_uni_player_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uniperif* }
%struct.uniperif = type { i64, i32, %struct.snd_pcm_substream* }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@sti_uniperiph_fix_tdm_chan = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@sti_uniperiph_fix_tdm_format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @uni_player_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_player_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.sti_uniperiph_data*, align 8
  %7 = alloca %struct.uniperif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.sti_uniperiph_data* %11, %struct.sti_uniperiph_data** %6, align 8
  %12 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %6, align 8
  %13 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.uniperif*, %struct.uniperif** %14, align 8
  store %struct.uniperif* %15, %struct.uniperif** %7, align 8
  %16 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %17 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %16, i32 0, i32 1
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %22 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %21, i32 0, i32 2
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %22, align 8
  %23 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %24 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %23, i32 0, i32 1
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %28 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %30 = call i32 @UNIPERIF_TYPE_IS_TDM(%struct.uniperif* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

33:                                               ; preds = %2
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %38 = load i32, i32* @sti_uniperiph_fix_tdm_chan, align 4
  %39 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %41 = call i32 @snd_pcm_hw_rule_add(i32 %36, i32 0, i32 %37, i32 %38, %struct.uniperif* %39, i32 %40, i32 -1)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %55

46:                                               ; preds = %33
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %51 = load i32, i32* @sti_uniperiph_fix_tdm_format, align 4
  %52 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %53 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %54 = call i32 @snd_pcm_hw_rule_add(i32 %49, i32 0, i32 %50, i32 %51, %struct.uniperif* %52, i32 %53, i32 -1)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %46, %44, %32
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @UNIPERIF_TYPE_IS_TDM(%struct.uniperif*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, %struct.uniperif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
