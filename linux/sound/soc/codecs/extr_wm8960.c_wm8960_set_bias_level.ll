; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8960_priv = type { i32 (%struct.snd_soc_component.0*, i32)* }
%struct.snd_soc_component.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8960_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8960_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm8960_priv* %7, %struct.wm8960_priv** %5, align 8
  %8 = load %struct.wm8960_priv*, %struct.wm8960_priv** %5, align 8
  %9 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %8, i32 0, i32 0
  %10 = load i32 (%struct.snd_soc_component.0*, i32)*, i32 (%struct.snd_soc_component.0*, i32)** %9, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = bitcast %struct.snd_soc_component* %11 to %struct.snd_soc_component.0*
  %13 = load i32, i32* %4, align 4
  %14 = call i32 %10(%struct.snd_soc_component.0* %12, i32 %13)
  ret i32 %14
}

declare dso_local %struct.wm8960_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
