; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-rt5650.c_mt8173_rt5650_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-rt5650.c_mt8173_rt5650_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__**, %struct.snd_soc_card* }
%struct.TYPE_2__ = type { i8*, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32 }

@RT5645_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5645_CLK_SEL_I2S1_ASRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rt5645-aif1\00", align 1
@RT5645_AD_STEREO_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rt5645-aif2\00", align 1
@RT5645_CLK_SEL_I2S2_ASRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Only one dai codec found in DTS, enabled rt5645 AD filter\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@mt8173_rt5650_jack = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't new Headset Jack %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @mt8173_rt5650_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_rt5650_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  store %struct.snd_soc_card* %10, %struct.snd_soc_card** %4, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %5, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %26 = load i32, i32* @RT5645_DA_STEREO_FILTER, align 4
  %27 = load i32, i32* @RT5645_CLK_SEL_I2S1_ASRC, align 4
  %28 = call i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component* %25, i32 %26, i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %34 = load i32, i32* @RT5645_AD_STEREO_FILTER, align 4
  %35 = load i32, i32* @RT5645_CLK_SEL_I2S1_ASRC, align 4
  %36 = call i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component* %33, i32 %34, i32 %35)
  br label %56

37:                                               ; preds = %1
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %43 = load i32, i32* @RT5645_AD_STEREO_FILTER, align 4
  %44 = load i32, i32* @RT5645_CLK_SEL_I2S2_ASRC, align 4
  %45 = call i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component* %42, i32 %43, i32 %44)
  br label %55

46:                                               ; preds = %37
  %47 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %48 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %52 = load i32, i32* @RT5645_AD_STEREO_FILTER, align 4
  %53 = load i32, i32* @RT5645_CLK_SEL_I2S1_ASRC, align 4
  %54 = call i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %41
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %58 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %59 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SND_JACK_BTN_0, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SND_JACK_BTN_1, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SND_JACK_BTN_2, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SND_JACK_BTN_3, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32* @mt8173_rt5650_jack, i32* null, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %56
  %73 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %74 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %82

79:                                               ; preds = %56
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %81 = call i32 @rt5645_set_jack_detect(%struct.snd_soc_component* %80, i32* @mt8173_rt5650_jack, i32* @mt8173_rt5650_jack, i32* @mt8173_rt5650_jack)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rt5645_set_jack_detect(%struct.snd_soc_component*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
