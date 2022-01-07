; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.au1xpsc_audio_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @au1xpsc_ac97_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_ac97_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.au1xpsc_audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %11 = call %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.au1xpsc_audio_data* %11, %struct.au1xpsc_audio_data** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %52 [
    i32 130, label %16
    i32 131, label %16
    i32 129, label %29
    i32 128, label %29
  ]

16:                                               ; preds = %3, %3
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @AC97PCR_CLRFIFO(i32 %17)
  %19 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %20 = call i32 @AC97_PCR(%struct.au1xpsc_audio_data* %19)
  %21 = call i32 @__raw_writel(i32 %18, i32 %20)
  %22 = call i32 (...) @wmb()
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @AC97PCR_START(i32 %23)
  %25 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %26 = call i32 @AC97_PCR(%struct.au1xpsc_audio_data* %25)
  %27 = call i32 @__raw_writel(i32 %24, i32 %26)
  %28 = call i32 (...) @wmb()
  br label %55

29:                                               ; preds = %3, %3
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @AC97PCR_STOP(i32 %30)
  %32 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %33 = call i32 @AC97_PCR(%struct.au1xpsc_audio_data* %32)
  %34 = call i32 @__raw_writel(i32 %31, i32 %33)
  %35 = call i32 (...) @wmb()
  br label %36

36:                                               ; preds = %44, %29
  %37 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %38 = call i32 @AC97_STAT(%struct.au1xpsc_audio_data* %37)
  %39 = call i32 @__raw_readl(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @AC97STAT_BUSY(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %36

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @AC97PCR_CLRFIFO(i32 %46)
  %48 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %49 = call i32 @AC97_PCR(%struct.au1xpsc_audio_data* %48)
  %50 = call i32 @__raw_writel(i32 %47, i32 %49)
  %51 = call i32 (...) @wmb()
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %45, %16
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.au1xpsc_audio_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @AC97PCR_CLRFIFO(i32) #1

declare dso_local i32 @AC97_PCR(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @AC97PCR_START(i32) #1

declare dso_local i32 @AC97PCR_STOP(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @AC97_STAT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @AC97STAT_BUSY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1226}
