; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_enable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_enable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.es8316_priv = type { i32, i32, %struct.snd_soc_jack*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"everest,jack-detect-inverted\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@ES8316_GPIO_DEBOUNCE = common dso_local global i32 0, align 4
@ES8316_GPIO_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, %struct.snd_soc_jack*)* @es8316_enable_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es8316_enable_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.es8316_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.es8316_priv* %7, %struct.es8316_priv** %5, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_property_read_bool(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %13 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %15 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %18 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %19 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %18, i32 0, i32 2
  store %struct.snd_soc_jack* %17, %struct.snd_soc_jack** %19, align 8
  %20 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %21 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %20, i32 0, i32 2
  %22 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %21, align 8
  %23 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = call i32 @es8316_enable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* @ES8316_GPIO_DEBOUNCE, align 4
  %34 = load i32, i32* @ES8316_GPIO_ENABLE_INTERRUPT, align 4
  %35 = load i32, i32* @ES8316_GPIO_ENABLE_INTERRUPT, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %38 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %41 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @enable_irq(i32 %42)
  %44 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %45 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.es8316_priv*, %struct.es8316_priv** %5, align 8
  %48 = call i32 @es8316_irq(i32 %46, %struct.es8316_priv* %47)
  ret void
}

declare dso_local %struct.es8316_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @device_property_read_bool(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @es8316_enable_micbias_for_mic_gnd_short_detect(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @es8316_irq(i32, %struct.es8316_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
