; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-rt5650-rt5514.c_mt8173_rt5650_rt5514_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-rt5650-rt5514.c_mt8173_rt5650_rt5514_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__**, %struct.snd_soc_card* }
%struct.TYPE_2__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32 }

@RT5645_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5645_AD_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5645_CLK_SEL_I2S1_ASRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@mt8173_rt5650_rt5514_jack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't new Headset Jack %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @mt8173_rt5650_rt5514_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_rt5650_rt5514_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  store %struct.snd_soc_card* %9, %struct.snd_soc_card** %4, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %5, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %18 = load i32, i32* @RT5645_DA_STEREO_FILTER, align 4
  %19 = load i32, i32* @RT5645_AD_STEREO_FILTER, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RT5645_CLK_SEL_I2S1_ASRC, align 4
  %22 = call i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component* %17, i32 %20, i32 %21)
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %24 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %25 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SND_JACK_BTN_0, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SND_JACK_BTN_1, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SND_JACK_BTN_2, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SND_JACK_BTN_3, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34, i32* @mt8173_rt5650_rt5514_jack, i32* null, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %1
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %47 = call i32 @rt5645_set_jack_detect(%struct.snd_soc_component* %46, i32* @mt8173_rt5650_rt5514_jack, i32* @mt8173_rt5650_rt5514_jack, i32* @mt8173_rt5650_rt5514_jack)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rt5645_set_jack_detect(%struct.snd_soc_component*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
