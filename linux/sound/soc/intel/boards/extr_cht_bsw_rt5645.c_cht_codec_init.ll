; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5645.c_cht_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5645.c_cht_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_soc_card*, %struct.TYPE_3__* }
%struct.snd_soc_card = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cht_mc_private = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@cht_rt5645_quirk = common dso_local global i32 0, align 4
@CHT_RT5645_SSP2_AIF2 = common dso_local global i32 0, align 4
@CHT_RT5645_SSP0_AIF2 = common dso_local global i32 0, align 4
@RT5645_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5645_DA_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5645_DA_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5645_AD_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5645_CLK_SEL_I2S2_ASRC = common dso_local global i32 0, align 4
@RT5645_CLK_SEL_I2S1_ASRC = common dso_local global i32 0, align 4
@cht_rt5645_ssp2_aif2_map = common dso_local global i32 0, align 4
@CHT_RT5645_SSP0_AIF1 = common dso_local global i32 0, align 4
@cht_rt5645_ssp0_aif1_map = common dso_local global i32 0, align 4
@cht_rt5645_ssp0_aif2_map = common dso_local global i32 0, align 4
@cht_rt5645_ssp2_aif1_map = common dso_local global i32 0, align 4
@CODEC_TYPE_RT5650 = common dso_local global i64 0, align 8
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@cht_bsw_jack_pins = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Headset jack creation failed %d\0A\00", align 1
@CHT_PLAT_CLK_3_HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to set MCLK rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @cht_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_codec_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.cht_mc_private*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  store %struct.snd_soc_card* %11, %struct.snd_soc_card** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %13, align 8
  %15 = call %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %14)
  store %struct.cht_mc_private* %15, %struct.cht_mc_private** %5, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %6, align 8
  %21 = load i32, i32* @cht_rt5645_quirk, align 4
  %22 = load i32, i32* @CHT_RT5645_SSP2_AIF2, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @cht_rt5645_quirk, align 4
  %27 = load i32, i32* @CHT_RT5645_SSP0_AIF2, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25, %1
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %32 = load i32, i32* @RT5645_DA_STEREO_FILTER, align 4
  %33 = load i32, i32* @RT5645_DA_MONO_L_FILTER, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RT5645_DA_MONO_R_FILTER, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RT5645_AD_STEREO_FILTER, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RT5645_CLK_SEL_I2S2_ASRC, align 4
  %40 = call i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component* %31, i32 %38, i32 %39)
  br label %52

41:                                               ; preds = %25
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %43 = load i32, i32* @RT5645_DA_STEREO_FILTER, align 4
  %44 = load i32, i32* @RT5645_DA_MONO_L_FILTER, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RT5645_DA_MONO_R_FILTER, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RT5645_AD_STEREO_FILTER, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RT5645_CLK_SEL_I2S1_ASRC, align 4
  %51 = call i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component* %42, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %30
  %53 = load i32, i32* @cht_rt5645_quirk, align 4
  %54 = load i32, i32* @CHT_RT5645_SSP2_AIF2, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %59 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %58, i32 0, i32 0
  %60 = load i32, i32* @cht_rt5645_ssp2_aif2_map, align 4
  %61 = load i32, i32* @cht_rt5645_ssp2_aif2_map, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = call i32 @snd_soc_dapm_add_routes(i32* %59, i32 %60, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %97

64:                                               ; preds = %52
  %65 = load i32, i32* @cht_rt5645_quirk, align 4
  %66 = load i32, i32* @CHT_RT5645_SSP0_AIF1, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %71 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %70, i32 0, i32 0
  %72 = load i32, i32* @cht_rt5645_ssp0_aif1_map, align 4
  %73 = load i32, i32* @cht_rt5645_ssp0_aif1_map, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @snd_soc_dapm_add_routes(i32* %71, i32 %72, i32 %74)
  store i32 %75, i32* %8, align 4
  br label %96

76:                                               ; preds = %64
  %77 = load i32, i32* @cht_rt5645_quirk, align 4
  %78 = load i32, i32* @CHT_RT5645_SSP0_AIF2, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %83 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %82, i32 0, i32 0
  %84 = load i32, i32* @cht_rt5645_ssp0_aif2_map, align 4
  %85 = load i32, i32* @cht_rt5645_ssp0_aif2_map, align 4
  %86 = call i32 @ARRAY_SIZE(i32 %85)
  %87 = call i32 @snd_soc_dapm_add_routes(i32* %83, i32 %84, i32 %86)
  store i32 %87, i32* %8, align 4
  br label %95

88:                                               ; preds = %76
  %89 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %90 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %89, i32 0, i32 0
  %91 = load i32, i32* @cht_rt5645_ssp2_aif1_map, align 4
  %92 = load i32, i32* @cht_rt5645_ssp2_aif1_map, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = call i32 @snd_soc_dapm_add_routes(i32* %90, i32 %91, i32 %93)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %88, %81
  br label %96

96:                                               ; preds = %95, %69
  br label %97

97:                                               ; preds = %96, %57
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %181

102:                                              ; preds = %97
  %103 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %104 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CODEC_TYPE_RT5650, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %102
  %111 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %112 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @SND_JACK_BTN_0, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @SND_JACK_BTN_1, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SND_JACK_BTN_2, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @SND_JACK_BTN_3, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %7, align 4
  br label %126

122:                                              ; preds = %102
  %123 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %124 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %122, %110
  %127 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %128 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %127, i32 0, i32 1
  %129 = load %struct.snd_soc_card*, %struct.snd_soc_card** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %132 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %131, i32 0, i32 1
  %133 = load i32, i32* @cht_bsw_jack_pins, align 4
  %134 = load i32, i32* @cht_bsw_jack_pins, align 4
  %135 = call i32 @ARRAY_SIZE(i32 %134)
  %136 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %130, i32* %132, i32 %133, i32 %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %126
  %140 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %141 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %181

146:                                              ; preds = %126
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %148 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %149 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %148, i32 0, i32 1
  %150 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %151 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %150, i32 0, i32 1
  %152 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %153 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %152, i32 0, i32 1
  %154 = call i32 @rt5645_set_jack_detect(%struct.snd_soc_component* %147, i32* %149, i32* %151, i32* %153)
  %155 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %156 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @clk_prepare_enable(i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %146
  %162 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %163 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @clk_disable_unprepare(i32 %164)
  br label %166

166:                                              ; preds = %161, %146
  %167 = load %struct.cht_mc_private*, %struct.cht_mc_private** %5, align 8
  %168 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CHT_PLAT_CLK_3_HZ, align 4
  %171 = call i32 @clk_set_rate(i32 %169, i32 %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %176 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, ...) @dev_err(i32 %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %179

179:                                              ; preds = %174, %166
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %139, %100
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @rt5645_sel_asrc_clk_src(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @rt5645_set_jack_detect(%struct.snd_soc_component*, i32*, i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
