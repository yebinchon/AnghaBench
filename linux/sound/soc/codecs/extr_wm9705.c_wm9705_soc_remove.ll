; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9705.c_wm9705_soc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm9705.c_wm9705_soc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm9705_priv = type { i32, i32 }

@CONFIG_SND_SOC_AC97_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm9705_soc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm9705_soc_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm9705_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.wm9705_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.wm9705_priv* %5, %struct.wm9705_priv** %3, align 8
  %6 = load i32, i32* @CONFIG_SND_SOC_AC97_BUS, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.wm9705_priv*, %struct.wm9705_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wm9705_priv, %struct.wm9705_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = call i32 @snd_soc_component_exit_regmap(%struct.snd_soc_component* %15)
  %17 = load %struct.wm9705_priv*, %struct.wm9705_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wm9705_priv, %struct.wm9705_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_soc_free_ac97_component(i32 %19)
  br label %21

21:                                               ; preds = %14, %9, %1
  ret void
}

declare dso_local %struct.wm9705_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @snd_soc_component_exit_regmap(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_free_ac97_component(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
