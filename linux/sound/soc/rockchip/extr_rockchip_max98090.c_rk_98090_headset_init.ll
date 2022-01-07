; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_max98090.c_rk_98090_headset_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_max98090.c_rk_98090_headset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@snd_soc_card_rk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@headset_jack = common dso_local global i32 0, align 4
@headset_jack_pins = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rk_98090_headset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_98090_headset_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load i32, i32* @SND_JACK_HEADSET, align 4
  %6 = load i32, i32* @SND_JACK_BTN_0, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SND_JACK_BTN_1, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SND_JACK_BTN_2, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SND_JACK_BTN_3, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @headset_jack_pins, align 4
  %15 = load i32, i32* @headset_jack_pins, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @snd_soc_card_jack_new(i32* @snd_soc_card_rk, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i32* @headset_jack, i32 %14, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = call i32 @ts3a227e_enable_jack_detect(%struct.snd_soc_component* %23, i32* @headset_jack)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @snd_soc_card_jack_new(i32*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ts3a227e_enable_jack_detect(%struct.snd_soc_component*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
