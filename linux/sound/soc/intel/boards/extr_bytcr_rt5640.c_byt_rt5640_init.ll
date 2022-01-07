; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5640.c_byt_rt5640_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5640.c_byt_rt5640_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_route = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_6__*, %struct.snd_soc_card* }
%struct.TYPE_6__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_card = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.byt_rt5640_private = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@byt_rt5640_quirk = common dso_local global i32 0, align 4
@BYT_RT5640_MCLK_EN = common dso_local global i32 0, align 4
@RT5640_GLB_CLK = common dso_local global i32 0, align 4
@RT5640_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5640_SCLK_SRC_RCCLK = common dso_local global i32 0, align 4
@RT5640_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5640_DA_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5640_DA_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5640_AD_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5640_AD_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5640_AD_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5640_CLK_SEL_ASRC = common dso_local global i32 0, align 4
@byt_rt5640_controls = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to add card controls\0A\00", align 1
@byt_rt5640_intmic_in1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5640_intmic_in3_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5640_intmic_dmic2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5640_intmic_dmic1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_RT5640_SSP2_AIF2 = common dso_local global i32 0, align 4
@byt_rt5640_ssp2_aif2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_RT5640_SSP0_AIF1 = common dso_local global i32 0, align 4
@byt_rt5640_ssp0_aif1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_RT5640_SSP0_AIF2 = common dso_local global i32 0, align 4
@byt_rt5640_ssp0_aif2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5640_ssp2_aif1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_RT5640_MONO_SPEAKER = common dso_local global i32 0, align 4
@byt_rt5640_mono_spk_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5640_stereo_spk_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@BYT_RT5640_MCLK_25MHZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to set MCLK rate\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@rt5640_pins = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Jack creation failed %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @byt_rt5640_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_rt5640_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.byt_rt5640_private*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.snd_soc_dapm_route*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %11, align 8
  store %struct.snd_soc_card* %12, %struct.snd_soc_card** %4, align 8
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %14 = call %struct.byt_rt5640_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %13)
  store %struct.byt_rt5640_private* %14, %struct.byt_rt5640_private** %5, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %6, align 8
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @byt_rt5640_quirk, align 4
  %24 = load i32, i32* @BYT_RT5640_MCLK_EN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %29 = load i32, i32* @RT5640_GLB_CLK, align 4
  %30 = load i32, i32* @RT5640_SCLK_SRC_MASK, align 4
  %31 = load i32, i32* @RT5640_SCLK_SRC_RCCLK, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %35 = load i32, i32* @RT5640_DA_STEREO_FILTER, align 4
  %36 = load i32, i32* @RT5640_DA_MONO_L_FILTER, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RT5640_DA_MONO_R_FILTER, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RT5640_AD_STEREO_FILTER, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RT5640_AD_MONO_L_FILTER, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RT5640_AD_MONO_R_FILTER, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RT5640_CLK_SEL_ASRC, align 4
  %47 = call i32 @rt5640_sel_asrc_clk_src(%struct.snd_soc_component* %34, i32 %45, i32 %46)
  %48 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %49 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_controls, align 8
  %50 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_controls, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %50)
  %52 = call i32 @snd_soc_add_card_controls(%struct.snd_soc_card* %48, %struct.snd_soc_dapm_route* %49, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %33
  %56 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %57 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %249

61:                                               ; preds = %33
  %62 = load i32, i32* @byt_rt5640_quirk, align 4
  %63 = call i32 @BYT_RT5640_MAP(i32 %62)
  switch i32 %63, label %76 [
    i32 129, label %64
    i32 128, label %68
    i32 130, label %72
  ]

64:                                               ; preds = %61
  %65 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_in1_map, align 8
  store %struct.snd_soc_dapm_route* %65, %struct.snd_soc_dapm_route** %7, align 8
  %66 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_in1_map, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %66)
  store i32 %67, i32* %8, align 4
  br label %80

68:                                               ; preds = %61
  %69 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_in3_map, align 8
  store %struct.snd_soc_dapm_route* %69, %struct.snd_soc_dapm_route** %7, align 8
  %70 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_in3_map, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %70)
  store i32 %71, i32* %8, align 4
  br label %80

72:                                               ; preds = %61
  %73 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_dmic2_map, align 8
  store %struct.snd_soc_dapm_route* %73, %struct.snd_soc_dapm_route** %7, align 8
  %74 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_dmic2_map, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %74)
  store i32 %75, i32* %8, align 4
  br label %80

76:                                               ; preds = %61
  %77 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_dmic1_map, align 8
  store %struct.snd_soc_dapm_route* %77, %struct.snd_soc_dapm_route** %7, align 8
  %78 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_intmic_dmic1_map, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %72, %68, %64
  %81 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %82 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %81, i32 0, i32 1
  %83 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %82, %struct.snd_soc_dapm_route* %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %249

90:                                               ; preds = %80
  %91 = load i32, i32* @byt_rt5640_quirk, align 4
  %92 = load i32, i32* @BYT_RT5640_SSP2_AIF2, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %97 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %96, i32 0, i32 1
  %98 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_ssp2_aif2_map, align 8
  %99 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_ssp2_aif2_map, align 8
  %100 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %99)
  %101 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %97, %struct.snd_soc_dapm_route* %98, i32 %100)
  store i32 %101, i32* %9, align 4
  br label %135

102:                                              ; preds = %90
  %103 = load i32, i32* @byt_rt5640_quirk, align 4
  %104 = load i32, i32* @BYT_RT5640_SSP0_AIF1, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %109 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %108, i32 0, i32 1
  %110 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_ssp0_aif1_map, align 8
  %111 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_ssp0_aif1_map, align 8
  %112 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %111)
  %113 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %109, %struct.snd_soc_dapm_route* %110, i32 %112)
  store i32 %113, i32* %9, align 4
  br label %134

114:                                              ; preds = %102
  %115 = load i32, i32* @byt_rt5640_quirk, align 4
  %116 = load i32, i32* @BYT_RT5640_SSP0_AIF2, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %121 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %120, i32 0, i32 1
  %122 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_ssp0_aif2_map, align 8
  %123 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_ssp0_aif2_map, align 8
  %124 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %123)
  %125 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %121, %struct.snd_soc_dapm_route* %122, i32 %124)
  store i32 %125, i32* %9, align 4
  br label %133

126:                                              ; preds = %114
  %127 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %128 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %127, i32 0, i32 1
  %129 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_ssp2_aif1_map, align 8
  %130 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_ssp2_aif1_map, align 8
  %131 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %130)
  %132 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %128, %struct.snd_soc_dapm_route* %129, i32 %131)
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %126, %119
  br label %134

134:                                              ; preds = %133, %107
  br label %135

135:                                              ; preds = %134, %95
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %2, align 4
  br label %249

140:                                              ; preds = %135
  %141 = load i32, i32* @byt_rt5640_quirk, align 4
  %142 = load i32, i32* @BYT_RT5640_MONO_SPEAKER, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %147 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %146, i32 0, i32 1
  %148 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_mono_spk_map, align 8
  %149 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_mono_spk_map, align 8
  %150 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %149)
  %151 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %147, %struct.snd_soc_dapm_route* %148, i32 %150)
  store i32 %151, i32* %9, align 4
  br label %159

152:                                              ; preds = %140
  %153 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %154 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %153, i32 0, i32 1
  %155 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_stereo_spk_map, align 8
  %156 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5640_stereo_spk_map, align 8
  %157 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %156)
  %158 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %154, %struct.snd_soc_dapm_route* %155, i32 %157)
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %152, %145
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %2, align 4
  br label %249

164:                                              ; preds = %159
  %165 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %166 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %165, i32 0, i32 1
  %167 = call i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_7__* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %168 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %169 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %168, i32 0, i32 1
  %170 = call i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_7__* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %171 = load i32, i32* @byt_rt5640_quirk, align 4
  %172 = load i32, i32* @BYT_RT5640_MCLK_EN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %212

175:                                              ; preds = %164
  %176 = load %struct.byt_rt5640_private*, %struct.byt_rt5640_private** %5, align 8
  %177 = getelementptr inbounds %struct.byt_rt5640_private, %struct.byt_rt5640_private* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @clk_prepare_enable(i32 %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %175
  %183 = load %struct.byt_rt5640_private*, %struct.byt_rt5640_private** %5, align 8
  %184 = getelementptr inbounds %struct.byt_rt5640_private, %struct.byt_rt5640_private* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @clk_disable_unprepare(i32 %185)
  br label %187

187:                                              ; preds = %182, %175
  %188 = load i32, i32* @byt_rt5640_quirk, align 4
  %189 = load i32, i32* @BYT_RT5640_MCLK_25MHZ, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.byt_rt5640_private*, %struct.byt_rt5640_private** %5, align 8
  %194 = getelementptr inbounds %struct.byt_rt5640_private, %struct.byt_rt5640_private* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @clk_set_rate(i32 %195, i32 25000000)
  store i32 %196, i32* %9, align 4
  br label %202

197:                                              ; preds = %187
  %198 = load %struct.byt_rt5640_private*, %struct.byt_rt5640_private** %5, align 8
  %199 = getelementptr inbounds %struct.byt_rt5640_private, %struct.byt_rt5640_private* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @clk_set_rate(i32 %200, i32 19200000)
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %197, %192
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %207 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32, i8*, ...) @dev_err(i32 %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %2, align 4
  br label %249

211:                                              ; preds = %202
  br label %212

212:                                              ; preds = %211, %164
  %213 = load i32, i32* @byt_rt5640_quirk, align 4
  %214 = call i64 @BYT_RT5640_JDSRC(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %248

216:                                              ; preds = %212
  %217 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %218 = load i32, i32* @SND_JACK_HEADSET, align 4
  %219 = load i32, i32* @SND_JACK_BTN_0, align 4
  %220 = or i32 %218, %219
  %221 = load %struct.byt_rt5640_private*, %struct.byt_rt5640_private** %5, align 8
  %222 = getelementptr inbounds %struct.byt_rt5640_private, %struct.byt_rt5640_private* %221, i32 0, i32 0
  %223 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @rt5640_pins, align 8
  %224 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @rt5640_pins, align 8
  %225 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %224)
  %226 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %220, %struct.TYPE_8__* %222, %struct.snd_soc_dapm_route* %223, i32 %225)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %216
  %230 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %231 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 (i32, i8*, ...) @dev_err(i32 %232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %2, align 4
  br label %249

236:                                              ; preds = %216
  %237 = load %struct.byt_rt5640_private*, %struct.byt_rt5640_private** %5, align 8
  %238 = getelementptr inbounds %struct.byt_rt5640_private, %struct.byt_rt5640_private* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @SND_JACK_BTN_0, align 4
  %242 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %243 = call i32 @snd_jack_set_key(i32 %240, i32 %241, i32 %242)
  %244 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %245 = load %struct.byt_rt5640_private*, %struct.byt_rt5640_private** %5, align 8
  %246 = getelementptr inbounds %struct.byt_rt5640_private, %struct.byt_rt5640_private* %245, i32 0, i32 0
  %247 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %244, %struct.TYPE_8__* %246, i32* null)
  br label %248

248:                                              ; preds = %236, %212
  store i32 0, i32* %2, align 4
  br label %249

249:                                              ; preds = %248, %229, %205, %162, %138, %88, %55
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.byt_rt5640_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @rt5640_sel_asrc_clk_src(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_add_card_controls(%struct.snd_soc_card*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @BYT_RT5640_MAP(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i64 @BYT_RT5640_JDSRC(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, %struct.TYPE_8__*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
