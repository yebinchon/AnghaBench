; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98357a.c_kabylake_da7219_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98357a.c_kabylake_da7219_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_2__*, %struct.snd_soc_dai* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.kbl_codec_private = type { %struct.snd_soc_jack }
%struct.snd_soc_jack = type { i32 }

@DA7219_CLKSRC_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't set codec sysclk configuration\0A\00", align 1
@kabylake_audio_card = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Headset Jack creation failed: %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"SoC DMIC\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SoC DMIC - Ignore suspend failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @kabylake_da7219_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_da7219_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.kbl_codec_private*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_jack*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.kbl_codec_private* @snd_soc_card_get_drvdata(%struct.TYPE_2__* %11)
  store %struct.kbl_codec_private* %12, %struct.kbl_codec_private** %4, align 8
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
  %22 = load i32, i32* @DA7219_CLKSRC_MCLK, align 4
  %23 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %24 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %21, i32 %22, i32 24576000, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %104

33:                                               ; preds = %1
  %34 = load i32, i32* @kabylake_audio_card, align 4
  %35 = load i32, i32* @SND_JACK_HEADSET, align 4
  %36 = load i32, i32* @SND_JACK_BTN_0, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SND_JACK_BTN_1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SND_JACK_BTN_2, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SND_JACK_BTN_3, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %47 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %46, i32 0, i32 0
  %48 = call i32 @snd_soc_card_jack_new(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %45, %struct.snd_soc_jack* %47, i32* null, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %33
  %52 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %53 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %104

58:                                               ; preds = %33
  %59 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %60 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %59, i32 0, i32 0
  store %struct.snd_soc_jack* %60, %struct.snd_soc_jack** %7, align 8
  %61 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %62 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SND_JACK_BTN_0, align 4
  %65 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %66 = call i32 @snd_jack_set_key(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %68 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SND_JACK_BTN_1, align 4
  %71 = load i32, i32* @KEY_VOLUMEUP, align 4
  %72 = call i32 @snd_jack_set_key(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %74 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SND_JACK_BTN_2, align 4
  %77 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %78 = call i32 @snd_jack_set_key(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %80 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SND_JACK_BTN_3, align 4
  %83 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %84 = call i32 @snd_jack_set_key(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %86 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %87 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %86, i32 0, i32 0
  %88 = call i32 @da7219_aad_jack_det(%struct.snd_soc_component* %85, %struct.snd_soc_jack* %87)
  %89 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %90 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @snd_soc_dapm_ignore_suspend(i32* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %58
  %97 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %98 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %58
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %51, %27
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.kbl_codec_private* @snd_soc_card_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, %struct.snd_soc_jack*, i32*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @da7219_aad_jack_det(%struct.snd_soc_component*, %struct.snd_soc_jack*) #1

declare dso_local i32 @snd_soc_dapm_ignore_suspend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
