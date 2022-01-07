; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.TYPE_3__*, %struct.snd_soc_component* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32*, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@arizona_44k1_bclk_rates = common dso_local global i32* null, align 8
@arizona_48k_bclk_rates = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Configuring for %d %d bit TDM slots\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Limiting to %d channels\0A\00", align 1
@ARIZONA_AIF_FORMAT = common dso_local global i64 0, align 8
@ARIZONA_AIF1_FMT_MASK = common dso_local global i32 0, align 4
@ARIZONA_FMT_I2S_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Forcing stereo mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unsupported sample rate %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"BCLK %dHz LRCLK %dHz\0A\00", align 1
@ARIZONA_AIF1TX_WL_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_AIF_TX_ENABLES = common dso_local global i64 0, align 8
@ARIZONA_AIF_RX_ENABLES = common dso_local global i64 0, align 8
@ARIZONA_AIF_BCLK_CTRL = common dso_local global i64 0, align 8
@ARIZONA_AIF1_BCLK_FREQ_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF_TX_BCLK_RATE = common dso_local global i64 0, align 8
@ARIZONA_AIF1TX_BCPF_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF_RX_BCLK_RATE = common dso_local global i64 0, align 8
@ARIZONA_AIF1RX_BCPF_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF_FRAME_CTRL_1 = common dso_local global i64 0, align 8
@ARIZONA_AIF1TX_WL_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF1TX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF_FRAME_CTRL_2 = common dso_local global i64 0, align 8
@ARIZONA_AIF1RX_WL_MASK = common dso_local global i32 0, align 4
@ARIZONA_AIF1RX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @arizona_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.arizona_priv*, align 8
  %10 = alloca %struct.arizona*, align 8
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
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 2
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %29, align 8
  store %struct.snd_soc_component* %30, %struct.snd_soc_component** %8, align 8
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %32 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %31)
  store %struct.arizona_priv* %32, %struct.arizona_priv** %9, align 8
  %33 = load %struct.arizona_priv*, %struct.arizona_priv** %9, align 8
  %34 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %33, i32 0, i32 0
  %35 = load %struct.arizona*, %struct.arizona** %34, align 8
  store %struct.arizona* %35, %struct.arizona** %10, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %42 = call i32 @params_channels(%struct.snd_pcm_hw_params* %41)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.arizona*, %struct.arizona** %10, align 8
  %44 = getelementptr inbounds %struct.arizona, %struct.arizona* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %17, align 4
  %54 = load %struct.arizona*, %struct.arizona** %10, align 8
  %55 = getelementptr inbounds %struct.arizona, %struct.arizona* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %18, align 4
  %64 = load %struct.arizona*, %struct.arizona** %10, align 8
  %65 = getelementptr inbounds %struct.arizona, %struct.arizona* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %19, align 4
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %75 = call i32 @params_rate(%struct.snd_pcm_hw_params* %74)
  %76 = srem i32 %75, 4000
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %3
  %79 = load i32*, i32** @arizona_44k1_bclk_rates, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32* %80, i32** %12, align 8
  br label %84

81:                                               ; preds = %3
  %82 = load i32*, i32** @arizona_48k_bclk_rates, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32* %83, i32** %12, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %86 = call i32 @params_width(%struct.snd_pcm_hw_params* %85)
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %18, align 4
  %93 = call i32 (%struct.snd_soc_dai*, i8*, ...) @arizona_aif_dbg(%struct.snd_soc_dai* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %18, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %98 = call i32 @params_rate(%struct.snd_pcm_hw_params* %97)
  %99 = mul nsw i32 %96, %98
  store i32 %99, i32* %24, align 4
  %100 = load i32, i32* %19, align 4
  store i32 %100, i32* %16, align 4
  br label %105

101:                                              ; preds = %84
  %102 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %103 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %102)
  store i32 %103, i32* %24, align 4
  %104 = load i32, i32* %22, align 4
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %101, %89
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i32 (%struct.snd_soc_dai*, i8*, ...) @arizona_aif_dbg(%struct.snd_soc_dai* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %24, align 4
  %118 = sdiv i32 %117, %116
  store i32 %118, i32* %24, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %24, align 4
  %121 = mul nsw i32 %120, %119
  store i32 %121, i32* %24, align 4
  br label %122

122:                                              ; preds = %112, %108, %105
  %123 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @ARIZONA_AIF_FORMAT, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i8* @snd_soc_component_read32(%struct.snd_soc_component* %123, i64 %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* @ARIZONA_AIF1_FMT_MASK, align 4
  %131 = load i32, i32* %15, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %122
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @ARIZONA_FMT_I2S_MODE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %142 = call i32 (%struct.snd_soc_dai*, i8*, ...) @arizona_aif_dbg(%struct.snd_soc_dai* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %24, align 4
  %145 = sdiv i32 %144, %143
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %24, align 4
  %149 = mul nsw i32 %148, %147
  store i32 %149, i32* %24, align 4
  br label %150

150:                                              ; preds = %140, %136, %122
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %177, %150
  %152 = load i32, i32* %13, align 4
  %153 = load i32*, i32** @arizona_44k1_bclk_rates, align 8
  %154 = call i32 @ARRAY_SIZE(i32* %153)
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %180

156:                                              ; preds = %151
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %24, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %156
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %171 = call i32 @params_rate(%struct.snd_pcm_hw_params* %170)
  %172 = srem i32 %169, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %164
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %20, align 4
  br label %180

176:                                              ; preds = %164, %156
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %151

180:                                              ; preds = %174, %151
  %181 = load i32, i32* %13, align 4
  %182 = load i32*, i32** @arizona_44k1_bclk_rates, align 8
  %183 = call i32 @ARRAY_SIZE(i32* %182)
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %187 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %188 = call i32 @params_rate(%struct.snd_pcm_hw_params* %187)
  %189 = call i32 @arizona_aif_err(%struct.snd_soc_dai* %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %350

192:                                              ; preds = %180
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* %20, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %199 = call i32 @params_rate(%struct.snd_pcm_hw_params* %198)
  %200 = sdiv i32 %197, %199
  store i32 %200, i32* %21, align 4
  %201 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %20, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %21, align 4
  %213 = sdiv i32 %211, %212
  %214 = call i32 (%struct.snd_soc_dai*, i8*, ...) @arizona_aif_dbg(%struct.snd_soc_dai* %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %206, i32 %213)
  %215 = load i32, i32* %22, align 4
  %216 = load i32, i32* @ARIZONA_AIF1TX_WL_SHIFT, align 4
  %217 = shl i32 %215, %216
  %218 = load i32, i32* %18, align 4
  %219 = or i32 %217, %218
  store i32 %219, i32* %23, align 4
  %220 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %23, align 4
  %225 = call i32 @arizona_aif_cfg_changed(%struct.snd_soc_component* %220, i32 %221, i32 %222, i32 %223, i32 %224)
  store i32 %225, i32* %25, align 4
  %226 = load i32, i32* %25, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %259

228:                                              ; preds = %192
  %229 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* @ARIZONA_AIF_TX_ENABLES, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i8* @snd_soc_component_read32(%struct.snd_soc_component* %229, i64 %233)
  %235 = ptrtoint i8* %234 to i32
  store i32 %235, i32* %26, align 4
  %236 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* @ARIZONA_AIF_RX_ENABLES, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i8* @snd_soc_component_read32(%struct.snd_soc_component* %236, i64 %240)
  %242 = ptrtoint i8* %241 to i32
  store i32 %242, i32* %27, align 4
  %243 = load %struct.arizona*, %struct.arizona** %10, align 8
  %244 = getelementptr inbounds %struct.arizona, %struct.arizona* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = load i64, i64* @ARIZONA_AIF_TX_ENABLES, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @regmap_update_bits_async(i32 %245, i64 %249, i32 255, i32 0)
  %251 = load %struct.arizona*, %struct.arizona** %10, align 8
  %252 = getelementptr inbounds %struct.arizona, %struct.arizona* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* @ARIZONA_AIF_RX_ENABLES, align 8
  %257 = add nsw i64 %255, %256
  %258 = call i32 @regmap_update_bits(i32 %253, i64 %257, i32 255, i32 0)
  br label %259

259:                                              ; preds = %228, %192
  %260 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %261 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %262 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %263 = call i32 @arizona_hw_params_rate(%struct.snd_pcm_substream* %260, %struct.snd_pcm_hw_params* %261, %struct.snd_soc_dai* %262)
  store i32 %263, i32* %14, align 4
  %264 = load i32, i32* %14, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %326

267:                                              ; preds = %259
  %268 = load i32, i32* %25, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %325

270:                                              ; preds = %267
  %271 = load %struct.arizona*, %struct.arizona** %10, align 8
  %272 = getelementptr inbounds %struct.arizona, %struct.arizona* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* @ARIZONA_AIF_BCLK_CTRL, align 8
  %277 = add nsw i64 %275, %276
  %278 = load i32, i32* @ARIZONA_AIF1_BCLK_FREQ_MASK, align 4
  %279 = load i32, i32* %20, align 4
  %280 = call i32 @regmap_update_bits_async(i32 %273, i64 %277, i32 %278, i32 %279)
  %281 = load %struct.arizona*, %struct.arizona** %10, align 8
  %282 = getelementptr inbounds %struct.arizona, %struct.arizona* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = load i64, i64* @ARIZONA_AIF_TX_BCLK_RATE, align 8
  %287 = add nsw i64 %285, %286
  %288 = load i32, i32* @ARIZONA_AIF1TX_BCPF_MASK, align 4
  %289 = load i32, i32* %21, align 4
  %290 = call i32 @regmap_update_bits_async(i32 %283, i64 %287, i32 %288, i32 %289)
  %291 = load %struct.arizona*, %struct.arizona** %10, align 8
  %292 = getelementptr inbounds %struct.arizona, %struct.arizona* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = load i64, i64* @ARIZONA_AIF_RX_BCLK_RATE, align 8
  %297 = add nsw i64 %295, %296
  %298 = load i32, i32* @ARIZONA_AIF1RX_BCPF_MASK, align 4
  %299 = load i32, i32* %21, align 4
  %300 = call i32 @regmap_update_bits_async(i32 %293, i64 %297, i32 %298, i32 %299)
  %301 = load %struct.arizona*, %struct.arizona** %10, align 8
  %302 = getelementptr inbounds %struct.arizona, %struct.arizona* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = load i64, i64* @ARIZONA_AIF_FRAME_CTRL_1, align 8
  %307 = add nsw i64 %305, %306
  %308 = load i32, i32* @ARIZONA_AIF1TX_WL_MASK, align 4
  %309 = load i32, i32* @ARIZONA_AIF1TX_SLOT_LEN_MASK, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* %23, align 4
  %312 = call i32 @regmap_update_bits_async(i32 %303, i64 %307, i32 %310, i32 %311)
  %313 = load %struct.arizona*, %struct.arizona** %10, align 8
  %314 = getelementptr inbounds %struct.arizona, %struct.arizona* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = load i64, i64* @ARIZONA_AIF_FRAME_CTRL_2, align 8
  %319 = add nsw i64 %317, %318
  %320 = load i32, i32* @ARIZONA_AIF1RX_WL_MASK, align 4
  %321 = load i32, i32* @ARIZONA_AIF1RX_SLOT_LEN_MASK, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* %23, align 4
  %324 = call i32 @regmap_update_bits(i32 %315, i64 %319, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %270, %267
  br label %326

326:                                              ; preds = %325, %266
  %327 = load i32, i32* %25, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %348

329:                                              ; preds = %326
  %330 = load %struct.arizona*, %struct.arizona** %10, align 8
  %331 = getelementptr inbounds %struct.arizona, %struct.arizona* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = load i64, i64* @ARIZONA_AIF_TX_ENABLES, align 8
  %336 = add nsw i64 %334, %335
  %337 = load i32, i32* %26, align 4
  %338 = call i32 @regmap_update_bits_async(i32 %332, i64 %336, i32 255, i32 %337)
  %339 = load %struct.arizona*, %struct.arizona** %10, align 8
  %340 = getelementptr inbounds %struct.arizona, %struct.arizona* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = load i64, i64* @ARIZONA_AIF_RX_ENABLES, align 8
  %345 = add nsw i64 %343, %344
  %346 = load i32, i32* %27, align 4
  %347 = call i32 @regmap_update_bits(i32 %341, i64 %345, i32 255, i32 %346)
  br label %348

348:                                              ; preds = %329, %326
  %349 = load i32, i32* %14, align 4
  store i32 %349, i32* %4, align 4
  br label %350

350:                                              ; preds = %348, %185
  %351 = load i32, i32* %4, align 4
  ret i32 %351
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @arizona_aif_dbg(%struct.snd_soc_dai*, i8*, ...) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @arizona_aif_err(%struct.snd_soc_dai*, i8*, i32) #1

declare dso_local i32 @arizona_aif_cfg_changed(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits_async(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @arizona_hw_params_rate(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
