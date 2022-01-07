; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5677.c_tegra_rt5677_asoc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5677.c_tegra_rt5677_asoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.tegra_rt5677 = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@tegra_rt5677_hp_jack = common dso_local global i32 0, align 4
@tegra_rt5677_hp_jack_pins = common dso_local global i32 0, align 4
@tegra_rt5677_hp_jack_gpio = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@tegra_rt5677_mic_jack = common dso_local global i32 0, align 4
@tegra_rt5677_mic_jack_pins = common dso_local global i32 0, align 4
@tegra_rt5677_mic_jack_gpio = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @tegra_rt5677_asoc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rt5677_asoc_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.tegra_rt5677*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %4 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %4, i32 0, i32 0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = call %struct.tegra_rt5677* @snd_soc_card_get_drvdata(%struct.TYPE_7__* %6)
  store %struct.tegra_rt5677* %7, %struct.tegra_rt5677** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %12 = call i32 @snd_soc_card_jack_new(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11, i32* @tegra_rt5677_hp_jack, i32* @tegra_rt5677_hp_jack_pins, i32 1)
  %13 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @gpio_is_valid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tegra_rt5677_hp_jack_gpio, i32 0, i32 0), align 4
  %22 = call i32 @snd_soc_jack_add_gpios(i32* @tegra_rt5677_hp_jack, i32 1, %struct.TYPE_6__* @tegra_rt5677_hp_jack_gpio)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %28 = call i32 @snd_soc_card_jack_new(%struct.TYPE_7__* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32* @tegra_rt5677_mic_jack, i32* @tegra_rt5677_mic_jack_pins, i32 1)
  %29 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @gpio_is_valid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.tegra_rt5677*, %struct.tegra_rt5677** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_rt5677, %struct.tegra_rt5677* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tegra_rt5677_mic_jack_gpio, i32 0, i32 0), align 4
  %38 = call i32 @snd_soc_jack_add_gpios(i32* @tegra_rt5677_mic_jack, i32 1, %struct.TYPE_6__* @tegra_rt5677_mic_jack_gpio)
  br label %39

39:                                               ; preds = %34, %23
  %40 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %41 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @snd_soc_dapm_force_enable_pin(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.tegra_rt5677* @snd_soc_card_get_drvdata(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.TYPE_7__*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
