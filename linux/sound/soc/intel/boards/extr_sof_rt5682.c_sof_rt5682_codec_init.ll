; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_sof_rt5682.c_sof_rt5682_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_sof_rt5682.c_sof_rt5682_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.sof_card_private = type { %struct.snd_soc_jack, i32 }
%struct.snd_soc_jack = type { i32 }

@sof_rt5682_quirk = common dso_local global i32 0, align 4
@SOF_RT5682_MCLK_EN = common dso_local global i32 0, align 4
@SOF_RT5682_MCLK_24MHZ = common dso_local global i32 0, align 4
@RT5682_DA_STEREO1_FILTER = common dso_local global i32 0, align 4
@RT5682_AD_STEREO1_FILTER = common dso_local global i32 0, align 4
@RT5682_CLK_SEL_I2S1_ASRC = common dso_local global i32 0, align 4
@SOF_RT5682_MCLK_BYTCHT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to set MCLK rate\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Headset Jack creation failed: %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_VOICECOMMAND = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Headset Jack call-back failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @sof_rt5682_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_rt5682_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.sof_card_private*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sof_card_private* @snd_soc_card_get_drvdata(i32 %10)
  store %struct.sof_card_private* %11, %struct.sof_card_private** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %5, align 8
  %17 = load i32, i32* @sof_rt5682_quirk, align 4
  %18 = load i32, i32* @SOF_RT5682_MCLK_EN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i32, i32* @sof_rt5682_quirk, align 4
  %23 = load i32, i32* @SOF_RT5682_MCLK_24MHZ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = load i32, i32* @RT5682_DA_STEREO1_FILTER, align 4
  %29 = load i32, i32* @RT5682_AD_STEREO1_FILTER, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RT5682_CLK_SEL_I2S1_ASRC, align 4
  %32 = call i32 @rt5682_sel_asrc_clk_src(%struct.snd_soc_component* %27, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %21, %1
  %34 = load i32, i32* @sof_rt5682_quirk, align 4
  %35 = load i32, i32* @SOF_RT5682_MCLK_BYTCHT_EN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load %struct.sof_card_private*, %struct.sof_card_private** %4, align 8
  %40 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_prepare_enable(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.sof_card_private*, %struct.sof_card_private** %4, align 8
  %47 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.sof_card_private*, %struct.sof_card_private** %4, align 8
  %52 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_set_rate(i32 %53, i32 19200000)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %59 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SND_JACK_HEADSET, align 4
  %68 = load i32, i32* @SND_JACK_BTN_0, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SND_JACK_BTN_1, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SND_JACK_BTN_2, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SND_JACK_BTN_3, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.sof_card_private*, %struct.sof_card_private** %4, align 8
  %77 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %76, i32 0, i32 0
  %78 = call i32 @snd_soc_card_jack_new(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %75, %struct.snd_soc_jack* %77, i32* null, i32 0)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %63
  %82 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %83 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %129

88:                                               ; preds = %63
  %89 = load %struct.sof_card_private*, %struct.sof_card_private** %4, align 8
  %90 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %89, i32 0, i32 0
  store %struct.snd_soc_jack* %90, %struct.snd_soc_jack** %6, align 8
  %91 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %92 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SND_JACK_BTN_0, align 4
  %95 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %96 = call i32 @snd_jack_set_key(i32 %93, i32 %94, i32 %95)
  %97 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %98 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SND_JACK_BTN_1, align 4
  %101 = load i32, i32* @KEY_VOICECOMMAND, align 4
  %102 = call i32 @snd_jack_set_key(i32 %99, i32 %100, i32 %101)
  %103 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %104 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SND_JACK_BTN_2, align 4
  %107 = load i32, i32* @KEY_VOLUMEUP, align 4
  %108 = call i32 @snd_jack_set_key(i32 %105, i32 %106, i32 %107)
  %109 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %110 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SND_JACK_BTN_3, align 4
  %113 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %114 = call i32 @snd_jack_set_key(i32 %111, i32 %112, i32 %113)
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %116 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %117 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %115, %struct.snd_soc_jack* %116, i32* null)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %88
  %121 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %122 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %129

127:                                              ; preds = %88
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %120, %81
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.sof_card_private* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @rt5682_sel_asrc_clk_src(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_card_jack_new(i32, i8*, i32, %struct.snd_soc_jack*, i32*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, %struct.snd_soc_jack*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
