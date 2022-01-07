; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_kabylake_da7219_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_kabylake_da7219_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_soc_card*, %struct.TYPE_2__* }
%struct.snd_soc_card = type { i32 }
%struct.TYPE_2__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.kbl_codec_private = type { %struct.snd_soc_jack }
%struct.snd_soc_jack = type { i32 }

@kabylake_ssp1_map = common dso_local global i32 0, align 4
@kabylake_audio_card = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Headset Jack creation failed: %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @kabylake_da7219_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_da7219_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.kbl_codec_private*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  %12 = call %struct.kbl_codec_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %11)
  store %struct.kbl_codec_private* %12, %struct.kbl_codec_private** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %5, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 1
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %19, align 8
  store %struct.snd_soc_card* %20, %struct.snd_soc_card** %7, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %22 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %21, i32 0, i32 0
  %23 = load i32, i32* @kabylake_ssp1_map, align 4
  %24 = load i32, i32* @kabylake_ssp1_map, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @snd_soc_dapm_add_routes(i32* %22, i32 %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @kabylake_audio_card, align 4
  %28 = load i32, i32* @SND_JACK_HEADSET, align 4
  %29 = load i32, i32* @SND_JACK_BTN_0, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SND_JACK_BTN_1, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SND_JACK_BTN_2, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SND_JACK_BTN_3, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %40 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %39, i32 0, i32 0
  %41 = call i32 @snd_soc_card_jack_new(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38, %struct.snd_soc_jack* %40, i32* null, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %1
  %45 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %46 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %82

51:                                               ; preds = %1
  %52 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %53 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %52, i32 0, i32 0
  store %struct.snd_soc_jack* %53, %struct.snd_soc_jack** %6, align 8
  %54 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %55 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SND_JACK_BTN_0, align 4
  %58 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %59 = call i32 @snd_jack_set_key(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %61 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SND_JACK_BTN_1, align 4
  %64 = load i32, i32* @KEY_VOLUMEUP, align 4
  %65 = call i32 @snd_jack_set_key(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %67 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SND_JACK_BTN_2, align 4
  %70 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %71 = call i32 @snd_jack_set_key(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %73 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SND_JACK_BTN_3, align 4
  %76 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %77 = call i32 @snd_jack_set_key(i32 %74, i32 %75, i32 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %79 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %80 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %79, i32 0, i32 0
  %81 = call i32 @da7219_aad_jack_det(%struct.snd_soc_component* %78, %struct.snd_soc_jack* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %51, %44
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.kbl_codec_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, %struct.snd_soc_jack*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @da7219_aad_jack_det(%struct.snd_soc_component*, %struct.snd_soc_jack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
