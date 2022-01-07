; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8990.c_wm8990_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8990.c_wm8990_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@WM8990_AUDIO_INTERFACE_4 = common dso_local global i32 0, align 4
@WM8990_ALRCGPIO1 = common dso_local global i32 0, align 4
@WM8990_GPIO1_GPIO2 = common dso_local global i32 0, align 4
@WM8990_GPIO1_SEL_MASK = common dso_local global i32 0, align 4
@WM8990_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8990_OPCLK_ENA = common dso_local global i32 0, align 4
@WM8990_LEFT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8990_RIGHT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8990_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8990_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %4 = call i32 @wm8990_reset(%struct.snd_soc_component* %3)
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %7 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %5, i32 %6)
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = load i32, i32* @WM8990_AUDIO_INTERFACE_4, align 4
  %10 = load i32, i32* @WM8990_ALRCGPIO1, align 4
  %11 = load i32, i32* @WM8990_ALRCGPIO1, align 4
  %12 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = load i32, i32* @WM8990_GPIO1_GPIO2, align 4
  %15 = load i32, i32* @WM8990_GPIO1_SEL_MASK, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 1)
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %18 = load i32, i32* @WM8990_POWER_MANAGEMENT_2, align 4
  %19 = load i32, i32* @WM8990_OPCLK_ENA, align 4
  %20 = load i32, i32* @WM8990_OPCLK_ENA, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %23 = load i32, i32* @WM8990_LEFT_OUTPUT_VOLUME, align 4
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %22, i32 %23, i32 336)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %26 = load i32, i32* @WM8990_RIGHT_OUTPUT_VOLUME, align 4
  %27 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %25, i32 %26, i32 336)
  ret i32 0
}

declare dso_local i32 @wm8990_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
