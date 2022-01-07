; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-da7219-max98357a.c_cz_da7219_cap_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-da7219-max98357a.c_cz_da7219_cap_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acp_platform_info = type { i32, i32 }

@DUAL_CHANNEL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@constraints_channels = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@constraints_rates = common dso_local global i32 0, align 4
@I2S_SP_INSTANCE = common dso_local global i32 0, align 4
@CAP_CHANNEL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @cz_da7219_cap_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cz_da7219_cap_startup(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.acp_platform_info*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %14, align 8
  store %struct.snd_soc_card* %15, %struct.snd_soc_card** %5, align 8
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %17 = call %struct.acp_platform_info* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %16)
  store %struct.acp_platform_info* %17, %struct.acp_platform_info** %6, align 8
  %18 = load i32, i32* @DUAL_CHANNEL, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %23 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %24 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %22, i32 0, i32 %23, i32* @constraints_channels)
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %26 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %27 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %25, i32 0, i32 %26, i32* @constraints_rates)
  %28 = load i32, i32* @I2S_SP_INSTANCE, align 4
  %29 = load %struct.acp_platform_info*, %struct.acp_platform_info** %6, align 8
  %30 = getelementptr inbounds %struct.acp_platform_info, %struct.acp_platform_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @CAP_CHANNEL1, align 4
  %32 = load %struct.acp_platform_info*, %struct.acp_platform_info** %6, align 8
  %33 = getelementptr inbounds %struct.acp_platform_info, %struct.acp_platform_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret i32 0
}

declare dso_local %struct.acp_platform_info* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
