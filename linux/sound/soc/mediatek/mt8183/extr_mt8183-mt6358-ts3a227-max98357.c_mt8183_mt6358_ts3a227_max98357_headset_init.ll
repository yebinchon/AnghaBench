; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-mt6358-ts3a227-max98357.c_mt8183_mt6358_ts3a227_max98357_headset_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-mt6358-ts3a227-max98357.c_mt8183_mt6358_ts3a227_max98357_headset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.mt8183_mt6358_ts3a227_max98357_priv = type { i32 }

@mt8183_mt6358_ts3a227_max98357_card = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @mt8183_mt6358_ts3a227_max98357_headset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8183_mt6358_ts3a227_max98357_headset_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt8183_mt6358_ts3a227_max98357_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mt8183_mt6358_ts3a227_max98357_priv* @snd_soc_card_get_drvdata(i32 %8)
  store %struct.mt8183_mt6358_ts3a227_max98357_priv* %9, %struct.mt8183_mt6358_ts3a227_max98357_priv** %5, align 8
  %10 = load i32, i32* @SND_JACK_HEADSET, align 4
  %11 = load i32, i32* @SND_JACK_BTN_0, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SND_JACK_BTN_1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SND_JACK_BTN_2, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SND_JACK_BTN_3, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.mt8183_mt6358_ts3a227_max98357_priv*, %struct.mt8183_mt6358_ts3a227_max98357_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mt8183_mt6358_ts3a227_max98357_priv, %struct.mt8183_mt6358_ts3a227_max98357_priv* %19, i32 0, i32 0
  %21 = call i32 @snd_soc_card_jack_new(i32* @mt8183_mt6358_ts3a227_max98357_card, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i32* %20, i32* null, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load %struct.mt8183_mt6358_ts3a227_max98357_priv*, %struct.mt8183_mt6358_ts3a227_max98357_priv** %5, align 8
  %29 = getelementptr inbounds %struct.mt8183_mt6358_ts3a227_max98357_priv, %struct.mt8183_mt6358_ts3a227_max98357_priv* %28, i32 0, i32 0
  %30 = call i32 @ts3a227e_enable_jack_detect(%struct.snd_soc_component* %27, i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.mt8183_mt6358_ts3a227_max98357_priv* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ts3a227e_enable_jack_detect(%struct.snd_soc_component*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
