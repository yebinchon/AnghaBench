; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_lochnagar-sc.c_lochnagar_sc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_lochnagar-sc.c_lochnagar_sc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.lochnagar_sc_priv = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@lochnagar_sc_rate_constraint = common dso_local global i32 0, align 4
@lochnagar_sc_hw_rule_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FRAME_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @lochnagar_sc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_sc_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.lochnagar_sc_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.lochnagar_sc_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.lochnagar_sc_priv* %13, %struct.lochnagar_sc_priv** %7, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %18 = call i32 @snd_pcm_hw_constraint_list(i32 %16, i32 0, i32 %17, i32* @lochnagar_sc_rate_constraint)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %28 = load i32, i32* @lochnagar_sc_hw_rule_rate, align 4
  %29 = load %struct.lochnagar_sc_priv*, %struct.lochnagar_sc_priv** %7, align 8
  %30 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %31 = call i32 @snd_pcm_hw_rule_add(i32 %26, i32 0, i32 %27, i32 %28, %struct.lochnagar_sc_priv* %29, i32 %30, i32 -1)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.lochnagar_sc_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(i32, i32, i32, i32, %struct.lochnagar_sc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
