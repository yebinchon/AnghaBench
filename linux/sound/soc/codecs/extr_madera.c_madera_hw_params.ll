; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.TYPE_4__*, %struct.snd_soc_component* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32*, i32*, %struct.madera* }
%struct.madera = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@madera_44k1_bclk_rates = common dso_local global i32* null, align 8
@madera_48k_bclk_rates = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Configuring for %d %d bit TDM slots\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Limiting to %d channels\0A\00", align 1
@MADERA_AIF_FORMAT = common dso_local global i64 0, align 8
@MADERA_AIF1_FMT_MASK = common dso_local global i32 0, align 4
@MADERA_FMT_I2S_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Forcing stereo mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unsupported sample rate %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"BCLK %dHz LRCLK %dHz\0A\00", align 1
@MADERA_AIF1TX_WL_SHIFT = common dso_local global i32 0, align 4
@MADERA_AIF_TX_ENABLES = common dso_local global i64 0, align 8
@MADERA_AIF_RX_ENABLES = common dso_local global i64 0, align 8
@MADERA_AIF_BCLK_CTRL = common dso_local global i64 0, align 8
@MADERA_AIF1_BCLK_FREQ_MASK = common dso_local global i32 0, align 4
@MADERA_AIF_RX_BCLK_RATE = common dso_local global i64 0, align 8
@MADERA_AIF1RX_BCPF_MASK = common dso_local global i32 0, align 4
@MADERA_AIF_FRAME_CTRL_1 = common dso_local global i64 0, align 8
@MADERA_AIF1TX_WL_MASK = common dso_local global i32 0, align 4
@MADERA_AIF1TX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@MADERA_AIF_FRAME_CTRL_2 = common dso_local global i64 0, align 8
@MADERA_AIF1RX_WL_MASK = common dso_local global i32 0, align 4
@MADERA_AIF1RX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @madera_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.madera_priv*, align 8
  %10 = alloca %struct.madera*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %30, i32 0, i32 2
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %31, align 8
  store %struct.snd_soc_component* %32, %struct.snd_soc_component** %8, align 8
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %33)
  store %struct.madera_priv* %34, %struct.madera_priv** %9, align 8
  %35 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %36 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %35, i32 0, i32 2
  %37 = load %struct.madera*, %struct.madera** %36, align 8
  store %struct.madera* %37, %struct.madera** %10, align 8
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %44 = call i32 @params_channels(%struct.snd_pcm_hw_params* %43)
  store i32 %44, i32* %16, align 4
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = call i32 @params_rate(%struct.snd_pcm_hw_params* %45)
  store i32 %46, i32* %17, align 4
  %47 = load %struct.madera*, %struct.madera** %10, align 8
  %48 = getelementptr inbounds %struct.madera, %struct.madera* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %59 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %60 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %19, align 4
  %69 = load %struct.madera_priv*, %struct.madera_priv** %9, align 8
  %70 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %20, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %79 = load i32, i32* %17, align 4
  %80 = urem i32 %79, 4000
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %3
  %83 = load i32*, i32** @madera_44k1_bclk_rates, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** @madera_44k1_bclk_rates, align 8
  %86 = call i32 @ARRAY_SIZE(i32* %85)
  store i32 %86, i32* %26, align 4
  br label %92

87:                                               ; preds = %3
  %88 = load i32*, i32** @madera_48k_bclk_rates, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32* %89, i32** %12, align 8
  %90 = load i32*, i32** @madera_48k_bclk_rates, align 8
  %91 = call i32 @ARRAY_SIZE(i32* %90)
  store i32 %91, i32* %26, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %94 = call i32 @params_format(%struct.snd_pcm_hw_params* %93)
  %95 = call i32 @snd_pcm_format_width(i32 %94)
  store i32 %95, i32* %23, align 4
  %96 = load i32, i32* %20, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %19, align 4
  %102 = call i32 (%struct.snd_soc_dai*, i8*, ...) @madera_aif_dbg(%struct.snd_soc_dai* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %19, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %17, align 4
  %107 = mul i32 %105, %106
  store i32 %107, i32* %25, align 4
  %108 = load i32, i32* %20, align 4
  store i32 %108, i32* %16, align 4
  br label %113

109:                                              ; preds = %92
  %110 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %111 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %110)
  store i32 %111, i32* %25, align 4
  %112 = load i32, i32* %23, align 4
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %109, %98
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i32 (%struct.snd_soc_dai*, i8*, ...) @madera_aif_dbg(%struct.snd_soc_dai* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %25, align 4
  %126 = udiv i32 %125, %124
  store i32 %126, i32* %25, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %25, align 4
  %129 = mul i32 %128, %127
  store i32 %129, i32* %25, align 4
  br label %130

130:                                              ; preds = %120, %116, %113
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* @MADERA_AIF_FORMAT, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @snd_soc_component_read(%struct.snd_soc_component* %131, i64 %135, i32* %15)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %4, align 4
  br label %354

141:                                              ; preds = %130
  %142 = load i32, i32* @MADERA_AIF1_FMT_MASK, align 4
  %143 = load i32, i32* %15, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %141
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @MADERA_FMT_I2S_MODE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %154 = call i32 (%struct.snd_soc_dai*, i8*, ...) @madera_aif_dbg(%struct.snd_soc_dai* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %25, align 4
  %157 = udiv i32 %156, %155
  store i32 %157, i32* %25, align 4
  %158 = load i32, i32* %16, align 4
  %159 = add i32 %158, 1
  %160 = load i32, i32* %25, align 4
  %161 = mul i32 %160, %159
  store i32 %161, i32* %25, align 4
  br label %162

162:                                              ; preds = %152, %148, %141
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %187, %162
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %26, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %190

167:                                              ; preds = %163
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %25, align 4
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %167
  %176 = load i32*, i32** %12, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %17, align 4
  %182 = urem i32 %180, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %21, align 4
  br label %190

186:                                              ; preds = %175, %167
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  br label %163

190:                                              ; preds = %184, %163
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %26, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %196 = load i32, i32* %17, align 4
  %197 = call i32 @madera_aif_err(%struct.snd_soc_dai* %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %4, align 4
  br label %354

200:                                              ; preds = %190
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %17, align 4
  %207 = udiv i32 %205, %206
  store i32 %207, i32* %22, align 4
  %208 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %21, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %12, align 8
  %215 = load i32, i32* %21, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %22, align 4
  %220 = sdiv i32 %218, %219
  %221 = call i32 (%struct.snd_soc_dai*, i8*, ...) @madera_aif_dbg(%struct.snd_soc_dai* %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %213, i32 %220)
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* @MADERA_AIF1TX_WL_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = load i32, i32* %19, align 4
  %226 = or i32 %224, %225
  store i32 %226, i32* %24, align 4
  %227 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* %24, align 4
  %232 = call i32 @madera_aif_cfg_changed(%struct.snd_soc_component* %227, i32 %228, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %27, align 4
  %233 = load i32, i32* %27, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %200
  %236 = load i32, i32* %27, align 4
  store i32 %236, i32* %4, align 4
  br label %354

237:                                              ; preds = %200
  %238 = load i32, i32* %27, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %273

240:                                              ; preds = %237
  %241 = load %struct.madera*, %struct.madera** %10, align 8
  %242 = getelementptr inbounds %struct.madera, %struct.madera* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* @MADERA_AIF_TX_ENABLES, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @regmap_read(i32 %243, i64 %247, i32* %28)
  %249 = load %struct.madera*, %struct.madera** %10, align 8
  %250 = getelementptr inbounds %struct.madera, %struct.madera* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* @MADERA_AIF_RX_ENABLES, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i32 @regmap_read(i32 %251, i64 %255, i32* %29)
  %257 = load %struct.madera*, %struct.madera** %10, align 8
  %258 = getelementptr inbounds %struct.madera, %struct.madera* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* @MADERA_AIF_TX_ENABLES, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i32 @regmap_update_bits(i32 %259, i64 %263, i32 255, i32 0)
  %265 = load %struct.madera*, %struct.madera** %10, align 8
  %266 = getelementptr inbounds %struct.madera, %struct.madera* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = load i64, i64* @MADERA_AIF_RX_ENABLES, align 8
  %271 = add nsw i64 %269, %270
  %272 = call i32 @regmap_update_bits(i32 %267, i64 %271, i32 255, i32 0)
  br label %273

273:                                              ; preds = %240, %237
  %274 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %275 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %276 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %277 = call i32 @madera_hw_params_rate(%struct.snd_pcm_substream* %274, %struct.snd_pcm_hw_params* %275, %struct.snd_soc_dai* %276)
  store i32 %277, i32* %14, align 4
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %273
  br label %330

281:                                              ; preds = %273
  %282 = load i32, i32* %27, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %329

284:                                              ; preds = %281
  %285 = load %struct.madera*, %struct.madera** %10, align 8
  %286 = getelementptr inbounds %struct.madera, %struct.madera* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = load i64, i64* @MADERA_AIF_BCLK_CTRL, align 8
  %291 = add nsw i64 %289, %290
  %292 = load i32, i32* @MADERA_AIF1_BCLK_FREQ_MASK, align 4
  %293 = load i32, i32* %21, align 4
  %294 = call i32 @regmap_update_bits(i32 %287, i64 %291, i32 %292, i32 %293)
  %295 = load %struct.madera*, %struct.madera** %10, align 8
  %296 = getelementptr inbounds %struct.madera, %struct.madera* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* @MADERA_AIF_RX_BCLK_RATE, align 8
  %301 = add nsw i64 %299, %300
  %302 = load i32, i32* @MADERA_AIF1RX_BCPF_MASK, align 4
  %303 = load i32, i32* %22, align 4
  %304 = call i32 @regmap_update_bits(i32 %297, i64 %301, i32 %302, i32 %303)
  %305 = load %struct.madera*, %struct.madera** %10, align 8
  %306 = getelementptr inbounds %struct.madera, %struct.madera* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = load i64, i64* @MADERA_AIF_FRAME_CTRL_1, align 8
  %311 = add nsw i64 %309, %310
  %312 = load i32, i32* @MADERA_AIF1TX_WL_MASK, align 4
  %313 = load i32, i32* @MADERA_AIF1TX_SLOT_LEN_MASK, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* %24, align 4
  %316 = call i32 @regmap_update_bits(i32 %307, i64 %311, i32 %314, i32 %315)
  %317 = load %struct.madera*, %struct.madera** %10, align 8
  %318 = getelementptr inbounds %struct.madera, %struct.madera* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* %11, align 4
  %321 = sext i32 %320 to i64
  %322 = load i64, i64* @MADERA_AIF_FRAME_CTRL_2, align 8
  %323 = add nsw i64 %321, %322
  %324 = load i32, i32* @MADERA_AIF1RX_WL_MASK, align 4
  %325 = load i32, i32* @MADERA_AIF1RX_SLOT_LEN_MASK, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* %24, align 4
  %328 = call i32 @regmap_update_bits(i32 %319, i64 %323, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %284, %281
  br label %330

330:                                              ; preds = %329, %280
  %331 = load i32, i32* %27, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %352

333:                                              ; preds = %330
  %334 = load %struct.madera*, %struct.madera** %10, align 8
  %335 = getelementptr inbounds %struct.madera, %struct.madera* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %11, align 4
  %338 = sext i32 %337 to i64
  %339 = load i64, i64* @MADERA_AIF_TX_ENABLES, align 8
  %340 = add nsw i64 %338, %339
  %341 = load i32, i32* %28, align 4
  %342 = call i32 @regmap_update_bits(i32 %336, i64 %340, i32 255, i32 %341)
  %343 = load %struct.madera*, %struct.madera** %10, align 8
  %344 = getelementptr inbounds %struct.madera, %struct.madera* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %11, align 4
  %347 = sext i32 %346 to i64
  %348 = load i64, i64* @MADERA_AIF_RX_ENABLES, align 8
  %349 = add nsw i64 %347, %348
  %350 = load i32, i32* %29, align 4
  %351 = call i32 @regmap_update_bits(i32 %345, i64 %349, i32 255, i32 %350)
  br label %352

352:                                              ; preds = %333, %330
  %353 = load i32, i32* %14, align 4
  store i32 %353, i32* %4, align 4
  br label %354

354:                                              ; preds = %352, %235, %194, %139
  %355 = load i32, i32* %4, align 4
  ret i32 %355
}

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @madera_aif_dbg(%struct.snd_soc_dai*, i8*, ...) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_read(%struct.snd_soc_component*, i64, i32*) #1

declare dso_local i32 @madera_aif_err(%struct.snd_soc_dai*, i8*, i32) #1

declare dso_local i32 @madera_aif_cfg_changed(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @madera_hw_params_rate(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
