; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_reader.c_uni_reader_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_uniperif_reader.c_uni_reader_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uniperif* }
%struct.uniperif = type { i32, %struct.snd_pcm_substream* }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@sti_uniperiph_fix_tdm_chan = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@sti_uniperiph_fix_tdm_format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @uni_reader_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_reader_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
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
  %17 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %22 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %21, i32 0, i32 1
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %22, align 8
  %23 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %24 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %28 = call i32 @UNIPERIF_TYPE_IS_TDM(%struct.uniperif* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %36 = load i32, i32* @sti_uniperiph_fix_tdm_chan, align 4
  %37 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %38 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %39 = call i32 @snd_pcm_hw_rule_add(i32 %34, i32 0, i32 %35, i32 %36, %struct.uniperif* %37, i32 %38, i32 -1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %31
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %49 = load i32, i32* @sti_uniperiph_fix_tdm_format, align 4
  %50 = load %struct.uniperif*, %struct.uniperif** %7, align 8
  %51 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %52 = call i32 @snd_pcm_hw_rule_add(i32 %47, i32 0, i32 %48, i32 %49, %struct.uniperif* %50, i32 %51, i32 -1)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %44, %42, %30
  %54 = load i32, i32* %3, align 4
  ret i32 %54
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
