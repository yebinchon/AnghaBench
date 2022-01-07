; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_glk_rt5682_max98357a.c_geminilake_rt5682_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_glk_rt5682_max98357a.c_geminilake_rt5682_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, i32, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.glk_card_private = type { %struct.snd_soc_jack }
%struct.snd_soc_jack = type { i32 }

@RT5682_PLL1_S_MCLK = common dso_local global i32 0, align 4
@GLK_PLAT_CLK_FREQ = common dso_local global i32 0, align 4
@RT5682_PLL_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"can't set codec pll: %d\0A\00", align 1
@RT5682_SCLK_S_PLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"snd_soc_dai_set_sysclk err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Headset Jack creation failed: %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Headset Jack call-back failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @geminilake_rt5682_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geminilake_rt5682_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.glk_card_private*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_jack*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.glk_card_private* @snd_soc_card_get_drvdata(i32 %11)
  store %struct.glk_card_private* %12, %struct.glk_card_private** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 2
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %14, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %5, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 2
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %19, align 8
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %6, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %22 = load i32, i32* @RT5682_PLL1_S_MCLK, align 4
  %23 = load i32, i32* @GLK_PLAT_CLK_FREQ, align 4
  %24 = load i32, i32* @RT5682_PLL_FREQ, align 4
  %25 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %21, i32 0, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %30 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %117

35:                                               ; preds = %1
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %37 = load i32, i32* @RT5682_SCLK_S_PLL1, align 4
  %38 = load i32, i32* @RT5682_PLL_FREQ, align 4
  %39 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %40 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %51 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SND_JACK_HEADSET, align 4
  %54 = load i32, i32* @SND_JACK_BTN_0, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SND_JACK_BTN_1, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SND_JACK_BTN_2, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SND_JACK_BTN_3, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.glk_card_private*, %struct.glk_card_private** %4, align 8
  %65 = getelementptr inbounds %struct.glk_card_private, %struct.glk_card_private* %64, i32 0, i32 0
  %66 = call i32 @snd_soc_card_jack_new(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %63, %struct.snd_soc_jack* %65, i32* null, i32 0)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %49
  %70 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %71 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %117

76:                                               ; preds = %49
  %77 = load %struct.glk_card_private*, %struct.glk_card_private** %4, align 8
  %78 = getelementptr inbounds %struct.glk_card_private, %struct.glk_card_private* %77, i32 0, i32 0
  store %struct.snd_soc_jack* %78, %struct.snd_soc_jack** %7, align 8
  %79 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %80 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SND_JACK_BTN_0, align 4
  %83 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %84 = call i32 @snd_jack_set_key(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %86 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SND_JACK_BTN_1, align 4
  %89 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %90 = call i32 @snd_jack_set_key(i32 %87, i32 %88, i32 %89)
  %91 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %92 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SND_JACK_BTN_2, align 4
  %95 = load i32, i32* @KEY_VOLUMEUP, align 4
  %96 = call i32 @snd_jack_set_key(i32 %93, i32 %94, i32 %95)
  %97 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SND_JACK_BTN_3, align 4
  %101 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %102 = call i32 @snd_jack_set_key(i32 %99, i32 %100, i32 %101)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %104 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %105 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %103, %struct.snd_soc_jack* %104, i32* null)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %76
  %109 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %110 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %117

115:                                              ; preds = %76
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %108, %69, %28
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.glk_card_private* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, %struct.snd_soc_jack*, i32*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, %struct.snd_soc_jack*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
