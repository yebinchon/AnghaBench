; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_mic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_mic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.rt286_priv = type { i32, %struct.snd_soc_jack* }

@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@RT286_IRQ_CTRL = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt286_mic_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.rt286_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.rt286_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.rt286_priv* %10, %struct.rt286_priv** %6, align 8
  %11 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %12 = load %struct.rt286_priv*, %struct.rt286_priv** %6, align 8
  %13 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %12, i32 0, i32 1
  store %struct.snd_soc_jack* %11, %struct.snd_soc_jack** %13, align 8
  %14 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %15 = icmp ne %struct.snd_soc_jack* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  %17 = load %struct.rt286_priv*, %struct.rt286_priv** %6, align 8
  %18 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %17, i32 0, i32 1
  %19 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %18, align 8
  %20 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %27 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.rt286_priv*, %struct.rt286_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RT286_IRQ_CTRL, align 4
  %33 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 2, i32 2)
  %34 = load %struct.rt286_priv*, %struct.rt286_priv** %6, align 8
  %35 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %34, i32 0, i32 1
  %36 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %35, align 8
  %37 = load %struct.rt286_priv*, %struct.rt286_priv** %6, align 8
  %38 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %37, i32 0, i32 1
  %39 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %38, align 8
  %40 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %43 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @snd_soc_jack_report(%struct.snd_soc_jack* %36, i32 %41, i32 %44)
  br label %54

46:                                               ; preds = %2
  %47 = load %struct.rt286_priv*, %struct.rt286_priv** %6, align 8
  %48 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RT286_IRQ_CTRL, align 4
  %51 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 2, i32 0)
  %52 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %53 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %46, %28
  %55 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %56 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %55)
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt286_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(%struct.snd_soc_jack*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
