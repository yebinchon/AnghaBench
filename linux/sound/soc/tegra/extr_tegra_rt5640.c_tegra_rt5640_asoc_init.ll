; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5640.c_tegra_rt5640_asoc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_rt5640.c_tegra_rt5640_asoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.tegra_rt5640 = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Headphones\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@tegra_rt5640_hp_jack = common dso_local global i32 0, align 4
@tegra_rt5640_hp_jack_pins = common dso_local global i32 0, align 4
@tegra_rt5640_hp_jack_gpio = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @tegra_rt5640_asoc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rt5640_asoc_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.tegra_rt5640*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %4 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.tegra_rt5640* @snd_soc_card_get_drvdata(i32 %6)
  store %struct.tegra_rt5640* %7, %struct.tegra_rt5640** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %12 = load i32, i32* @tegra_rt5640_hp_jack_pins, align 4
  %13 = load i32, i32* @tegra_rt5640_hp_jack_pins, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @snd_soc_card_jack_new(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11, i32* @tegra_rt5640_hp_jack, i32 %12, i32 %14)
  %16 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @gpio_is_valid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tegra_rt5640_hp_jack_gpio, i32 0, i32 1), align 4
  %25 = load %struct.tegra_rt5640*, %struct.tegra_rt5640** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_rt5640, %struct.tegra_rt5640* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tegra_rt5640_hp_jack_gpio, i32 0, i32 0), align 4
  %34 = call i32 @snd_soc_jack_add_gpios(i32* @tegra_rt5640_hp_jack, i32 1, %struct.TYPE_3__* @tegra_rt5640_hp_jack_gpio)
  br label %35

35:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local %struct.tegra_rt5640* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
