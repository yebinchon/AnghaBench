; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_mic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_mic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt298_priv = type { %struct.snd_soc_jack*, i32 }
%struct.snd_soc_dapm_context = type { i32 }

@RT298_IRQ_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt298_mic_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca %struct.rt298_priv*, align 8
  %7 = alloca %struct.snd_soc_dapm_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.rt298_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.rt298_priv* %12, %struct.rt298_priv** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %14 = icmp ne %struct.snd_soc_jack* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.rt298_priv*, %struct.rt298_priv** %6, align 8
  %17 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RT298_IRQ_CTRL, align 4
  %20 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 2, i32 0)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %22 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %21)
  store %struct.snd_soc_dapm_context* %22, %struct.snd_soc_dapm_context** %7, align 8
  %23 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %24 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %7, align 8
  %26 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %25)
  store i32 0, i32* %3, align 4
  br label %60

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %29 = load %struct.rt298_priv*, %struct.rt298_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %29, i32 0, i32 0
  store %struct.snd_soc_jack* %28, %struct.snd_soc_jack** %30, align 8
  %31 = load %struct.rt298_priv*, %struct.rt298_priv** %6, align 8
  %32 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RT298_IRQ_CTRL, align 4
  %35 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 2, i32 2)
  %36 = load %struct.rt298_priv*, %struct.rt298_priv** %6, align 8
  %37 = call i32 @rt298_jack_detect(%struct.rt298_priv* %36, i32* %8, i32* %9)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %27
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.rt298_priv*, %struct.rt298_priv** %6, align 8
  %53 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %52, i32 0, i32 0
  %54 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %57 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @snd_soc_jack_report(%struct.snd_soc_jack* %54, i32 %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.rt298_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @rt298_jack_detect(%struct.rt298_priv*, i32*, i32*) #1

declare dso_local i32 @snd_soc_jack_report(%struct.snd_soc_jack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
