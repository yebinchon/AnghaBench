; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5663_rt5514_max98927.c_kabylake_rt5663_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5663_rt5514_max98927.c_kabylake_rt5663_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.kbl_codec_private = type { %struct.snd_soc_jack }
%struct.snd_soc_jack = type { i32 }

@kabylake_audio_card = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Headset Jack creation failed %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DMIC\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"DMIC - Ignore suspend failed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @kabylake_rt5663_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_rt5663_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kbl_codec_private*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_jack*, align 8
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.kbl_codec_private* @snd_soc_card_get_drvdata(%struct.TYPE_4__* %10)
  store %struct.kbl_codec_private* %11, %struct.kbl_codec_private** %5, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %6, align 8
  %17 = load i32, i32* @SND_JACK_HEADSET, align 4
  %18 = load i32, i32* @SND_JACK_BTN_0, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SND_JACK_BTN_1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SND_JACK_BTN_2, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SND_JACK_BTN_3, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %5, align 8
  %27 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %26, i32 0, i32 0
  %28 = call i32 @snd_soc_card_jack_new(i32* @kabylake_audio_card, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %25, %struct.snd_soc_jack* %27, i32* null, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %33 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %84

38:                                               ; preds = %1
  %39 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %5, align 8
  %40 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %39, i32 0, i32 0
  store %struct.snd_soc_jack* %40, %struct.snd_soc_jack** %7, align 8
  %41 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SND_JACK_BTN_0, align 4
  %45 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %46 = call i32 @snd_jack_set_key(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %48 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SND_JACK_BTN_1, align 4
  %51 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %52 = call i32 @snd_jack_set_key(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %54 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SND_JACK_BTN_2, align 4
  %57 = load i32, i32* @KEY_VOLUMEUP, align 4
  %58 = call i32 @snd_jack_set_key(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %60 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SND_JACK_BTN_3, align 4
  %63 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %64 = call i32 @snd_jack_set_key(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %66 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %5, align 8
  %67 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %66, i32 0, i32 0
  %68 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %65, %struct.snd_soc_jack* %67, i32* null)
  %69 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %70 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @snd_soc_dapm_ignore_suspend(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %38
  %77 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %78 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %38
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %31
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.kbl_codec_private* @snd_soc_card_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_soc_card_jack_new(i32*, i8*, i32, %struct.snd_soc_jack*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, %struct.snd_soc_jack*, i32*) #1

declare dso_local i32 @snd_soc_dapm_ignore_suspend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
