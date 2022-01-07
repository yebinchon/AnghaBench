; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2200.c_wm2200_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm2200_priv = type { i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Word length %d bits, frame length %d bits\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"SYSCLK has no rate set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wm2200_sr_code = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Unsupported sample rate: %dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Target BCLK is %dHz, using %dHz SYSCLK\0A\00", align 1
@wm2200_bclk_rates_cd = common dso_local global i32* null, align 8
@wm2200_bclk_rates_dat = common dso_local global i32* null, align 8
@WM2200_NUM_BCLK_RATES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"No valid BCLK for %dHz found from %dHz SYSCLK\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Setting %dHz BCLK\0A\00", align 1
@WM2200_AUDIO_IF_1_1 = common dso_local global i32 0, align 4
@WM2200_AIF1_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Setting %dHz LRCLK\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@WM2200_AUDIO_IF_1_7 = common dso_local global i32 0, align 4
@WM2200_AIF1RX_BCPF_MASK = common dso_local global i32 0, align 4
@WM2200_AUDIO_IF_1_6 = common dso_local global i32 0, align 4
@WM2200_AIF1TX_BCPF_MASK = common dso_local global i32 0, align 4
@WM2200_AIF1TX_WL_SHIFT = common dso_local global i32 0, align 4
@WM2200_AUDIO_IF_1_9 = common dso_local global i32 0, align 4
@WM2200_AIF1RX_WL_MASK = common dso_local global i32 0, align 4
@WM2200_AIF1RX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@WM2200_AUDIO_IF_1_8 = common dso_local global i32 0, align 4
@WM2200_AIF1TX_WL_MASK = common dso_local global i32 0, align 4
@WM2200_AIF1TX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@WM2200_CLOCKING_4 = common dso_local global i32 0, align 4
@WM2200_SAMPLE_RATE_1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm2200_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2200_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm2200_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %8, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = call %struct.wm2200_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm2200_priv* %21, %struct.wm2200_priv** %9, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_width(%struct.snd_pcm_hw_params* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %4, align 4
  br label %245

28:                                               ; preds = %3
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %4, align 4
  br label %245

35:                                               ; preds = %28
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %245

48:                                               ; preds = %35
  %49 = load %struct.wm2200_priv*, %struct.wm2200_priv** %9, align 8
  %50 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %245

60:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** @wm2200_sr_code, align 8
  %64 = call i32 @ARRAY_SIZE(i32* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load i32*, i32** @wm2200_sr_code, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %73 = call i32 @params_rate(%struct.snd_pcm_hw_params* %72)
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %80

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %61

80:                                               ; preds = %75, %61
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** @wm2200_sr_code, align 8
  %83 = call i32 @ARRAY_SIZE(i32* %82)
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %90 = call i32 @params_rate(%struct.snd_pcm_hw_params* %89)
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %245

94:                                               ; preds = %80
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %15, align 4
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %97 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.wm2200_priv*, %struct.wm2200_priv** %9, align 8
  %101 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load %struct.wm2200_priv*, %struct.wm2200_priv** %9, align 8
  %105 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = srem i32 %106, 4000
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %94
  %110 = load i32*, i32** @wm2200_bclk_rates_cd, align 8
  store i32* %110, i32** %16, align 8
  br label %113

111:                                              ; preds = %94
  %112 = load i32*, i32** @wm2200_bclk_rates_dat, align 8
  store i32* %112, i32** %16, align 8
  br label %113

113:                                              ; preds = %111, %109
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %137, %113
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @WM2200_NUM_BCLK_RATES, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %118
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = srem i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %140

136:                                              ; preds = %126, %118
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %114

140:                                              ; preds = %135, %114
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @WM2200_NUM_BCLK_RATES, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %146 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.wm2200_priv*, %struct.wm2200_priv** %9, align 8
  %150 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, ...) @dev_err(i32 %147, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %151)
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %245

155:                                              ; preds = %140
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %11, align 4
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %158 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %16, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  %166 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %167 = load i32, i32* @WM2200_AUDIO_IF_1_1, align 4
  %168 = load i32, i32* @WM2200_AIF1_BCLK_DIV_MASK, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32*, i32** %16, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %177 = call i32 @params_rate(%struct.snd_pcm_hw_params* %176)
  %178 = sdiv i32 %175, %177
  store i32 %178, i32* %12, align 4
  %179 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %180 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %12, align 4
  %188 = sdiv i32 %186, %187
  %189 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %181, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  %190 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %191 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %200, label %195

195:                                              ; preds = %155
  %196 = load %struct.wm2200_priv*, %struct.wm2200_priv** %9, align 8
  %197 = getelementptr inbounds %struct.wm2200_priv, %struct.wm2200_priv* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195, %155
  %201 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %202 = load i32, i32* @WM2200_AUDIO_IF_1_7, align 4
  %203 = load i32, i32* @WM2200_AIF1RX_BCPF_MASK, align 4
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %201, i32 %202, i32 %203, i32 %204)
  br label %212

206:                                              ; preds = %195
  %207 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %208 = load i32, i32* @WM2200_AUDIO_IF_1_6, align 4
  %209 = load i32, i32* @WM2200_AIF1TX_BCPF_MASK, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %207, i32 %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %206, %200
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @WM2200_AIF1TX_WL_SHIFT, align 4
  %215 = shl i32 %213, %214
  %216 = load i32, i32* %13, align 4
  %217 = or i32 %215, %216
  store i32 %217, i32* %10, align 4
  %218 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %219 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %212
  %224 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %225 = load i32, i32* @WM2200_AUDIO_IF_1_9, align 4
  %226 = load i32, i32* @WM2200_AIF1RX_WL_MASK, align 4
  %227 = load i32, i32* @WM2200_AIF1RX_SLOT_LEN_MASK, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %224, i32 %225, i32 %228, i32 %229)
  br label %239

231:                                              ; preds = %212
  %232 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %233 = load i32, i32* @WM2200_AUDIO_IF_1_8, align 4
  %234 = load i32, i32* @WM2200_AIF1TX_WL_MASK, align 4
  %235 = load i32, i32* @WM2200_AIF1TX_SLOT_LEN_MASK, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %232, i32 %233, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %231, %223
  %240 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %241 = load i32, i32* @WM2200_CLOCKING_4, align 4
  %242 = load i32, i32* @WM2200_SAMPLE_RATE_1_MASK, align 4
  %243 = load i32, i32* %15, align 4
  %244 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %240, i32 %241, i32 %242, i32 %243)
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %239, %144, %85, %53, %46, %33, %26
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local %struct.wm2200_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
