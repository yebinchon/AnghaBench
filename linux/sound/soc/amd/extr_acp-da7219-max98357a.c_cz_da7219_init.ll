; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-da7219-max98357a.c_cz_da7219_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-da7219-max98357a.c_cz_da7219_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_soc_dai*, %struct.snd_soc_card* }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"codec dai name = %s\0A\00", align 1
@DA7219_CLKSRC_MCLK = common dso_local global i32 0, align 4
@CZ_PLAT_CLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't set codec sysclk: %d\0A\00", align 1
@DA7219_SYSCLK_PLL = common dso_local global i32 0, align 4
@DA7219_PLL_FREQ_OUT_98304 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"can't set codec pll: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"da7219-dai-wclk\00", align 1
@da7219_dai_wclk = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"da7219-dai-bclk\00", align 1
@da7219_dai_bclk = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@cz_jack = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"HP jack creation failed %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @cz_da7219_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cz_da7219_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 2
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  store %struct.snd_soc_card* %10, %struct.snd_soc_card** %5, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %12, align 8
  store %struct.snd_soc_dai* %13, %struct.snd_soc_dai** %6, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_info(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %25 = load i32, i32* @DA7219_CLKSRC_MCLK, align 4
  %26 = load i32, i32* @CZ_PLAT_CLK, align 4
  %27 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %28 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %33 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %103

38:                                               ; preds = %1
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %40 = load i32, i32* @DA7219_SYSCLK_PLL, align 4
  %41 = load i32, i32* @CZ_PLAT_CLK, align 4
  %42 = load i32, i32* @DA7219_PLL_FREQ_OUT_98304, align 4
  %43 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %39, i32 0, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %48 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %103

53:                                               ; preds = %38
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @clk_get(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %57, i8** @da7219_dai_wclk, align 8
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @clk_get(i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %61, i8** @da7219_dai_bclk, align 8
  %62 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %63 = load i32, i32* @SND_JACK_HEADSET, align 4
  %64 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SND_JACK_BTN_0, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SND_JACK_BTN_1, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SND_JACK_BTN_2, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SND_JACK_BTN_3, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %73, %struct.TYPE_4__* @cz_jack, i32* null, i32 0)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %53
  %78 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %79 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %103

84:                                               ; preds = %53
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cz_jack, i32 0, i32 0), align 4
  %86 = load i32, i32* @SND_JACK_BTN_0, align 4
  %87 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %88 = call i32 @snd_jack_set_key(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cz_jack, i32 0, i32 0), align 4
  %90 = load i32, i32* @SND_JACK_BTN_1, align 4
  %91 = load i32, i32* @KEY_VOLUMEUP, align 4
  %92 = call i32 @snd_jack_set_key(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cz_jack, i32 0, i32 0), align 4
  %94 = load i32, i32* @SND_JACK_BTN_2, align 4
  %95 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %96 = call i32 @snd_jack_set_key(i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cz_jack, i32 0, i32 0), align 4
  %98 = load i32, i32* @SND_JACK_BTN_3, align 4
  %99 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %100 = call i32 @snd_jack_set_key(i32 %97, i32 %98, i32 %99)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %102 = call i32 @da7219_aad_jack_det(%struct.snd_soc_component* %101, %struct.TYPE_4__* @cz_jack)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %84, %77, %46, %31
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i8* @clk_get(i32, i8*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @da7219_aad_jack_det(%struct.snd_soc_component*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
