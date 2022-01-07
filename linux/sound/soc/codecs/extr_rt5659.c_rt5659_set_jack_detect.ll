; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt5659_priv = type { %struct.snd_soc_jack* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5659_set_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.rt5659_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5659_priv* %7, %struct.rt5659_priv** %5, align 8
  %8 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %9 = load %struct.rt5659_priv*, %struct.rt5659_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %9, i32 0, i32 0
  store %struct.snd_soc_jack* %8, %struct.snd_soc_jack** %10, align 8
  %11 = load %struct.rt5659_priv*, %struct.rt5659_priv** %5, align 8
  %12 = call i32 @rt5659_irq(i32 0, %struct.rt5659_priv* %11)
  ret i32 0
}

declare dso_local %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5659_irq(i32, %struct.rt5659_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
