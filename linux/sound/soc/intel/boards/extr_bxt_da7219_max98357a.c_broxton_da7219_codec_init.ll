; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_da7219_max98357a.c_broxton_da7219_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_da7219_max98357a.c_broxton_da7219_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_5__*, i32, %struct.snd_soc_dai* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@DA7219_CLKSRC_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't set codec sysclk configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@broxton_headset = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Headset Jack creation failed: %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"SoC DMIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @broxton_da7219_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broxton_da7219_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 2
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  store %struct.snd_soc_dai* %10, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %12, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = call i64 (...) @soc_intel_is_cml()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 24000000, i32* %7, align 4
  br label %20

19:                                               ; preds = %1
  store i32 19200000, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %22 = load i32, i32* @DA7219_CLKSRC_MCLK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %25 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %30 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %84

34:                                               ; preds = %20
  %35 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %36 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* @SND_JACK_HEADSET, align 4
  %39 = load i32, i32* @SND_JACK_BTN_0, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SND_JACK_BTN_1, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SND_JACK_BTN_2, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SND_JACK_BTN_3, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_card_jack_new(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %48, %struct.TYPE_6__* @broxton_headset, i32* null, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %34
  %53 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %54 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %84

59:                                               ; preds = %34
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @broxton_headset, i32 0, i32 0), align 4
  %61 = load i32, i32* @SND_JACK_BTN_0, align 4
  %62 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %63 = call i32 @snd_jack_set_key(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @broxton_headset, i32 0, i32 0), align 4
  %65 = load i32, i32* @SND_JACK_BTN_1, align 4
  %66 = load i32, i32* @KEY_VOLUMEUP, align 4
  %67 = call i32 @snd_jack_set_key(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @broxton_headset, i32 0, i32 0), align 4
  %69 = load i32, i32* @SND_JACK_BTN_2, align 4
  %70 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %71 = call i32 @snd_jack_set_key(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @broxton_headset, i32 0, i32 0), align 4
  %73 = load i32, i32* @SND_JACK_BTN_3, align 4
  %74 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %75 = call i32 @snd_jack_set_key(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %77 = call i32 @da7219_aad_jack_det(%struct.snd_soc_component* %76, %struct.TYPE_6__* @broxton_headset)
  %78 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %79 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @snd_soc_dapm_ignore_suspend(i32* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %59, %52, %28
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @soc_intel_is_cml(...) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.TYPE_5__*, i8*, i32, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @da7219_aad_jack_det(%struct.snd_soc_component*, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_soc_dapm_ignore_suspend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
