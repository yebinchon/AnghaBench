; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_set_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_set_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component*, %struct.device* }
%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.pcm512x_priv = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"No LRCLK?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to find suitable BCLK: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"No BCLK?\0A\00", align 1
@PCM512x_PLL_COEFF_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to write PLL P: %d\0A\00", align 1
@PCM512x_PLL_COEFF_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to write PLL J: %d\0A\00", align 1
@PCM512x_PLL_COEFF_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to write PLL D msb: %d\0A\00", align 1
@PCM512x_PLL_COEFF_3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to write PLL D lsb: %d\0A\00", align 1
@PCM512x_PLL_COEFF_4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to write PLL R: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to find BCLK divider\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"using pll input as dac input\0A\00", align 1
@PCM512x_DAC_REF = common dso_local global i32 0, align 4
@PCM512x_SDAC = common dso_local global i32 0, align 4
@PCM512x_SDAC_GPIO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Failed to set gpio as dacref: %d\0A\00", align 1
@PCM512x_GREF_GPIO1 = common dso_local global i32 0, align 4
@PCM512x_GPIO_DACIN = common dso_local global i32 0, align 4
@PCM512x_GREF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"Failed to set gpio %d as dacin: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Failed to find DAC rate\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"dac_rate %lu sample_rate %lu\0A\00", align 1
@PCM512x_SDAC_SCK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"Failed to set sck as dacref: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Failed to find OSR divider\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Failed to find DAC divider\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Failed to find NCP divider\0A\00", align 1
@PCM512x_DSP_CLKDIV = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"Failed to write DSP divider: %d\0A\00", align 1
@PCM512x_DAC_CLKDIV = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [33 x i8] c"Failed to write DAC divider: %d\0A\00", align 1
@PCM512x_NCP_CLKDIV = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"Failed to write NCP divider: %d\0A\00", align 1
@PCM512x_OSR_CLKDIV = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"Failed to write OSR divider: %d\0A\00", align 1
@PCM512x_MASTER_CLKDIV_1 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [34 x i8] c"Failed to write BCLK divider: %d\0A\00", align 1
@PCM512x_MASTER_CLKDIV_2 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [35 x i8] c"Failed to write LRCLK divider: %d\0A\00", align 1
@PCM512x_IDAC_1 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [38 x i8] c"Failed to write IDAC msb divider: %d\0A\00", align 1
@PCM512x_IDAC_2 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [38 x i8] c"Failed to write IDAC lsb divider: %d\0A\00", align 1
@PCM512x_FSSP_48KHZ = common dso_local global i32 0, align 4
@PCM512x_FSSP_96KHZ = common dso_local global i32 0, align 4
@PCM512x_FSSP_192KHZ = common dso_local global i32 0, align 4
@PCM512x_FSSP_384KHZ = common dso_local global i32 0, align 4
@PCM512x_FS_SPEED_MODE = common dso_local global i32 0, align 4
@PCM512x_FSSP = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [28 x i8] c"Failed to set fs speed: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"DSP divider %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"DAC divider %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"NCP divider %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"OSR divider %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"BCK divider %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"LRCK divider %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"IDAC %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"1<<FSSP %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @pcm512x_set_dividers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_set_dividers(%struct.snd_soc_dai* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.pcm512x_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 1
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %6, align 8
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 0
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %34, align 8
  store %struct.snd_soc_component* %35, %struct.snd_soc_component** %7, align 8
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %37 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %36)
  store %struct.pcm512x_priv* %37, %struct.pcm512x_priv** %8, align 8
  store i64 0, i64* %9, align 8
  %38 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %39 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %44 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %18, align 4
  br label %57

46:                                               ; preds = %2
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %48 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %605

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %59 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %64 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @clk_get_rate(i32 %65)
  store i64 %66, i64* %11, align 8
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %68 = call i32 @params_rate(%struct.snd_pcm_hw_params* %67)
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @DIV_ROUND_CLOSEST(i64 %72, i64 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i64, i64* %11, align 8
  store i64 %75, i64* %12, align 8
  br label %211

76:                                               ; preds = %57
  %77 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %78 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %77)
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %24, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load i32, i32* %24, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %24, align 4
  store i32 %85, i32* %3, align 4
  br label %605

86:                                               ; preds = %76
  %87 = load i32, i32* %24, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %605

94:                                               ; preds = %86
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %13, align 8
  %97 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %98 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @clk_get_rate(i32 %99)
  store i64 %100, i64* %9, align 8
  %101 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call i64 @pcm512x_find_sck(%struct.snd_soc_dai* %101, i64 %102)
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %605

109:                                              ; preds = %94
  %110 = load i64, i64* %11, align 8
  %111 = mul i64 4, %110
  store i64 %111, i64* %10, align 8
  %112 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @pcm512x_find_pll_coeff(%struct.snd_soc_dai* %112, i64 %113, i64 %114)
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %24, align 4
  store i32 %119, i32* %3, align 4
  br label %605

120:                                              ; preds = %109
  %121 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %122 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PCM512x_PLL_COEFF_0, align 4
  %125 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %126 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  %129 = call i32 @regmap_write(i32 %123, i32 %124, i32 %128)
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %24, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = load i32, i32* %24, align 4
  %135 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %24, align 4
  store i32 %136, i32* %3, align 4
  br label %605

137:                                              ; preds = %120
  %138 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %139 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @PCM512x_PLL_COEFF_1, align 4
  %142 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %143 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @regmap_write(i32 %140, i32 %141, i32 %144)
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %137
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = load i32, i32* %24, align 4
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %24, align 4
  store i32 %152, i32* %3, align 4
  br label %605

153:                                              ; preds = %137
  %154 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %155 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PCM512x_PLL_COEFF_2, align 4
  %158 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %159 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = ashr i32 %160, 8
  %162 = call i32 @regmap_write(i32 %156, i32 %157, i32 %161)
  store i32 %162, i32* %24, align 4
  %163 = load i32, i32* %24, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %153
  %166 = load %struct.device*, %struct.device** %6, align 8
  %167 = load i32, i32* %24, align 4
  %168 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %24, align 4
  store i32 %169, i32* %3, align 4
  br label %605

170:                                              ; preds = %153
  %171 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %172 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @PCM512x_PLL_COEFF_3, align 4
  %175 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %176 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 255
  %179 = call i32 @regmap_write(i32 %173, i32 %174, i32 %178)
  store i32 %179, i32* %24, align 4
  %180 = load i32, i32* %24, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %170
  %183 = load %struct.device*, %struct.device** %6, align 8
  %184 = load i32, i32* %24, align 4
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %24, align 4
  store i32 %186, i32* %3, align 4
  br label %605

187:                                              ; preds = %170
  %188 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %189 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @PCM512x_PLL_COEFF_4, align 4
  %192 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %193 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = sub nsw i32 %194, 1
  %196 = call i32 @regmap_write(i32 %190, i32 %191, i32 %195)
  store i32 %196, i32* %24, align 4
  %197 = load i32, i32* %24, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %187
  %200 = load %struct.device*, %struct.device** %6, align 8
  %201 = load i32, i32* %24, align 4
  %202 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %24, align 4
  store i32 %203, i32* %3, align 4
  br label %605

204:                                              ; preds = %187
  %205 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %206 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %12, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* %13, align 8
  %210 = call i32 @DIV_ROUND_CLOSEST(i64 %208, i64 %209)
  store i32 %210, i32* %17, align 4
  br label %211

211:                                              ; preds = %204, %62
  %212 = load i32, i32* %17, align 4
  %213 = icmp sgt i32 %212, 128
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load %struct.device*, %struct.device** %6, align 8
  %216 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %3, align 4
  br label %605

219:                                              ; preds = %211
  %220 = load i64, i64* %11, align 8
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = udiv i64 %220, %222
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = udiv i64 %223, %225
  store i64 %226, i64* %14, align 8
  %227 = load i64, i64* %14, align 8
  %228 = mul i64 16, %227
  store i64 %228, i64* %15, align 8
  %229 = load i64, i64* %12, align 8
  %230 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %231 = call i64 @pcm512x_dsp_max(%struct.pcm512x_priv* %230)
  %232 = icmp ugt i64 %229, %231
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 2, i32 1
  store i32 %234, i32* %19, align 4
  %235 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %236 = load i64, i64* %15, align 8
  %237 = load i64, i64* %9, align 8
  %238 = call i64 @pcm512x_pllin_dac_rate(%struct.snd_soc_dai* %235, i64 %236, i64 %237)
  store i64 %238, i64* %21, align 8
  %239 = load i64, i64* %21, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %288

241:                                              ; preds = %219
  %242 = load %struct.device*, %struct.device** %6, align 8
  %243 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %244 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %245 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @PCM512x_DAC_REF, align 4
  %248 = load i32, i32* @PCM512x_SDAC, align 4
  %249 = load i32, i32* @PCM512x_SDAC_GPIO, align 4
  %250 = call i32 @regmap_update_bits(i32 %246, i32 %247, i32 %248, i32 %249)
  store i32 %250, i32* %24, align 4
  %251 = load i32, i32* %24, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %241
  %254 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %255 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %254, i32 0, i32 0
  %256 = load %struct.device*, %struct.device** %255, align 8
  %257 = load i32, i32* %24, align 4
  %258 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* %24, align 4
  store i32 %259, i32* %3, align 4
  br label %605

260:                                              ; preds = %241
  %261 = load i32, i32* @PCM512x_GREF_GPIO1, align 4
  %262 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %263 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %261, %264
  %266 = sub nsw i32 %265, 1
  store i32 %266, i32* %27, align 4
  %267 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %268 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @PCM512x_GPIO_DACIN, align 4
  %271 = load i32, i32* @PCM512x_GREF, align 4
  %272 = load i32, i32* %27, align 4
  %273 = call i32 @regmap_update_bits(i32 %269, i32 %270, i32 %271, i32 %272)
  store i32 %273, i32* %24, align 4
  %274 = load i32, i32* %24, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %260
  %277 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %278 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %277, i32 0, i32 0
  %279 = load %struct.device*, %struct.device** %278, align 8
  %280 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %281 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %24, align 4
  %284 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %279, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %282, i32 %283)
  %285 = load i32, i32* %24, align 4
  store i32 %285, i32* %3, align 4
  br label %605

286:                                              ; preds = %260
  %287 = load i64, i64* %9, align 8
  store i64 %287, i64* %16, align 8
  br label %343

288:                                              ; preds = %219
  %289 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %290 = call i64 @pcm512x_dac_max(%struct.pcm512x_priv* %289, i32 6144000)
  %291 = load i64, i64* %15, align 8
  %292 = udiv i64 %290, %291
  store i64 %292, i64* %28, align 8
  %293 = load i64, i64* %11, align 8
  %294 = load i64, i64* %15, align 8
  %295 = udiv i64 %293, %294
  store i64 %295, i64* %29, align 8
  br label %296

296:                                              ; preds = %306, %288
  %297 = load i64, i64* %28, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %296
  %300 = load i64, i64* %29, align 8
  %301 = load i64, i64* %28, align 8
  %302 = urem i64 %300, %301
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %299
  br label %309

305:                                              ; preds = %299
  br label %306

306:                                              ; preds = %305
  %307 = load i64, i64* %28, align 8
  %308 = add i64 %307, -1
  store i64 %308, i64* %28, align 8
  br label %296

309:                                              ; preds = %304, %296
  %310 = load i64, i64* %28, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %309
  %313 = load %struct.device*, %struct.device** %6, align 8
  %314 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %313, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %315 = load i32, i32* @EINVAL, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %3, align 4
  br label %605

317:                                              ; preds = %309
  %318 = load i64, i64* %28, align 8
  %319 = load i64, i64* %15, align 8
  %320 = mul i64 %318, %319
  store i64 %320, i64* %21, align 8
  %321 = load %struct.device*, %struct.device** %6, align 8
  %322 = load i64, i64* %21, align 8
  %323 = load i64, i64* %14, align 8
  %324 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %321, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i64 %322, i64 %323)
  %325 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %326 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @PCM512x_DAC_REF, align 4
  %329 = load i32, i32* @PCM512x_SDAC, align 4
  %330 = load i32, i32* @PCM512x_SDAC_SCK, align 4
  %331 = call i32 @regmap_update_bits(i32 %327, i32 %328, i32 %329, i32 %330)
  store i32 %331, i32* %24, align 4
  %332 = load i32, i32* %24, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %317
  %335 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %336 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %335, i32 0, i32 0
  %337 = load %struct.device*, %struct.device** %336, align 8
  %338 = load i32, i32* %24, align 4
  %339 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %337, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %338)
  %340 = load i32, i32* %24, align 4
  store i32 %340, i32* %3, align 4
  br label %605

341:                                              ; preds = %317
  %342 = load i64, i64* %11, align 8
  store i64 %342, i64* %16, align 8
  br label %343

343:                                              ; preds = %341, %286
  %344 = load i64, i64* %21, align 8
  %345 = load i64, i64* %15, align 8
  %346 = call i32 @DIV_ROUND_CLOSEST(i64 %344, i64 %345)
  store i32 %346, i32* %23, align 4
  %347 = load i32, i32* %23, align 4
  %348 = icmp sgt i32 %347, 128
  br i1 %348, label %349, label %354

349:                                              ; preds = %343
  %350 = load %struct.device*, %struct.device** %6, align 8
  %351 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %350, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %352 = load i32, i32* @EINVAL, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %3, align 4
  br label %605

354:                                              ; preds = %343
  %355 = load i64, i64* %16, align 8
  %356 = load i64, i64* %21, align 8
  %357 = call i32 @DIV_ROUND_CLOSEST(i64 %355, i64 %356)
  store i32 %357, i32* %20, align 4
  %358 = load i32, i32* %20, align 4
  %359 = icmp sgt i32 %358, 128
  br i1 %359, label %360, label %365

360:                                              ; preds = %354
  %361 = load %struct.device*, %struct.device** %6, align 8
  %362 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %361, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %363 = load i32, i32* @EINVAL, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %3, align 4
  br label %605

365:                                              ; preds = %354
  %366 = load i64, i64* %16, align 8
  %367 = load i32, i32* %20, align 4
  %368 = sext i32 %367 to i64
  %369 = udiv i64 %366, %368
  store i64 %369, i64* %21, align 8
  %370 = load i64, i64* %21, align 8
  %371 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %372 = load i64, i64* %21, align 8
  %373 = call i64 @pcm512x_ncp_target(%struct.pcm512x_priv* %371, i64 %372)
  %374 = call i32 @DIV_ROUND_CLOSEST(i64 %370, i64 %373)
  store i32 %374, i32* %22, align 4
  %375 = load i32, i32* %22, align 4
  %376 = icmp sgt i32 %375, 128
  br i1 %376, label %383, label %377

377:                                              ; preds = %365
  %378 = load i64, i64* %21, align 8
  %379 = load i32, i32* %22, align 4
  %380 = sext i32 %379 to i64
  %381 = udiv i64 %378, %380
  %382 = icmp ugt i64 %381, 2048000
  br i1 %382, label %383, label %394

383:                                              ; preds = %377, %365
  %384 = load i64, i64* %21, align 8
  %385 = call i32 @DIV_ROUND_UP(i64 %384, i32 2048000)
  store i32 %385, i32* %22, align 4
  %386 = load i32, i32* %22, align 4
  %387 = icmp sgt i32 %386, 128
  br i1 %387, label %388, label %393

388:                                              ; preds = %383
  %389 = load %struct.device*, %struct.device** %6, align 8
  %390 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %389, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %3, align 4
  br label %605

393:                                              ; preds = %383
  br label %394

394:                                              ; preds = %393, %377
  %395 = load i64, i64* %12, align 8
  %396 = load i32, i32* %19, align 4
  %397 = sext i32 %396 to i64
  %398 = load i64, i64* %14, align 8
  %399 = mul i64 %397, %398
  %400 = udiv i64 %395, %399
  %401 = trunc i64 %400 to i32
  store i32 %401, i32* %25, align 4
  %402 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %403 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %402, i32 0, i32 7
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* @PCM512x_DSP_CLKDIV, align 4
  %406 = load i32, i32* %19, align 4
  %407 = sub nsw i32 %406, 1
  %408 = call i32 @regmap_write(i32 %404, i32 %405, i32 %407)
  store i32 %408, i32* %24, align 4
  %409 = load i32, i32* %24, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %394
  %412 = load %struct.device*, %struct.device** %6, align 8
  %413 = load i32, i32* %24, align 4
  %414 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %412, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %413)
  %415 = load i32, i32* %24, align 4
  store i32 %415, i32* %3, align 4
  br label %605

416:                                              ; preds = %394
  %417 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %418 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @PCM512x_DAC_CLKDIV, align 4
  %421 = load i32, i32* %20, align 4
  %422 = sub nsw i32 %421, 1
  %423 = call i32 @regmap_write(i32 %419, i32 %420, i32 %422)
  store i32 %423, i32* %24, align 4
  %424 = load i32, i32* %24, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %431

426:                                              ; preds = %416
  %427 = load %struct.device*, %struct.device** %6, align 8
  %428 = load i32, i32* %24, align 4
  %429 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %427, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %428)
  %430 = load i32, i32* %24, align 4
  store i32 %430, i32* %3, align 4
  br label %605

431:                                              ; preds = %416
  %432 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %433 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @PCM512x_NCP_CLKDIV, align 4
  %436 = load i32, i32* %22, align 4
  %437 = sub nsw i32 %436, 1
  %438 = call i32 @regmap_write(i32 %434, i32 %435, i32 %437)
  store i32 %438, i32* %24, align 4
  %439 = load i32, i32* %24, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %431
  %442 = load %struct.device*, %struct.device** %6, align 8
  %443 = load i32, i32* %24, align 4
  %444 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %442, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 %443)
  %445 = load i32, i32* %24, align 4
  store i32 %445, i32* %3, align 4
  br label %605

446:                                              ; preds = %431
  %447 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %448 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %447, i32 0, i32 7
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @PCM512x_OSR_CLKDIV, align 4
  %451 = load i32, i32* %23, align 4
  %452 = sub nsw i32 %451, 1
  %453 = call i32 @regmap_write(i32 %449, i32 %450, i32 %452)
  store i32 %453, i32* %24, align 4
  %454 = load i32, i32* %24, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %446
  %457 = load %struct.device*, %struct.device** %6, align 8
  %458 = load i32, i32* %24, align 4
  %459 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %457, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %458)
  %460 = load i32, i32* %24, align 4
  store i32 %460, i32* %3, align 4
  br label %605

461:                                              ; preds = %446
  %462 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %463 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %462, i32 0, i32 7
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* @PCM512x_MASTER_CLKDIV_1, align 4
  %466 = load i32, i32* %17, align 4
  %467 = sub nsw i32 %466, 1
  %468 = call i32 @regmap_write(i32 %464, i32 %465, i32 %467)
  store i32 %468, i32* %24, align 4
  %469 = load i32, i32* %24, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %461
  %472 = load %struct.device*, %struct.device** %6, align 8
  %473 = load i32, i32* %24, align 4
  %474 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %472, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 %473)
  %475 = load i32, i32* %24, align 4
  store i32 %475, i32* %3, align 4
  br label %605

476:                                              ; preds = %461
  %477 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %478 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %477, i32 0, i32 7
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @PCM512x_MASTER_CLKDIV_2, align 4
  %481 = load i32, i32* %18, align 4
  %482 = sub nsw i32 %481, 1
  %483 = call i32 @regmap_write(i32 %479, i32 %480, i32 %482)
  store i32 %483, i32* %24, align 4
  %484 = load i32, i32* %24, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %491

486:                                              ; preds = %476
  %487 = load %struct.device*, %struct.device** %6, align 8
  %488 = load i32, i32* %24, align 4
  %489 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %487, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i32 %488)
  %490 = load i32, i32* %24, align 4
  store i32 %490, i32* %3, align 4
  br label %605

491:                                              ; preds = %476
  %492 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %493 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %492, i32 0, i32 7
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @PCM512x_IDAC_1, align 4
  %496 = load i32, i32* %25, align 4
  %497 = ashr i32 %496, 8
  %498 = call i32 @regmap_write(i32 %494, i32 %495, i32 %497)
  store i32 %498, i32* %24, align 4
  %499 = load i32, i32* %24, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %491
  %502 = load %struct.device*, %struct.device** %6, align 8
  %503 = load i32, i32* %24, align 4
  %504 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %502, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i32 %503)
  %505 = load i32, i32* %24, align 4
  store i32 %505, i32* %3, align 4
  br label %605

506:                                              ; preds = %491
  %507 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %508 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %507, i32 0, i32 7
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* @PCM512x_IDAC_2, align 4
  %511 = load i32, i32* %25, align 4
  %512 = and i32 %511, 255
  %513 = call i32 @regmap_write(i32 %509, i32 %510, i32 %512)
  store i32 %513, i32* %24, align 4
  %514 = load i32, i32* %24, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %521

516:                                              ; preds = %506
  %517 = load %struct.device*, %struct.device** %6, align 8
  %518 = load i32, i32* %24, align 4
  %519 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %517, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i32 %518)
  %520 = load i32, i32* %24, align 4
  store i32 %520, i32* %3, align 4
  br label %605

521:                                              ; preds = %506
  %522 = load i64, i64* %14, align 8
  %523 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %524 = call i64 @pcm512x_dac_max(%struct.pcm512x_priv* %523, i32 48000)
  %525 = icmp ule i64 %522, %524
  br i1 %525, label %526, label %528

526:                                              ; preds = %521
  %527 = load i32, i32* @PCM512x_FSSP_48KHZ, align 4
  store i32 %527, i32* %26, align 4
  br label %546

528:                                              ; preds = %521
  %529 = load i64, i64* %14, align 8
  %530 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %531 = call i64 @pcm512x_dac_max(%struct.pcm512x_priv* %530, i32 96000)
  %532 = icmp ule i64 %529, %531
  br i1 %532, label %533, label %535

533:                                              ; preds = %528
  %534 = load i32, i32* @PCM512x_FSSP_96KHZ, align 4
  store i32 %534, i32* %26, align 4
  br label %545

535:                                              ; preds = %528
  %536 = load i64, i64* %14, align 8
  %537 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %538 = call i64 @pcm512x_dac_max(%struct.pcm512x_priv* %537, i32 192000)
  %539 = icmp ule i64 %536, %538
  br i1 %539, label %540, label %542

540:                                              ; preds = %535
  %541 = load i32, i32* @PCM512x_FSSP_192KHZ, align 4
  store i32 %541, i32* %26, align 4
  br label %544

542:                                              ; preds = %535
  %543 = load i32, i32* @PCM512x_FSSP_384KHZ, align 4
  store i32 %543, i32* %26, align 4
  br label %544

544:                                              ; preds = %542, %540
  br label %545

545:                                              ; preds = %544, %533
  br label %546

546:                                              ; preds = %545, %526
  %547 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %8, align 8
  %548 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %547, i32 0, i32 7
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @PCM512x_FS_SPEED_MODE, align 4
  %551 = load i32, i32* @PCM512x_FSSP, align 4
  %552 = load i32, i32* %26, align 4
  %553 = call i32 @regmap_update_bits(i32 %549, i32 %550, i32 %551, i32 %552)
  store i32 %553, i32* %24, align 4
  %554 = load i32, i32* %24, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %563

556:                                              ; preds = %546
  %557 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %558 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %557, i32 0, i32 0
  %559 = load %struct.device*, %struct.device** %558, align 8
  %560 = load i32, i32* %24, align 4
  %561 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %559, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %560)
  %562 = load i32, i32* %24, align 4
  store i32 %562, i32* %3, align 4
  br label %605

563:                                              ; preds = %546
  %564 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %565 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %564, i32 0, i32 0
  %566 = load %struct.device*, %struct.device** %565, align 8
  %567 = load i32, i32* %19, align 4
  %568 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %566, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32 %567)
  %569 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %570 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %569, i32 0, i32 0
  %571 = load %struct.device*, %struct.device** %570, align 8
  %572 = load i32, i32* %20, align 4
  %573 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %571, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32 %572)
  %574 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %575 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %574, i32 0, i32 0
  %576 = load %struct.device*, %struct.device** %575, align 8
  %577 = load i32, i32* %22, align 4
  %578 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %576, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 %577)
  %579 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %580 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %579, i32 0, i32 0
  %581 = load %struct.device*, %struct.device** %580, align 8
  %582 = load i32, i32* %23, align 4
  %583 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %581, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i32 %582)
  %584 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %585 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %584, i32 0, i32 0
  %586 = load %struct.device*, %struct.device** %585, align 8
  %587 = load i32, i32* %17, align 4
  %588 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %586, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 %587)
  %589 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %590 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %589, i32 0, i32 0
  %591 = load %struct.device*, %struct.device** %590, align 8
  %592 = load i32, i32* %18, align 4
  %593 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %591, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 %592)
  %594 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %595 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %594, i32 0, i32 0
  %596 = load %struct.device*, %struct.device** %595, align 8
  %597 = load i32, i32* %25, align 4
  %598 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %596, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i32 %597)
  %599 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %600 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %599, i32 0, i32 0
  %601 = load %struct.device*, %struct.device** %600, align 8
  %602 = load i32, i32* %26, align 4
  %603 = shl i32 1, %602
  %604 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %601, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %603)
  store i32 0, i32* %3, align 4
  br label %605

605:                                              ; preds = %563, %556, %516, %501, %486, %471, %456, %441, %426, %411, %388, %360, %349, %334, %312, %276, %253, %214, %199, %182, %165, %148, %132, %118, %106, %89, %81, %51
  %606 = load i32, i32* %3, align 4
  ret i32 %606
}

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @pcm512x_find_sck(%struct.snd_soc_dai*, i64) #1

declare dso_local i32 @pcm512x_find_pll_coeff(%struct.snd_soc_dai*, i64, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @pcm512x_dsp_max(%struct.pcm512x_priv*) #1

declare dso_local i64 @pcm512x_pllin_dac_rate(%struct.snd_soc_dai*, i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @pcm512x_dac_max(%struct.pcm512x_priv*, i32) #1

declare dso_local i64 @pcm512x_ncp_target(%struct.pcm512x_priv*, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
