; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_zx_aud96p22.c_aud96p22_dac_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_zx_aud96p22.c_aud96p22_dac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.aud96p22_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }

@SND_SOC_DAPM_POST_PMU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUD96P22_RESET = common dso_local global i32 0, align 4
@RST_DAC_DPZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @aud96p22_dac_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aud96p22_dac_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.aud96p22_priv*, align 8
  %10 = alloca %struct.regmap*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.aud96p22_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.aud96p22_priv* %16, %struct.aud96p22_priv** %9, align 8
  %17 = load %struct.aud96p22_priv*, %struct.aud96p22_priv** %9, align 8
  %18 = getelementptr inbounds %struct.aud96p22_priv, %struct.aud96p22_priv* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SND_SOC_DAPM_POST_PMU, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.regmap*, %struct.regmap** %10, align 8
  %28 = load i32, i32* @AUD96P22_RESET, align 4
  %29 = load i32, i32* @RST_DAC_DPZ, align 4
  %30 = call i32 @regmap_update_bits(%struct.regmap* %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.regmap*, %struct.regmap** %10, align 8
  %32 = load i32, i32* @AUD96P22_RESET, align 4
  %33 = load i32, i32* @RST_DAC_DPZ, align 4
  %34 = load i32, i32* @RST_DAC_DPZ, align 4
  %35 = call i32 @regmap_update_bits(%struct.regmap* %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.aud96p22_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
