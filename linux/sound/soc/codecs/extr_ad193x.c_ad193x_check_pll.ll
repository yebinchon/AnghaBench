; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_check_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_check_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.ad193x_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*)* @ad193x_check_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad193x_check_pll(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca %struct.snd_soc_dapm_widget*, align 8
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.ad193x_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %3, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %4, align 8
  %7 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.ad193x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.ad193x_priv* %12, %struct.ad193x_priv** %6, align 8
  %13 = load %struct.ad193x_priv*, %struct.ad193x_priv** %6, align 8
  %14 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.ad193x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
