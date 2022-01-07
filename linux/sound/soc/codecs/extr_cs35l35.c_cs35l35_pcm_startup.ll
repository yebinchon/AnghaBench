; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_pcm_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l35.c_cs35l35_pcm_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l35_private = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@cs35l35_constraints = common dso_local global i32 0, align 4
@CS35L35_AMP_INP_DRV_CTL = common dso_local global i32 0, align 4
@CS35L35_PDM_MODE_MASK = common dso_local global i32 0, align 4
@CS35L35_PDM_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @cs35l35_pcm_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l35_pcm_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs35l35_private*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.cs35l35_private* %12, %struct.cs35l35_private** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %23 = call i32 @snd_pcm_hw_constraint_list(i32 %21, i32 0, i32 %22, i32* @cs35l35_constraints)
  %24 = load %struct.cs35l35_private*, %struct.cs35l35_private** %7, align 8
  %25 = getelementptr inbounds %struct.cs35l35_private, %struct.cs35l35_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CS35L35_AMP_INP_DRV_CTL, align 4
  %28 = load i32, i32* @CS35L35_PDM_MODE_MASK, align 4
  %29 = load i32, i32* @CS35L35_PDM_MODE_SHIFT, align 4
  %30 = shl i32 0, %29
  %31 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.cs35l35_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
