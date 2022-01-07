; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_magician.c_magician_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_magician.c_magician_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SND_SOC_DAIFMT_MSB = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_DSP_A = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_IF = common dso_local global i32 0, align 4
@PXA_SSP_CLK_AUDIO = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @magician_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magician_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = load i32, i32* @SND_SOC_DAIFMT_MSB, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %20, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %2
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %33 = load i32, i32* @SND_SOC_DAIFMT_DSP_A, align 4
  %34 = load i32, i32* @SND_SOC_DAIFMT_NB_IF, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %32, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %31
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %45 = call i32 @params_format(%struct.snd_pcm_hw_params* %44)
  %46 = call i32 @snd_pcm_format_physical_width(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %47, i32 1, i32 0, i32 1, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %43
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %56 = load i32, i32* @PXA_SSP_CLK_AUDIO, align 4
  %57 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %58 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %55, i32 %56, i32 0, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %61, %52, %41, %29
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
