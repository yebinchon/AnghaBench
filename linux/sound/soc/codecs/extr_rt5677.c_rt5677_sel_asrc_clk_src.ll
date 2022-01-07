; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_sel_asrc_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_sel_asrc_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT5677_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5677_DA_STO_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DA_STO_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_DA_MONO2_L_FILTER = common dso_local global i32 0, align 4
@RT5677_DA_MONO2L_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DA_MONO2L_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_DA_MONO2_R_FILTER = common dso_local global i32 0, align 4
@RT5677_DA_MONO2R_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DA_MONO2R_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_ASRC_3 = common dso_local global i32 0, align 4
@RT5677_DA_MONO3_L_FILTER = common dso_local global i32 0, align 4
@RT5677_DA_MONO3L_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DA_MONO3L_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_DA_MONO3_R_FILTER = common dso_local global i32 0, align 4
@RT5677_DA_MONO3R_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DA_MONO3R_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_DA_MONO4_L_FILTER = common dso_local global i32 0, align 4
@RT5677_DA_MONO4L_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DA_MONO4L_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_DA_MONO4_R_FILTER = common dso_local global i32 0, align 4
@RT5677_DA_MONO4R_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DA_MONO4R_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_ASRC_4 = common dso_local global i32 0, align 4
@RT5677_AD_STEREO1_FILTER = common dso_local global i32 0, align 4
@RT5677_AD_STO1_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_STO1_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_AD_STEREO2_FILTER = common dso_local global i32 0, align 4
@RT5677_AD_STO2_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_STO2_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_AD_STEREO3_FILTER = common dso_local global i32 0, align 4
@RT5677_AD_STO3_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_STO3_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_AD_STEREO4_FILTER = common dso_local global i32 0, align 4
@RT5677_AD_STO4_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_STO4_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_ASRC_5 = common dso_local global i32 0, align 4
@RT5677_AD_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5677_AD_MONOL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_MONOL_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_AD_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5677_AD_MONOR_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_AD_MONOR_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_ASRC_6 = common dso_local global i32 0, align 4
@RT5677_DSP_OB_0_3_FILTER = common dso_local global i32 0, align 4
@RT5677_DSP_OB_0_3_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DSP_OB_0_3_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_DSP_OB_4_7_FILTER = common dso_local global i32 0, align 4
@RT5677_DSP_OB_4_7_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_DSP_OB_4_7_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_ASRC_7 = common dso_local global i32 0, align 4
@RT5677_I2S1_SOURCE = common dso_local global i32 0, align 4
@RT5677_I2S1_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_I2S1_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_I2S2_SOURCE = common dso_local global i32 0, align 4
@RT5677_I2S2_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_I2S2_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_I2S3_SOURCE = common dso_local global i32 0, align 4
@RT5677_I2S3_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_I2S3_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_I2S4_SOURCE = common dso_local global i32 0, align 4
@RT5677_I2S4_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_I2S4_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_ASRC_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5677_sel_asrc_clk_src(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt5677_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %22 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.rt5677_priv* %22, %struct.rt5677_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %25 [
    i32 134, label %24
    i32 140, label %24
    i32 139, label %24
    i32 138, label %24
    i32 137, label %24
    i32 136, label %24
    i32 135, label %24
    i32 133, label %24
    i32 132, label %24
    i32 131, label %24
    i32 130, label %24
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %422

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RT5677_DA_STEREO_FILTER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32, i32* @RT5677_DA_STO_CLK_SEL_MASK, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @RT5677_DA_STO_CLK_SEL_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @RT5677_DA_STO_CLK_SEL_SFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %33, %28
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RT5677_DA_MONO2_L_FILTER, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32, i32* @RT5677_DA_MONO2L_CLK_SEL_MASK, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @RT5677_DA_MONO2L_CLK_SEL_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @RT5677_DA_MONO2L_CLK_SEL_SFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %50, %45
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @RT5677_DA_MONO2_R_FILTER, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i32, i32* @RT5677_DA_MONO2R_CLK_SEL_MASK, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @RT5677_DA_MONO2R_CLK_SEL_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RT5677_DA_MONO2R_CLK_SEL_SFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %67, %62
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %84 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RT5677_ASRC_3, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %79
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @RT5677_DA_MONO3_L_FILTER, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i32, i32* @RT5677_DA_MONO3L_CLK_SEL_MASK, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @RT5677_DA_MONO3L_CLK_SEL_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @RT5677_DA_MONO3L_CLK_SEL_SFT, align 4
  %105 = shl i32 %103, %104
  %106 = or i32 %102, %105
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %95, %90
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @RT5677_DA_MONO3_R_FILTER, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load i32, i32* @RT5677_DA_MONO3R_CLK_SEL_MASK, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @RT5677_DA_MONO3R_CLK_SEL_MASK, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @RT5677_DA_MONO3R_CLK_SEL_SFT, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %119, %122
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %112, %107
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @RT5677_DA_MONO4_L_FILTER, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load i32, i32* @RT5677_DA_MONO4L_CLK_SEL_MASK, align 4
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @RT5677_DA_MONO4L_CLK_SEL_MASK, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @RT5677_DA_MONO4L_CLK_SEL_SFT, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %136, %139
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %129, %124
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @RT5677_DA_MONO4_R_FILTER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load i32, i32* @RT5677_DA_MONO4R_CLK_SEL_MASK, align 4
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @RT5677_DA_MONO4R_CLK_SEL_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @RT5677_DA_MONO4R_CLK_SEL_SFT, align 4
  %156 = shl i32 %154, %155
  %157 = or i32 %153, %156
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %146, %141
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %163 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @RT5677_ASRC_4, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @regmap_update_bits(i32 %164, i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %161, %158
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @RT5677_AD_STEREO1_FILTER, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  %175 = load i32, i32* @RT5677_AD_STO1_CLK_SEL_MASK, align 4
  %176 = load i32, i32* %13, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @RT5677_AD_STO1_CLK_SEL_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = and i32 %178, %180
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @RT5677_AD_STO1_CLK_SEL_SFT, align 4
  %184 = shl i32 %182, %183
  %185 = or i32 %181, %184
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %174, %169
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @RT5677_AD_STEREO2_FILTER, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %186
  %192 = load i32, i32* @RT5677_AD_STO2_CLK_SEL_MASK, align 4
  %193 = load i32, i32* %13, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @RT5677_AD_STO2_CLK_SEL_MASK, align 4
  %197 = xor i32 %196, -1
  %198 = and i32 %195, %197
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @RT5677_AD_STO2_CLK_SEL_SFT, align 4
  %201 = shl i32 %199, %200
  %202 = or i32 %198, %201
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %191, %186
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @RT5677_AD_STEREO3_FILTER, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = load i32, i32* @RT5677_AD_STO3_CLK_SEL_MASK, align 4
  %210 = load i32, i32* %13, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* @RT5677_AD_STO3_CLK_SEL_MASK, align 4
  %214 = xor i32 %213, -1
  %215 = and i32 %212, %214
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @RT5677_AD_STO3_CLK_SEL_SFT, align 4
  %218 = shl i32 %216, %217
  %219 = or i32 %215, %218
  store i32 %219, i32* %14, align 4
  br label %220

220:                                              ; preds = %208, %203
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @RT5677_AD_STEREO4_FILTER, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %220
  %226 = load i32, i32* @RT5677_AD_STO4_CLK_SEL_MASK, align 4
  %227 = load i32, i32* %13, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* @RT5677_AD_STO4_CLK_SEL_MASK, align 4
  %231 = xor i32 %230, -1
  %232 = and i32 %229, %231
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* @RT5677_AD_STO4_CLK_SEL_SFT, align 4
  %235 = shl i32 %233, %234
  %236 = or i32 %232, %235
  store i32 %236, i32* %14, align 4
  br label %237

237:                                              ; preds = %225, %220
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %242 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @RT5677_ASRC_5, align 4
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %14, align 4
  %247 = call i32 @regmap_update_bits(i32 %243, i32 %244, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %240, %237
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* @RT5677_AD_MONO_L_FILTER, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %248
  %254 = load i32, i32* @RT5677_AD_MONOL_CLK_SEL_MASK, align 4
  %255 = load i32, i32* %15, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %15, align 4
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* @RT5677_AD_MONOL_CLK_SEL_MASK, align 4
  %259 = xor i32 %258, -1
  %260 = and i32 %257, %259
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @RT5677_AD_MONOL_CLK_SEL_SFT, align 4
  %263 = shl i32 %261, %262
  %264 = or i32 %260, %263
  store i32 %264, i32* %16, align 4
  br label %265

265:                                              ; preds = %253, %248
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @RT5677_AD_MONO_R_FILTER, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %265
  %271 = load i32, i32* @RT5677_AD_MONOR_CLK_SEL_MASK, align 4
  %272 = load i32, i32* %15, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %15, align 4
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* @RT5677_AD_MONOR_CLK_SEL_MASK, align 4
  %276 = xor i32 %275, -1
  %277 = and i32 %274, %276
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* @RT5677_AD_MONOR_CLK_SEL_SFT, align 4
  %280 = shl i32 %278, %279
  %281 = or i32 %277, %280
  store i32 %281, i32* %16, align 4
  br label %282

282:                                              ; preds = %270, %265
  %283 = load i32, i32* %15, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %282
  %286 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %287 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @RT5677_ASRC_6, align 4
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* %16, align 4
  %292 = call i32 @regmap_update_bits(i32 %288, i32 %289, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %285, %282
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* @RT5677_DSP_OB_0_3_FILTER, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %310

298:                                              ; preds = %293
  %299 = load i32, i32* @RT5677_DSP_OB_0_3_CLK_SEL_MASK, align 4
  %300 = load i32, i32* %17, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %17, align 4
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* @RT5677_DSP_OB_0_3_CLK_SEL_MASK, align 4
  %304 = xor i32 %303, -1
  %305 = and i32 %302, %304
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* @RT5677_DSP_OB_0_3_CLK_SEL_SFT, align 4
  %308 = shl i32 %306, %307
  %309 = or i32 %305, %308
  store i32 %309, i32* %18, align 4
  br label %310

310:                                              ; preds = %298, %293
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* @RT5677_DSP_OB_4_7_FILTER, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %327

315:                                              ; preds = %310
  %316 = load i32, i32* @RT5677_DSP_OB_4_7_CLK_SEL_MASK, align 4
  %317 = load i32, i32* %17, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %17, align 4
  %319 = load i32, i32* %18, align 4
  %320 = load i32, i32* @RT5677_DSP_OB_4_7_CLK_SEL_MASK, align 4
  %321 = xor i32 %320, -1
  %322 = and i32 %319, %321
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @RT5677_DSP_OB_4_7_CLK_SEL_SFT, align 4
  %325 = shl i32 %323, %324
  %326 = or i32 %322, %325
  store i32 %326, i32* %18, align 4
  br label %327

327:                                              ; preds = %315, %310
  %328 = load i32, i32* %17, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %327
  %331 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %332 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @RT5677_ASRC_7, align 4
  %335 = load i32, i32* %17, align 4
  %336 = load i32, i32* %18, align 4
  %337 = call i32 @regmap_update_bits(i32 %333, i32 %334, i32 %335, i32 %336)
  br label %338

338:                                              ; preds = %330, %327
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* @RT5677_I2S1_SOURCE, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %338
  %344 = load i32, i32* @RT5677_I2S1_CLK_SEL_MASK, align 4
  %345 = load i32, i32* %19, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %19, align 4
  %347 = load i32, i32* %20, align 4
  %348 = load i32, i32* @RT5677_I2S1_CLK_SEL_MASK, align 4
  %349 = xor i32 %348, -1
  %350 = and i32 %347, %349
  %351 = load i32, i32* %7, align 4
  %352 = sub i32 %351, 1
  %353 = load i32, i32* @RT5677_I2S1_CLK_SEL_SFT, align 4
  %354 = shl i32 %352, %353
  %355 = or i32 %350, %354
  store i32 %355, i32* %20, align 4
  br label %356

356:                                              ; preds = %343, %338
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* @RT5677_I2S2_SOURCE, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %374

361:                                              ; preds = %356
  %362 = load i32, i32* @RT5677_I2S2_CLK_SEL_MASK, align 4
  %363 = load i32, i32* %19, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %19, align 4
  %365 = load i32, i32* %20, align 4
  %366 = load i32, i32* @RT5677_I2S2_CLK_SEL_MASK, align 4
  %367 = xor i32 %366, -1
  %368 = and i32 %365, %367
  %369 = load i32, i32* %7, align 4
  %370 = sub i32 %369, 1
  %371 = load i32, i32* @RT5677_I2S2_CLK_SEL_SFT, align 4
  %372 = shl i32 %370, %371
  %373 = or i32 %368, %372
  store i32 %373, i32* %20, align 4
  br label %374

374:                                              ; preds = %361, %356
  %375 = load i32, i32* %6, align 4
  %376 = load i32, i32* @RT5677_I2S3_SOURCE, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %392

379:                                              ; preds = %374
  %380 = load i32, i32* @RT5677_I2S3_CLK_SEL_MASK, align 4
  %381 = load i32, i32* %19, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %19, align 4
  %383 = load i32, i32* %20, align 4
  %384 = load i32, i32* @RT5677_I2S3_CLK_SEL_MASK, align 4
  %385 = xor i32 %384, -1
  %386 = and i32 %383, %385
  %387 = load i32, i32* %7, align 4
  %388 = sub i32 %387, 1
  %389 = load i32, i32* @RT5677_I2S3_CLK_SEL_SFT, align 4
  %390 = shl i32 %388, %389
  %391 = or i32 %386, %390
  store i32 %391, i32* %20, align 4
  br label %392

392:                                              ; preds = %379, %374
  %393 = load i32, i32* %6, align 4
  %394 = load i32, i32* @RT5677_I2S4_SOURCE, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %392
  %398 = load i32, i32* @RT5677_I2S4_CLK_SEL_MASK, align 4
  %399 = load i32, i32* %19, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %19, align 4
  %401 = load i32, i32* %20, align 4
  %402 = load i32, i32* @RT5677_I2S4_CLK_SEL_MASK, align 4
  %403 = xor i32 %402, -1
  %404 = and i32 %401, %403
  %405 = load i32, i32* %7, align 4
  %406 = sub i32 %405, 1
  %407 = load i32, i32* @RT5677_I2S4_CLK_SEL_SFT, align 4
  %408 = shl i32 %406, %407
  %409 = or i32 %404, %408
  store i32 %409, i32* %20, align 4
  br label %410

410:                                              ; preds = %397, %392
  %411 = load i32, i32* %19, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %410
  %414 = load %struct.rt5677_priv*, %struct.rt5677_priv** %8, align 8
  %415 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @RT5677_ASRC_8, align 4
  %418 = load i32, i32* %19, align 4
  %419 = load i32, i32* %20, align 4
  %420 = call i32 @regmap_update_bits(i32 %416, i32 %417, i32 %418, i32 %419)
  br label %421

421:                                              ; preds = %413, %410
  store i32 0, i32* %4, align 4
  br label %422

422:                                              ; preds = %421, %25
  %423 = load i32, i32* %4, align 4
  ret i32 %423
}

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
