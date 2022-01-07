; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3168a.c_pcm3168a_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3168a.c_pcm3168a_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm3168a_priv = type { i32, i32, %struct.pcm3168a_io_params* }
%struct.pcm3168a_io_params = type { i32, i32, i32, i32 }

@PCM3168A_DAI_DAC = common dso_local global i64 0, align 8
@PCM3168A_NUM_SCKI_RATIOS_DAC = common dso_local global i32 0, align 4
@PCM3168A_DAC_PWR_MST_FMT = common dso_local global i32 0, align 4
@PCM3168A_DAC_MSDA_MASK = common dso_local global i32 0, align 4
@PCM3168A_DAC_MSDA_SHIFT = common dso_local global i32 0, align 4
@PCM3168A_NUM_SCKI_RATIOS_ADC = common dso_local global i32 0, align 4
@PCM3168A_ADC_MST_FMT = common dso_local global i32 0, align 4
@PCM3168A_ADC_MSAD_MASK = common dso_local global i32 0, align 4
@PCM3168A_ADC_MSAD_SHIFT = common dso_local global i32 0, align 4
@pcm3168a_scki_ratios = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"unsupported sysclk ratio\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCM3168A_FMT_RIGHT_J = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"16-bit slots are supported only for slave mode using right justified\0A\00", align 1
@PCM3168A_FMT_RIGHT_J_16 = common dso_local global i32 0, align 4
@PCM3168A_FMT_DSP_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"24-bit slots not supported in master mode, or slave mode using DSP\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unsupported frame size: %d\0A\00", align 1
@PCM3168A_FMT_I2S_TDM = common dso_local global i32 0, align 4
@PCM3168A_FMT_LEFT_J_TDM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"TDM is supported under DSP/I2S/Left_J only\0A\00", align 1
@PCM3168A_DAC_FMT_MASK = common dso_local global i32 0, align 4
@PCM3168A_DAC_FMT_SHIFT = common dso_local global i32 0, align 4
@PCM3168A_ADC_FMTAD_MASK = common dso_local global i32 0, align 4
@PCM3168A_ADC_FMTAD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pcm3168a_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm3168a_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.pcm3168a_priv*, align 8
  %10 = alloca %struct.pcm3168a_io_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 1
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %24, align 8
  store %struct.snd_soc_component* %25, %struct.snd_soc_component** %8, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = call %struct.pcm3168a_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %26)
  store %struct.pcm3168a_priv* %27, %struct.pcm3168a_priv** %9, align 8
  %28 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %9, align 8
  %29 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %28, i32 0, i32 2
  %30 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %29, align 8
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %30, i64 %33
  store %struct.pcm3168a_io_params* %34, %struct.pcm3168a_io_params** %10, align 8
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %36 = call i32 @params_rate(%struct.snd_pcm_hw_params* %35)
  store i32 %36, i32* %16, align 4
  %37 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %9, align 8
  %38 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %16, align 4
  %41 = udiv i32 %39, %40
  store i32 %41, i32* %18, align 4
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCM3168A_DAI_DAC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %3
  %48 = load i32, i32* @PCM3168A_NUM_SCKI_RATIOS_DAC, align 4
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* @PCM3168A_DAC_PWR_MST_FMT, align 4
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* @PCM3168A_DAC_MSDA_MASK, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @PCM3168A_DAC_MSDA_SHIFT, align 4
  store i32 %51, i32* %14, align 4
  br label %57

52:                                               ; preds = %3
  %53 = load i32, i32* @PCM3168A_NUM_SCKI_RATIOS_ADC, align 4
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* @PCM3168A_ADC_MST_FMT, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* @PCM3168A_ADC_MSAD_MASK, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @PCM3168A_ADC_MSAD_SHIFT, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %10, align 8
  %59 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  %61 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %10, align 8
  %62 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  store i32 0, i32* %21, align 4
  br label %64

64:                                               ; preds = %78, %57
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i32*, i32** @pcm3168a_scki_ratios, align 8
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %81

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %21, align 4
  br label %64

81:                                               ; preds = %76, %64
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %214

92:                                               ; preds = %81
  %93 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %10, align 8
  %94 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %10, align 8
  %99 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %22, align 4
  br label %104

101:                                              ; preds = %92
  %102 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %103 = call i32 @params_width(%struct.snd_pcm_hw_params* %102)
  store i32 %103, i32* %22, align 4
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32, i32* %22, align 4
  switch i32 %105, label %139 [
    i32 16, label %106
    i32 24, label %122
    i32 32, label %138
  ]

106:                                              ; preds = %104
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* @PCM3168A_FMT_RIGHT_J, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109, %106
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %115 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %214

120:                                              ; preds = %109
  %121 = load i32, i32* @PCM3168A_FMT_RIGHT_J_16, align 4
  store i32 %121, i32* %17, align 4
  br label %147

122:                                              ; preds = %104
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @PCM3168A_FMT_DSP_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125, %122
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %132 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_err(i32 %133, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %214

137:                                              ; preds = %125
  br label %147

138:                                              ; preds = %104
  br label %147

139:                                              ; preds = %104
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %141 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %22, align 4
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %214

147:                                              ; preds = %138, %137, %120
  %148 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %10, align 8
  %149 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %10, align 8
  %154 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %20, align 4
  br label %159

156:                                              ; preds = %147
  %157 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %158 = call i32 @params_channels(%struct.snd_pcm_hw_params* %157)
  store i32 %158, i32* %20, align 4
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i32, i32* %20, align 4
  %161 = icmp ugt i32 %160, 2
  br i1 %161, label %162, label %176

162:                                              ; preds = %159
  %163 = load i32, i32* %17, align 4
  switch i32 %163, label %168 [
    i32 129, label %164
    i32 131, label %164
    i32 128, label %166
    i32 130, label %166
  ]

164:                                              ; preds = %162, %162
  %165 = load i32, i32* @PCM3168A_FMT_I2S_TDM, align 4
  store i32 %165, i32* %17, align 4
  br label %175

166:                                              ; preds = %162, %162
  %167 = load i32, i32* @PCM3168A_FMT_LEFT_J_TDM, align 4
  store i32 %167, i32* %17, align 4
  br label %175

168:                                              ; preds = %162
  %169 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %170 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, ...) @dev_err(i32 %171, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %214

175:                                              ; preds = %166, %164
  br label %176

176:                                              ; preds = %175, %159
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i32, i32* %14, align 4
  %183 = shl i32 %181, %182
  store i32 %183, i32* %12, align 4
  br label %185

184:                                              ; preds = %176
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %184, %179
  %186 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %9, align 8
  %187 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @regmap_update_bits(i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %194 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @PCM3168A_DAI_DAC, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %185
  %199 = load i32, i32* @PCM3168A_DAC_FMT_MASK, align 4
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* @PCM3168A_DAC_FMT_SHIFT, align 4
  store i32 %200, i32* %14, align 4
  br label %204

201:                                              ; preds = %185
  %202 = load i32, i32* @PCM3168A_ADC_FMTAD_MASK, align 4
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* @PCM3168A_ADC_FMTAD_SHIFT, align 4
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %201, %198
  %205 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %9, align 8
  %206 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %14, align 4
  %212 = shl i32 %210, %211
  %213 = call i32 @regmap_update_bits(i32 %207, i32 %208, i32 %209, i32 %212)
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %204, %168, %139, %130, %113, %85
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.pcm3168a_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
