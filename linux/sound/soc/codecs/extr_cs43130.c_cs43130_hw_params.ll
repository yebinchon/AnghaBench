; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.cs43130_rate_map = type { i32 }

@CS43130_MCLK_22M = common dso_local global i32 0, align 4
@CS43130_MCLK_24M = common dso_local global i32 0, align 4
@CS43130_MCLK_SRC_EXT = common dso_local global i32 0, align 4
@CS43130_MCLK_SRC_PLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Rate(%u) not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS43130_DSD_PATH_CTL_2 = common dso_local global i32 0, align 4
@CS43130_DSD_SPEED_MASK = common dso_local global i32 0, align 4
@CS43130_DSD_SPEED_SHIFT = common dso_local global i32 0, align 4
@CS43130_SP_SRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid DAI (%d)\0A\00", align 1
@CS43130_DSD_SRC_MASK = common dso_local global i32 0, align 4
@CS43130_DSD_SRC_ASP = common dso_local global i32 0, align 4
@CS43130_DSD_SRC_SHIFT = common dso_local global i32 0, align 4
@CS43130_DSD_SRC_XSP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"SCLK freq is not set\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Format not supported: SCLK freq is too low\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"sclk = %u, fs = %d, bitwidth_dai = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"bitwidth_sclk = %u, num_ch = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs43130_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs43130_private*, align 8
  %10 = alloca %struct.cs43130_rate_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.cs43130_private* %20, %struct.cs43130_private** %9, align 8
  %21 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %22 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = call i64 @params_width(%struct.snd_pcm_hw_params* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %34 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %33, i32 0, i32 3
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %37 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @CS43130_MCLK_22M, align 4
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i32 @params_rate(%struct.snd_pcm_hw_params* %42)
  %44 = urem i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @CS43130_MCLK_22M, align 4
  store i32 %47, i32* %14, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @CS43130_MCLK_24M, align 4
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %52 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %53 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @cs43130_set_pll(%struct.snd_soc_component* %51, i32 0, i32 0, i32 %54, i32 %55)
  %57 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %58 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %63 = load i32, i32* @CS43130_MCLK_SRC_EXT, align 4
  %64 = call i32 @cs43130_change_clksrc(%struct.snd_soc_component* %62, i32 %63)
  br label %69

65:                                               ; preds = %50
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %67 = load i32, i32* @CS43130_MCLK_SRC_PLL, align 4
  %68 = call i32 @cs43130_change_clksrc(%struct.snd_soc_component* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %72 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %76 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %81 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cs43130_pcm_dsd_mix(i32 1, i32 %82)
  br label %84

84:                                               ; preds = %79, %70
  %85 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %86 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %85, i32 0, i32 3
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %89 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  switch i64 %90, label %140 [
    i64 130, label %91
    i64 128, label %91
    i64 129, label %122
  ]

91:                                               ; preds = %84, %84
  store i32 24, i32* %13, align 4
  %92 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %93 = call i32 @params_rate(%struct.snd_pcm_hw_params* %92)
  %94 = load i32, i32* %13, align 4
  %95 = mul i32 %93, %94
  %96 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %97 = call i32 @params_channels(%struct.snd_pcm_hw_params* %96)
  %98 = mul i32 %95, %97
  store i32 %98, i32* %11, align 4
  %99 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %100 = call i32 @params_rate(%struct.snd_pcm_hw_params* %99)
  switch i32 %100, label %103 [
    i32 176400, label %101
    i32 352800, label %102
  ]

101:                                              ; preds = %91
  store i32 0, i32* %15, align 4
  br label %112

102:                                              ; preds = %91
  store i32 1, i32* %15, align 4
  br label %112

103:                                              ; preds = %91
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %105 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %108 = call i32 @params_rate(%struct.snd_pcm_hw_params* %107)
  %109 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %256

112:                                              ; preds = %102, %101
  %113 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %114 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CS43130_DSD_PATH_CTL_2, align 4
  %117 = load i32, i32* @CS43130_DSD_SPEED_MASK, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @CS43130_DSD_SPEED_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 %117, i32 %120)
  br label %150

122:                                              ; preds = %84
  %123 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %124 = call i32 @params_rate(%struct.snd_pcm_hw_params* %123)
  %125 = call %struct.cs43130_rate_map* @cs43130_get_rate_table(i32 %124)
  store %struct.cs43130_rate_map* %125, %struct.cs43130_rate_map** %10, align 8
  %126 = load %struct.cs43130_rate_map*, %struct.cs43130_rate_map** %10, align 8
  %127 = icmp ne %struct.cs43130_rate_map* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %256

131:                                              ; preds = %122
  %132 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %133 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CS43130_SP_SRATE, align 4
  %136 = load %struct.cs43130_rate_map*, %struct.cs43130_rate_map** %10, align 8
  %137 = getelementptr inbounds %struct.cs43130_rate_map, %struct.cs43130_rate_map* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @regmap_write(i32 %134, i32 %135, i32 %138)
  br label %150

140:                                              ; preds = %84
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %142 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %145 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32, i8*, ...) @dev_err(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %256

150:                                              ; preds = %131, %112
  %151 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %152 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  switch i64 %153, label %174 [
    i64 130, label %154
    i64 128, label %164
  ]

154:                                              ; preds = %150
  %155 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %156 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CS43130_DSD_PATH_CTL_2, align 4
  %159 = load i32, i32* @CS43130_DSD_SRC_MASK, align 4
  %160 = load i32, i32* @CS43130_DSD_SRC_ASP, align 4
  %161 = load i32, i32* @CS43130_DSD_SRC_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = call i32 @regmap_update_bits(i32 %157, i32 %158, i32 %159, i32 %162)
  br label %174

164:                                              ; preds = %150
  %165 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %166 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @CS43130_DSD_PATH_CTL_2, align 4
  %169 = load i32, i32* @CS43130_DSD_SRC_MASK, align 4
  %170 = load i32, i32* @CS43130_DSD_SRC_XSP, align 4
  %171 = load i32, i32* @CS43130_DSD_SRC_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = call i32 @regmap_update_bits(i32 %167, i32 %168, i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %150, %164, %154
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %197, label %177

177:                                              ; preds = %174
  %178 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %179 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %178, i32 0, i32 2
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %182 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @SND_SOC_DAIFMT_CBM_CFM, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %177
  %190 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %191 = call i32 @params_rate(%struct.snd_pcm_hw_params* %190)
  %192 = load i32, i32* %13, align 4
  %193 = mul i32 %191, %192
  %194 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %195 = call i32 @params_channels(%struct.snd_pcm_hw_params* %194)
  %196 = mul i32 %193, %195
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %189, %177, %174
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %202 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, ...) @dev_err(i32 %203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %256

207:                                              ; preds = %197
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %210 = call i32 @params_rate(%struct.snd_pcm_hw_params* %209)
  %211 = udiv i32 %208, %210
  %212 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %213 = call i32 @params_channels(%struct.snd_pcm_hw_params* %212)
  %214 = udiv i32 %211, %213
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = icmp ult i32 %215, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %207
  %219 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %220 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i32, i8*, ...) @dev_err(i32 %221, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %256

225:                                              ; preds = %207
  %226 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %227 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %231 = call i32 @params_rate(%struct.snd_pcm_hw_params* %230)
  %232 = load i32, i32* %13, align 4
  %233 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %228, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %229, i32 %231, i32 %232)
  %234 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %235 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %239 = call i32 @params_channels(%struct.snd_pcm_hw_params* %238)
  %240 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %236, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %237, i32 %239)
  %241 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %242 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %246 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @cs43130_set_bitwidth(i64 %243, i32 %244, i32 %247)
  %249 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %250 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %254 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %255 = call i32 @cs43130_set_sp_fmt(i64 %251, i32 %252, %struct.snd_pcm_hw_params* %253, %struct.cs43130_private* %254)
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %225, %218, %200, %140, %128, %103
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs43130_set_pll(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @cs43130_change_clksrc(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @cs43130_pcm_dsd_mix(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local %struct.cs43130_rate_map* @cs43130_get_rate_table(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @cs43130_set_bitwidth(i64, i32, i32) #1

declare dso_local i32 @cs43130_set_sp_fmt(i64, i32, %struct.snd_pcm_hw_params*, %struct.cs43130_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
