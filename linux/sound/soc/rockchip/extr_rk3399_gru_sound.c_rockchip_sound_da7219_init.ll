; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3399_gru_sound.c_rockchip_sound_da7219_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3399_gru_sound.c_rockchip_sound_da7219_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_7__*, %struct.snd_soc_dai*, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.TYPE_6__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Init can't set codec clock in %d\0A\00", align 1
@DA7219_SYSCLK_MCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Init can't set pll sysclk mclk %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@rockchip_sound_jack = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"New Headset Jack failed! (%d)\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @rockchip_sound_da7219_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_sound_da7219_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %4, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %5, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %18 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %19 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %17, i32 0, i32 12288000, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %1
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %31 = load i32, i32* @DA7219_SYSCLK_MCLK, align 4
  %32 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %30, i32 0, i32 %31, i32 0, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %88

42:                                               ; preds = %29
  %43 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %44 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* @SND_JACK_HEADSET, align 4
  %47 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SND_JACK_BTN_0, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SND_JACK_BTN_1, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SND_JACK_BTN_2, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SND_JACK_BTN_3, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @snd_soc_card_jack_new(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %56, %struct.TYPE_8__* @rockchip_sound_jack, i32* null, i32 0)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %42
  %61 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %62 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %88

69:                                               ; preds = %42
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rockchip_sound_jack, i32 0, i32 0), align 4
  %71 = load i32, i32* @SND_JACK_BTN_0, align 4
  %72 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %73 = call i32 @snd_jack_set_key(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rockchip_sound_jack, i32 0, i32 0), align 4
  %75 = load i32, i32* @SND_JACK_BTN_1, align 4
  %76 = load i32, i32* @KEY_VOLUMEUP, align 4
  %77 = call i32 @snd_jack_set_key(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rockchip_sound_jack, i32 0, i32 0), align 4
  %79 = load i32, i32* @SND_JACK_BTN_2, align 4
  %80 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %81 = call i32 @snd_jack_set_key(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rockchip_sound_jack, i32 0, i32 0), align 4
  %83 = load i32, i32* @SND_JACK_BTN_3, align 4
  %84 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %85 = call i32 @snd_jack_set_key(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %87 = call i32 @da7219_aad_jack_det(%struct.snd_soc_component* %86, %struct.TYPE_8__* @rockchip_sound_jack)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %69, %60, %35, %22
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.TYPE_7__*, i8*, i32, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @da7219_aad_jack_det(%struct.snd_soc_component*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
