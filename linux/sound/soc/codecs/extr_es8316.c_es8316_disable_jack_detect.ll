; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_disable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_disable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.es8316_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ES8316_GPIO_DEBOUNCE = common dso_local global i32 0, align 4
@ES8316_GPIO_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @es8316_disable_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es8316_disable_jack_detect(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.es8316_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.es8316_priv* %5, %struct.es8316_priv** %3, align 8
  %6 = load %struct.es8316_priv*, %struct.es8316_priv** %3, align 8
  %7 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @disable_irq(i32 %8)
  %10 = load %struct.es8316_priv*, %struct.es8316_priv** %3, align 8
  %11 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = load i32, i32* @ES8316_GPIO_DEBOUNCE, align 4
  %15 = load i32, i32* @ES8316_GPIO_ENABLE_INTERRUPT, align 4
  %16 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.es8316_priv*, %struct.es8316_priv** %3, align 8
  %18 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = call i32 @es8316_disable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component* %26)
  %28 = load %struct.es8316_priv*, %struct.es8316_priv** %3, align 8
  %29 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* @SND_JACK_BTN_0, align 4
  %32 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %30, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %25, %1
  %34 = load %struct.es8316_priv*, %struct.es8316_priv** %3, align 8
  %35 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %34, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.es8316_priv*, %struct.es8316_priv** %3, align 8
  %37 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @es8316_disable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_jack_report(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
