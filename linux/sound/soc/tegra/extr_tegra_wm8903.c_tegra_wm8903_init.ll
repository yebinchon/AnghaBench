; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm8903.c_tegra_wm8903_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_wm8903.c_tegra_wm8903_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_card*, %struct.snd_soc_dai* }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tegra_wm8903 = type { i32 }

@tegra_wm8903_hp_jack_gpio = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@tegra_wm8903_hp_jack = common dso_local global i32 0, align 4
@tegra_wm8903_hp_jack_pins = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@tegra_wm8903_mic_jack = common dso_local global i32 0, align 4
@tegra_wm8903_mic_jack_pins = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @tegra_wm8903_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_wm8903_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.tegra_wm8903*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  store %struct.snd_soc_dai* %9, %struct.snd_soc_dai** %3, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %14, align 8
  store %struct.snd_soc_card* %15, %struct.snd_soc_card** %5, align 8
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %17 = call %struct.tegra_wm8903* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %16)
  store %struct.tegra_wm8903* %17, %struct.tegra_wm8903** %6, align 8
  %18 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %19 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @gpio_is_valid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.tegra_wm8903*, %struct.tegra_wm8903** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_wm8903, %struct.tegra_wm8903* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tegra_wm8903_hp_jack_gpio, i32 0, i32 0), align 4
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %27, i32 0, i32 0
  %29 = load %struct.snd_soc_card*, %struct.snd_soc_card** %28, align 8
  %30 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %31 = load i32, i32* @tegra_wm8903_hp_jack_pins, align 4
  %32 = load i32, i32* @tegra_wm8903_hp_jack_pins, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30, i32* @tegra_wm8903_hp_jack, i32 %31, i32 %33)
  %35 = call i32 @snd_soc_jack_add_gpios(i32* @tegra_wm8903_hp_jack, i32 1, %struct.TYPE_3__* @tegra_wm8903_hp_jack_gpio)
  br label %36

36:                                               ; preds = %23, %1
  %37 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %38 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %37, i32 0, i32 0
  %39 = load %struct.snd_soc_card*, %struct.snd_soc_card** %38, align 8
  %40 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %41 = load i32, i32* @tegra_wm8903_mic_jack_pins, align 4
  %42 = load i32, i32* @tegra_wm8903_mic_jack_pins, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32* @tegra_wm8903_mic_jack, i32 %41, i32 %43)
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %46 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %47 = call i32 @wm8903_mic_detect(%struct.snd_soc_component* %45, i32* @tegra_wm8903_mic_jack, i32 %46, i32 0)
  %48 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %49 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %48, i32 0, i32 0
  %50 = call i32 @snd_soc_dapm_force_enable_pin(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.tegra_wm8903* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @wm8903_mic_detect(%struct.snd_soc_component*, i32*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
