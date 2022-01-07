; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5651.c_byt_rt5651_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5651.c_byt_rt5651_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_route = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_soc_card*, %struct.TYPE_6__* }
%struct.snd_soc_card = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.byt_rt5651_private = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@byt_rt5651_quirk = common dso_local global i32 0, align 4
@BYT_RT5651_MCLK_EN = common dso_local global i32 0, align 4
@RT5651_GLB_CLK = common dso_local global i32 0, align 4
@RT5651_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5651_SCLK_SRC_RCCLK = common dso_local global i32 0, align 4
@byt_rt5651_intmic_in1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5651_intmic_in2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5651_intmic_in1_in2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5651_intmic_dmic_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_RT5651_SSP2_AIF2 = common dso_local global i32 0, align 4
@byt_rt5651_ssp2_aif2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_RT5651_SSP0_AIF1 = common dso_local global i32 0, align 4
@byt_rt5651_ssp0_aif1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@BYT_RT5651_SSP0_AIF2 = common dso_local global i32 0, align 4
@byt_rt5651_ssp0_aif2_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5651_ssp2_aif1_map = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@byt_rt5651_controls = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to add card controls\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@BYT_RT5651_MCLK_25MHZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to set MCLK rate\0A\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Headset\00", align 1
@bytcr_jack_pins = common dso_local global %struct.snd_soc_dapm_route* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"jack creation failed %d\0A\00", align 1
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @byt_rt5651_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_rt5651_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.byt_rt5651_private*, align 8
  %7 = alloca %struct.snd_soc_dapm_route*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %12, align 8
  store %struct.snd_soc_card* %13, %struct.snd_soc_card** %4, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %5, align 8
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %20 = call %struct.byt_rt5651_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %19)
  store %struct.byt_rt5651_private* %20, %struct.byt_rt5651_private** %6, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @byt_rt5651_quirk, align 4
  %25 = load i32, i32* @BYT_RT5651_MCLK_EN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %30 = load i32, i32* @RT5651_GLB_CLK, align 4
  %31 = load i32, i32* @RT5651_SCLK_SRC_MASK, align 4
  %32 = load i32, i32* @RT5651_SCLK_SRC_RCCLK, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %1
  %35 = load i32, i32* @byt_rt5651_quirk, align 4
  %36 = call i32 @BYT_RT5651_MAP(i32 %35)
  switch i32 %36, label %49 [
    i32 129, label %37
    i32 128, label %41
    i32 130, label %45
  ]

37:                                               ; preds = %34
  %38 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_intmic_in1_map, align 8
  store %struct.snd_soc_dapm_route* %38, %struct.snd_soc_dapm_route** %7, align 8
  %39 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_intmic_in1_map, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %39)
  store i32 %40, i32* %8, align 4
  br label %53

41:                                               ; preds = %34
  %42 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_intmic_in2_map, align 8
  store %struct.snd_soc_dapm_route* %42, %struct.snd_soc_dapm_route** %7, align 8
  %43 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_intmic_in2_map, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %43)
  store i32 %44, i32* %8, align 4
  br label %53

45:                                               ; preds = %34
  %46 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_intmic_in1_in2_map, align 8
  store %struct.snd_soc_dapm_route* %46, %struct.snd_soc_dapm_route** %7, align 8
  %47 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_intmic_in1_in2_map, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %47)
  store i32 %48, i32* %8, align 4
  br label %53

49:                                               ; preds = %34
  %50 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_intmic_dmic_map, align 8
  store %struct.snd_soc_dapm_route* %50, %struct.snd_soc_dapm_route** %7, align 8
  %51 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_intmic_dmic_map, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %45, %41, %37
  %54 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %55 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %54, i32 0, i32 1
  %56 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %55, %struct.snd_soc_dapm_route* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %2, align 4
  br label %240

63:                                               ; preds = %53
  %64 = load i32, i32* @byt_rt5651_quirk, align 4
  %65 = load i32, i32* @BYT_RT5651_SSP2_AIF2, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %70 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %69, i32 0, i32 1
  %71 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_ssp2_aif2_map, align 8
  %72 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_ssp2_aif2_map, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %72)
  %74 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %70, %struct.snd_soc_dapm_route* %71, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %108

75:                                               ; preds = %63
  %76 = load i32, i32* @byt_rt5651_quirk, align 4
  %77 = load i32, i32* @BYT_RT5651_SSP0_AIF1, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %82 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %81, i32 0, i32 1
  %83 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_ssp0_aif1_map, align 8
  %84 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_ssp0_aif1_map, align 8
  %85 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %84)
  %86 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %82, %struct.snd_soc_dapm_route* %83, i32 %85)
  store i32 %86, i32* %10, align 4
  br label %107

87:                                               ; preds = %75
  %88 = load i32, i32* @byt_rt5651_quirk, align 4
  %89 = load i32, i32* @BYT_RT5651_SSP0_AIF2, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %94 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %93, i32 0, i32 1
  %95 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_ssp0_aif2_map, align 8
  %96 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_ssp0_aif2_map, align 8
  %97 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %96)
  %98 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %94, %struct.snd_soc_dapm_route* %95, i32 %97)
  store i32 %98, i32* %10, align 4
  br label %106

99:                                               ; preds = %87
  %100 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %101 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %100, i32 0, i32 1
  %102 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_ssp2_aif1_map, align 8
  %103 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_ssp2_aif1_map, align 8
  %104 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %103)
  %105 = call i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__* %101, %struct.snd_soc_dapm_route* %102, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %80
  br label %108

108:                                              ; preds = %107, %68
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %2, align 4
  br label %240

113:                                              ; preds = %108
  %114 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %115 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_controls, align 8
  %116 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @byt_rt5651_controls, align 8
  %117 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %116)
  %118 = call i32 @snd_soc_add_card_controls(%struct.snd_soc_card* %114, %struct.snd_soc_dapm_route* %115, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %123 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  br label %240

127:                                              ; preds = %113
  %128 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %129 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %128, i32 0, i32 1
  %130 = call i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_7__* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %131 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %132 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %131, i32 0, i32 1
  %133 = call i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_7__* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @byt_rt5651_quirk, align 4
  %135 = load i32, i32* @BYT_RT5651_MCLK_EN, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %174

138:                                              ; preds = %127
  %139 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %140 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @clk_prepare_enable(i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %138
  %146 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %147 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @clk_disable_unprepare(i32 %148)
  br label %150

150:                                              ; preds = %145, %138
  %151 = load i32, i32* @byt_rt5651_quirk, align 4
  %152 = load i32, i32* @BYT_RT5651_MCLK_25MHZ, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %157 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @clk_set_rate(i32 %158, i32 25000000)
  store i32 %159, i32* %10, align 4
  br label %165

160:                                              ; preds = %150
  %161 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %162 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @clk_set_rate(i32 %163, i32 19200000)
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %160, %155
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %170 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, ...) @dev_err(i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %165
  br label %174

174:                                              ; preds = %173, %127
  store i32 0, i32* %9, align 4
  %175 = load i32, i32* @byt_rt5651_quirk, align 4
  %176 = call i64 @BYT_RT5651_JDSRC(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i32, i32* @SND_JACK_HEADSET, align 4
  %180 = load i32, i32* @SND_JACK_BTN_0, align 4
  %181 = or i32 %179, %180
  store i32 %181, i32* %9, align 4
  br label %190

182:                                              ; preds = %174
  %183 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %184 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* @SND_JACK_HEADSET, align 4
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %187, %182
  br label %190

190:                                              ; preds = %189, %178
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %239

193:                                              ; preds = %190
  %194 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %195 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %194, i32 0, i32 1
  %196 = load %struct.snd_soc_card*, %struct.snd_soc_card** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %199 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %198, i32 0, i32 1
  %200 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @bytcr_jack_pins, align 8
  %201 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** @bytcr_jack_pins, align 8
  %202 = call i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route* %201)
  %203 = call i32 @snd_soc_card_jack_new(%struct.snd_soc_card* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %197, %struct.TYPE_8__* %199, %struct.snd_soc_dapm_route* %200, i32 %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %193
  %207 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %208 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = call i32 (i32, i8*, ...) @dev_err(i32 %209, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %2, align 4
  br label %240

213:                                              ; preds = %193
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @SND_JACK_BTN_0, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %213
  %219 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %220 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @SND_JACK_BTN_0, align 4
  %224 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %225 = call i32 @snd_jack_set_key(i32 %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %218, %213
  %227 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %228 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %229 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %228, i32 0, i32 1
  %230 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %6, align 8
  %231 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @snd_soc_component_set_jack(%struct.snd_soc_component* %227, %struct.TYPE_8__* %229, i64 %232)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %226
  %237 = load i32, i32* %10, align 4
  store i32 %237, i32* %2, align 4
  br label %240

238:                                              ; preds = %226
  br label %239

239:                                              ; preds = %238, %190
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %236, %206, %121, %111, %61
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.byt_rt5651_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @BYT_RT5651_MAP(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_soc_dapm_route*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.TYPE_7__*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @snd_soc_add_card_controls(%struct.snd_soc_card*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_dapm_ignore_suspend(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i64 @BYT_RT5651_JDSRC(i32) #1

declare dso_local i32 @snd_soc_card_jack_new(%struct.snd_soc_card*, i8*, i32, %struct.TYPE_8__*, %struct.snd_soc_dapm_route*, i32) #1

declare dso_local i32 @snd_jack_set_key(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_jack(%struct.snd_soc_component*, %struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
