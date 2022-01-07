; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmi_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmi_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@TOHDMITX_CTRL0 = common dso_local global i32 0, align 4
@CTRL0_I2S_BLK_CAP_INV = common dso_local global i32 0, align 4
@CTRL0_SPDIF_CLK_CAP_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @g12a_tohdmi_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_tohdmi_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %4 = load i32, i32* @TOHDMITX_CTRL0, align 4
  %5 = load i32, i32* @CTRL0_I2S_BLK_CAP_INV, align 4
  %6 = load i32, i32* @CTRL0_SPDIF_CLK_CAP_INV, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %3, i32 %4, i32 %7)
  ret i32 %8
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
