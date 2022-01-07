; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9860.c_max9860_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9860.c_max9860_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max9860_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"hw_params %u Hz, %u channels\0A\00", align 1
@MAX9860_ST = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@MAX9860_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX9860_BSEL_64X = common dso_local global i32 0, align 4
@MAX9860_BSEL_48X = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@MAX9860_DDLY = common dso_local global i32 0, align 4
@MAX9860_ADLY = common dso_local global i32 0, align 4
@MAX9860_WCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"DSP_A works for 16 bits per sample only.\0A\00", align 1
@MAX9860_HIZ = common dso_local global i32 0, align 4
@MAX9860_TDM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"DSP_B works for 16 bits per sample only.\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@MAX9860_DBCI = common dso_local global i32 0, align 4
@MAX9860_ABCI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"IFC1A  %02x\0A\00", align 1
@MAX9860_IFC1A = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to set IFC1A: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"IFC1B  %02x\0A\00", align 1
@MAX9860_IFC1B = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to set IFC1B: %d\0A\00", align 1
@MAX9860_FREQ_12MHZ = common dso_local global i32 0, align 4
@MAX9860_FREQ_13MHZ = common dso_local global i32 0, align 4
@MAX9860_FREQ_19_2MHZ = common dso_local global i32 0, align 4
@MAX9860_16KHZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"SYSCLK %02x\0A\00", align 1
@MAX9860_SYSCLK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to set SYSCLK: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"N %lu\0A\00", align 1
@MAX9860_AUDIOCLKHIGH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Failed to set NHI: %d\0A\00", align 1
@MAX9860_AUDIOCLKLOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Failed to set NLO: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Enable PLL\0A\00", align 1
@MAX9860_PLL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Failed to enable PLL: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max9860_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9860_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max9860_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.max9860_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.max9860_priv* %20, %struct.max9860_priv** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %27 = call i32 @params_channels(%struct.snd_pcm_hw_params* %26)
  %28 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_channels(%struct.snd_pcm_hw_params* %29)
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @MAX9860_ST, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %38 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %45 [
    i32 136, label %42
    i32 137, label %43
  ]

42:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @MAX9860_MASTER, align 4
  store i32 %44, i32* %10, align 4
  br label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %373

48:                                               ; preds = %43, %42
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %56 = call i32 @params_width(%struct.snd_pcm_hw_params* %55)
  %57 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %58 = call i32 @params_channels(%struct.snd_pcm_hw_params* %57)
  %59 = mul nsw i32 %56, %58
  %60 = icmp sgt i32 %59, 48
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @MAX9860_BSEL_64X, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load i32, i32* @MAX9860_BSEL_48X, align 4
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %48
  %71 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %72 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %75 = and i32 %73, %74
  switch i32 %75, label %130 [
    i32 133, label %76
    i32 130, label %83
    i32 135, label %87
    i32 134, label %111
  ]

76:                                               ; preds = %70
  %77 = load i32, i32* @MAX9860_DDLY, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @MAX9860_ADLY, align 4
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %133

83:                                               ; preds = %70
  %84 = load i32, i32* @MAX9860_WCI, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %133

87:                                               ; preds = %70
  %88 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %89 = call i32 @params_width(%struct.snd_pcm_hw_params* %88)
  %90 = icmp ne i32 %89, 16
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %93 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %373

98:                                               ; preds = %87
  %99 = load i32, i32* @MAX9860_DDLY, align 4
  %100 = load i32, i32* @MAX9860_WCI, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MAX9860_HIZ, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @MAX9860_TDM, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* @MAX9860_ADLY, align 4
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %133

111:                                              ; preds = %70
  %112 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %113 = call i32 @params_width(%struct.snd_pcm_hw_params* %112)
  %114 = icmp ne i32 %113, 16
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %117 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %373

122:                                              ; preds = %111
  %123 = load i32, i32* @MAX9860_WCI, align 4
  %124 = load i32, i32* @MAX9860_HIZ, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @MAX9860_TDM, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %133

130:                                              ; preds = %70
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %373

133:                                              ; preds = %122, %98, %83, %76
  %134 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %135 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %138 = and i32 %136, %137
  switch i32 %138, label %173 [
    i32 128, label %139
    i32 129, label %140
    i32 132, label %153
    i32 131, label %166
  ]

139:                                              ; preds = %133
  br label %176

140:                                              ; preds = %133
  %141 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %142 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %145 = and i32 %143, %144
  switch i32 %145, label %149 [
    i32 135, label %146
    i32 134, label %146
  ]

146:                                              ; preds = %140, %140
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %373

149:                                              ; preds = %140
  %150 = load i32, i32* @MAX9860_WCI, align 4
  %151 = load i32, i32* %11, align 4
  %152 = xor i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %176

153:                                              ; preds = %133
  %154 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %155 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %158 = and i32 %156, %157
  switch i32 %158, label %162 [
    i32 135, label %159
    i32 134, label %159
  ]

159:                                              ; preds = %153, %153
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %373

162:                                              ; preds = %153
  %163 = load i32, i32* @MAX9860_WCI, align 4
  %164 = load i32, i32* %11, align 4
  %165 = xor i32 %164, %163
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %133, %162
  %167 = load i32, i32* @MAX9860_DBCI, align 4
  %168 = load i32, i32* %11, align 4
  %169 = xor i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* @MAX9860_ABCI, align 4
  %171 = load i32, i32* %12, align 4
  %172 = xor i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %176

173:                                              ; preds = %133
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  br label %373

176:                                              ; preds = %166, %149, %139
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %178 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %11, align 4
  %181 = call i32 (i32, i8*, ...) @dev_dbg(i32 %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %183 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @MAX9860_IFC1A, align 4
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = call i32 @regmap_write(i32 %184, i32 %185, i64 %187)
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %176
  %192 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %193 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %15, align 4
  %196 = call i32 (i32, i8*, ...) @dev_err(i32 %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %15, align 4
  store i32 %197, i32* %4, align 4
  br label %373

198:                                              ; preds = %176
  %199 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %200 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 (i32, i8*, ...) @dev_dbg(i32 %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %202)
  %204 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %205 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @MAX9860_IFC1B, align 4
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = call i32 @regmap_write(i32 %206, i32 %207, i64 %209)
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %198
  %214 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %215 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %15, align 4
  %218 = call i32 (i32, i8*, ...) @dev_err(i32 %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %15, align 4
  store i32 %219, i32* %4, align 4
  br label %373

220:                                              ; preds = %198
  %221 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %222 = call i32 @params_rate(%struct.snd_pcm_hw_params* %221)
  %223 = icmp eq i32 %222, 8000
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %226 = call i32 @params_rate(%struct.snd_pcm_hw_params* %225)
  %227 = icmp eq i32 %226, 16000
  br i1 %227, label %228, label %255

228:                                              ; preds = %224, %220
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %254

231:                                              ; preds = %228
  %232 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %233 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  switch i32 %234, label %241 [
    i32 12000000, label %235
    i32 13000000, label %237
    i32 19200000, label %239
  ]

235:                                              ; preds = %231
  %236 = load i32, i32* @MAX9860_FREQ_12MHZ, align 4
  store i32 %236, i32* %13, align 4
  br label %242

237:                                              ; preds = %231
  %238 = load i32, i32* @MAX9860_FREQ_13MHZ, align 4
  store i32 %238, i32* %13, align 4
  br label %242

239:                                              ; preds = %231
  %240 = load i32, i32* @MAX9860_FREQ_19_2MHZ, align 4
  store i32 %240, i32* %13, align 4
  br label %242

241:                                              ; preds = %231
  br label %242

242:                                              ; preds = %241, %239, %237, %235
  %243 = load i32, i32* %13, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %247 = call i32 @params_rate(%struct.snd_pcm_hw_params* %246)
  %248 = icmp eq i32 %247, 16000
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32, i32* @MAX9860_16KHZ, align 4
  %251 = load i32, i32* %13, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %13, align 4
  br label %253

253:                                              ; preds = %249, %245, %242
  br label %254

254:                                              ; preds = %253, %228
  br label %255

255:                                              ; preds = %254, %224
  %256 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %257 = call i32 @params_rate(%struct.snd_pcm_hw_params* %256)
  %258 = sext i32 %257 to i64
  %259 = mul i64 6291456, %258
  %260 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %261 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @DIV_ROUND_CLOSEST_ULL(i64 %259, i32 %262)
  store i64 %263, i64* %14, align 8
  %264 = load i32, i32* %13, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %281, label %266

266:                                              ; preds = %255
  %267 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %268 = call i32 @params_rate(%struct.snd_pcm_hw_params* %267)
  %269 = icmp sgt i32 %268, 24000
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = load i32, i32* @MAX9860_16KHZ, align 4
  %272 = load i32, i32* %13, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %13, align 4
  br label %274

274:                                              ; preds = %270, %266
  %275 = load i32, i32* %10, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i64, i64* %14, align 8
  %279 = or i64 %278, 1
  store i64 %279, i64* %14, align 8
  br label %280

280:                                              ; preds = %277, %274
  br label %281

281:                                              ; preds = %280, %255
  %282 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %283 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %13, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %13, align 4
  %287 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %288 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %13, align 4
  %291 = call i32 (i32, i8*, ...) @dev_dbg(i32 %289, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %290)
  %292 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %293 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @MAX9860_SYSCLK, align 4
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = call i32 @regmap_write(i32 %294, i32 %295, i64 %297)
  store i32 %298, i32* %15, align 4
  %299 = load i32, i32* %15, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %281
  %302 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %303 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %15, align 4
  %306 = call i32 (i32, i8*, ...) @dev_err(i32 %304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %15, align 4
  store i32 %307, i32* %4, align 4
  br label %373

308:                                              ; preds = %281
  %309 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %310 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i64, i64* %14, align 8
  %313 = call i32 (i32, i8*, ...) @dev_dbg(i32 %311, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %312)
  %314 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %315 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @MAX9860_AUDIOCLKHIGH, align 4
  %318 = load i64, i64* %14, align 8
  %319 = lshr i64 %318, 8
  %320 = call i32 @regmap_write(i32 %316, i32 %317, i64 %319)
  store i32 %320, i32* %15, align 4
  %321 = load i32, i32* %15, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %308
  %324 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %325 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %15, align 4
  %328 = call i32 (i32, i8*, ...) @dev_err(i32 %326, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %327)
  %329 = load i32, i32* %15, align 4
  store i32 %329, i32* %4, align 4
  br label %373

330:                                              ; preds = %308
  %331 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %332 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @MAX9860_AUDIOCLKLOW, align 4
  %335 = load i64, i64* %14, align 8
  %336 = and i64 %335, 255
  %337 = call i32 @regmap_write(i32 %333, i32 %334, i64 %336)
  store i32 %337, i32* %15, align 4
  %338 = load i32, i32* %15, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %330
  %341 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %342 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %15, align 4
  %345 = call i32 (i32, i8*, ...) @dev_err(i32 %343, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %344)
  %346 = load i32, i32* %15, align 4
  store i32 %346, i32* %4, align 4
  br label %373

347:                                              ; preds = %330
  %348 = load i32, i32* %10, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %372, label %350

350:                                              ; preds = %347
  %351 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %352 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 (i32, i8*, ...) @dev_dbg(i32 %353, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %355 = load %struct.max9860_priv*, %struct.max9860_priv** %9, align 8
  %356 = getelementptr inbounds %struct.max9860_priv, %struct.max9860_priv* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @MAX9860_AUDIOCLKHIGH, align 4
  %359 = load i32, i32* @MAX9860_PLL, align 4
  %360 = load i32, i32* @MAX9860_PLL, align 4
  %361 = call i32 @regmap_update_bits(i32 %357, i32 %358, i32 %359, i32 %360)
  store i32 %361, i32* %15, align 4
  %362 = load i32, i32* %15, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %350
  %365 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %366 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %15, align 4
  %369 = call i32 (i32, i8*, ...) @dev_err(i32 %367, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %368)
  %370 = load i32, i32* %15, align 4
  store i32 %370, i32* %4, align 4
  br label %373

371:                                              ; preds = %350
  br label %372

372:                                              ; preds = %371, %347
  store i32 0, i32* %4, align 4
  br label %373

373:                                              ; preds = %372, %364, %340, %323, %301, %213, %191, %173, %159, %146, %130, %115, %91, %45
  %374 = load i32, i32* %4, align 4
  ret i32 %374
}

declare dso_local %struct.max9860_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
