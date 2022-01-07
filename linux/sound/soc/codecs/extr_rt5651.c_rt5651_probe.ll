; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5651_priv = type { %struct.snd_soc_component* }

@RT5651_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5651_PWR_LDO_DVO_MASK = common dso_local global i32 0, align 4
@RT5651_PWR_LDO_DVO_1_2V = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5651_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5651_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5651_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.rt5651_priv* %5, %struct.rt5651_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.rt5651_priv*, %struct.rt5651_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %7, i32 0, i32 0
  store %struct.snd_soc_component* %6, %struct.snd_soc_component** %8, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = load i32, i32* @RT5651_PWR_ANLG1, align 4
  %11 = load i32, i32* @RT5651_PWR_LDO_DVO_MASK, align 4
  %12 = load i32, i32* @RT5651_PWR_LDO_DVO_1_2V, align 4
  %13 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %15 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %16 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %14, i32 %15)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %18 = call i32 @rt5651_apply_properties(%struct.snd_soc_component* %17)
  ret i32 0
}

declare dso_local %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @rt5651_apply_properties(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
