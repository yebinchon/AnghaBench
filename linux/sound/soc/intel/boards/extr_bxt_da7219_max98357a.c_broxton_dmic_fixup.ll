; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_da7219_max98357a.c_broxton_dmic_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_da7219_max98357a.c_broxton_dmic_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, %struct.snd_pcm_hw_params*)* @broxton_dmic_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broxton_dmic_fixup(%struct.snd_soc_pcm_runtime* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %6 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %7 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %8 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %6, i32 %7)
  store %struct.snd_interval* %8, %struct.snd_interval** %5, align 8
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %10 = call i32 @params_channels(%struct.snd_pcm_hw_params* %9)
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %14 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %13, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %16 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 0
  store i32 2, i32* %16, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %19 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %18, i32 0, i32 1
  store i32 4, i32* %19, align 4
  %20 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %20, i32 0, i32 0
  store i32 4, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %12
  ret i32 0
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
