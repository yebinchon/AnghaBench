; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_nau8824.c_cht_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_nau8824.c_cht_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, i32, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cht_mc_private = type { %struct.snd_soc_jack }
%struct.snd_soc_jack = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"can't set codec TDM slot %d\0A\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@cht_bsw_jack_pins = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Headset Jack creation failed %d\0A\00", align 1
@KEY_MEDIA = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @cht_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.cht_mc_private*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cht_mc_private* @snd_soc_card_get_drvdata(i32 %12)
  store %struct.cht_mc_private* %13, %struct.cht_mc_private** %4, align 8
  %14 = load %struct.cht_mc_private*, %struct.cht_mc_private** %4, align 8
  %15 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %14, i32 0, i32 0
  store %struct.snd_soc_jack* %15, %struct.snd_soc_jack** %5, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 2
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %17, align 8
  store %struct.snd_soc_dai* %18, %struct.snd_soc_dai** %6, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %7, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %23 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %22, i32 15, i32 1, i32 4, i32 24)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %90

33:                                               ; preds = %1
  %34 = load i32, i32* @SND_JACK_HEADSET, align 4
  %35 = load i32, i32* @SND_JACK_BTN_0, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SND_JACK_BTN_1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SND_JACK_BTN_2, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SND_JACK_BTN_3, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %44 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %48 = load i32, i32* @cht_bsw_jack_pins, align 4
  %49 = load i32, i32* @cht_bsw_jack_pins, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @snd_soc_card_jack_new(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %46, %struct.snd_soc_jack* %47, i32 %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %33
  %55 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %56 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %90

61:                                               ; preds = %33
  %62 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %63 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SND_JACK_BTN_0, align 4
  %66 = load i32, i32* @KEY_MEDIA, align 4
  %67 = call i32 @snd_jack_set_key(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %69 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SND_JACK_BTN_1, align 4
  %72 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %73 = call i32 @snd_jack_set_key(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %75 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SND_JACK_BTN_2, align 4
  %78 = load i32, i32* @KEY_VOLUMEUP, align 4
  %79 = call i32 @snd_jack_set_key(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %81 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SND_JACK_BTN_3, align 4
  %84 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %85 = call i32 @snd_jack_set_key(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %87 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %88 = call i32 @nau8824_enable_jack_detect(%struct.snd_soc_component* %86, %struct.snd_soc_jack* %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %61, %54, %26
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.cht_mc_private* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, %struct.snd_soc_jack*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @nau8824_enable_jack_detect(%struct.snd_soc_component*, %struct.snd_soc_jack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
