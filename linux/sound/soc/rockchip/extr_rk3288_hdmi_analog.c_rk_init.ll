; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3288_hdmi_analog.c_rk_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3288_hdmi_analog.c_rk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.rk_drvdata = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@headphone_jack = common dso_local global i32 0, align 4
@headphone_jack_pins = common dso_local global i32 0, align 4
@rk_hp_jack_gpio = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @rk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %3 = alloca %struct.rk_drvdata*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %2, align 8
  %4 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.rk_drvdata* @snd_soc_card_get_drvdata(i32 %6)
  store %struct.rk_drvdata* %7, %struct.rk_drvdata** %3, align 8
  %8 = load %struct.rk_drvdata*, %struct.rk_drvdata** %3, align 8
  %9 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @gpio_is_valid(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %2, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %18 = load i32, i32* @headphone_jack_pins, align 4
  %19 = load i32, i32* @headphone_jack_pins, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @snd_soc_card_jack_new(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17, i32* @headphone_jack, i32 %18, i32 %20)
  %22 = load %struct.rk_drvdata*, %struct.rk_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.rk_drvdata, %struct.rk_drvdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rk_hp_jack_gpio, i32 0, i32 0), align 4
  %25 = call i32 @snd_soc_jack_add_gpios(i32* @headphone_jack, i32 1, %struct.TYPE_3__* @rk_hp_jack_gpio)
  br label %26

26:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local %struct.rk_drvdata* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
