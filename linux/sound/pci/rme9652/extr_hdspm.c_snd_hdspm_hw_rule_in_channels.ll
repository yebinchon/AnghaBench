; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_rule_in_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_rule_in_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.hdspm* }
%struct.hdspm = type { i32, i32, i32 }
%struct.snd_interval = type { i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_hdspm_hw_rule_in_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_hw_rule_in_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %8 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %8, i32 0, i32 0
  %10 = load %struct.hdspm*, %struct.hdspm** %9, align 8
  store %struct.hdspm* %10, %struct.hdspm** %6, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %12 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %13 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %11, i32 %12)
  store %struct.snd_interval* %13, %struct.snd_interval** %7, align 8
  %14 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %15 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %19 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %23 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %28 = call i32 @snd_interval_list(%struct.snd_interval* %26, i32 3, i32* %27, i32 0)
  ret i32 %28
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_list(%struct.snd_interval*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
