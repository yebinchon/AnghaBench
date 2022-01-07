; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm5100_priv = type { i32*, i32, i32, i64* }

@.str = private unnamed_addr constant [43 x i8] c"Word length %d bits, frame length %d bits\0A\00", align 1
@wm5100_sr_code = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid rate %dHzn\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM5100_CLOCKING_8 = common dso_local global i32 0, align 4
@WM5100_ASYNC_SAMPLE_RATE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s has no rate set\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ASYNCCLK\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SYSCLK\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Target BCLK is %dHz, using %dHz %s\0A\00", align 1
@wm5100_bclk_rates_cd = common dso_local global i32* null, align 8
@wm5100_bclk_rates_dat = common dso_local global i32* null, align 8
@WM5100_NUM_BCLK_RATES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"No valid BCLK for %dHz found from %dHz %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Setting %dHz BCLK\0A\00", align 1
@WM5100_AIF1_BCLK_FREQ_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Setting %dHz LRCLK\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@WM5100_AIF1RX_BCPF_MASK = common dso_local global i32 0, align 4
@WM5100_AIF1TX_BCPF_MASK = common dso_local global i32 0, align 4
@WM5100_AIF1TX_WL_SHIFT = common dso_local global i32 0, align 4
@WM5100_AIF1RX_WL_MASK = common dso_local global i32 0, align 4
@WM5100_AIF1RX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@WM5100_AIF1TX_WL_MASK = common dso_local global i32 0, align 4
@WM5100_AIF1TX_SLOT_LEN_MASK = common dso_local global i32 0, align 4
@WM5100_AIF1_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm5100_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm5100_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %21, align 8
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %8, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %24 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.wm5100_priv* %24, %struct.wm5100_priv** %9, align 8
  %25 = load %struct.wm5100_priv*, %struct.wm5100_priv** %9, align 8
  %26 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %39 = call i32 @params_width(%struct.snd_pcm_hw_params* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %4, align 4
  br label %300

44:                                               ; preds = %3
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %4, align 4
  br label %300

51:                                               ; preds = %44
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %59 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %4, align 4
  br label %300

64:                                               ; preds = %51
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load %struct.wm5100_priv*, %struct.wm5100_priv** %9, align 8
  %69 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %14, align 4
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %72 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %73 = call i32 @params_rate(%struct.snd_pcm_hw_params* %72)
  %74 = call i32 @wm5100_alloc_sr(%struct.snd_soc_component* %71, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %18, align 4
  store i32 %78, i32* %4, align 4
  br label %300

79:                                               ; preds = %67
  br label %123

80:                                               ; preds = %64
  %81 = load %struct.wm5100_priv*, %struct.wm5100_priv** %9, align 8
  %82 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  store i32 3, i32* %18, align 4
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %100, %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32*, i32** @wm5100_sr_code, align 8
  %87 = call i32 @ARRAY_SIZE(i32* %86)
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_rate(%struct.snd_pcm_hw_params* %90)
  %92 = load i32*, i32** @wm5100_sr_code, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %91, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %103

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %84

103:                                              ; preds = %98, %84
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** @wm5100_sr_code, align 8
  %106 = call i32 @ARRAY_SIZE(i32* %105)
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %110 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %113 = call i32 @params_rate(%struct.snd_pcm_hw_params* %112)
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %300

117:                                              ; preds = %103
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %119 = load i32, i32* @WM5100_CLOCKING_8, align 4
  %120 = load i32, i32* @WM5100_ASYNC_SAMPLE_RATE_MASK, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %118, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %79
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %128 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %134 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %300

137:                                              ; preds = %123
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %139 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %147 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %141, i32 %142, i8* %146)
  %148 = load i32, i32* %14, align 4
  %149 = srem i32 %148, 4000
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %137
  %152 = load i32*, i32** @wm5100_bclk_rates_cd, align 8
  store i32* %152, i32** %19, align 8
  br label %155

153:                                              ; preds = %137
  %154 = load i32*, i32** @wm5100_bclk_rates_dat, align 8
  store i32* %154, i32** %19, align 8
  br label %155

155:                                              ; preds = %153, %151
  store i32 0, i32* %11, align 4
  br label %156

156:                                              ; preds = %179, %155
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @WM5100_NUM_BCLK_RATES, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %182

160:                                              ; preds = %156
  %161 = load i32*, i32** %19, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = load i32*, i32** %19, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %13, align 4
  %175 = srem i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %182

178:                                              ; preds = %168, %160
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %156

182:                                              ; preds = %177, %156
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @WM5100_NUM_BCLK_RATES, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %182
  %187 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %188 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %196 = call i32 (i32, i8*, ...) @dev_err(i32 %189, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %190, i32 %191, i8* %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  br label %300

199:                                              ; preds = %182
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %13, align 4
  %201 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %202 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %19, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %203, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %208)
  %210 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  %213 = load i32, i32* @WM5100_AIF1_BCLK_FREQ_MASK, align 4
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %210, i32 %212, i32 %213, i32 %214)
  %216 = load i32*, i32** %19, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %222 = call i32 @params_rate(%struct.snd_pcm_hw_params* %221)
  %223 = sdiv i32 %220, %222
  store i32 %223, i32* %15, align 4
  %224 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %225 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %19, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %15, align 4
  %233 = sdiv i32 %231, %232
  %234 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %226, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %233)
  %235 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %236 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %250, label %240

240:                                              ; preds = %199
  %241 = load %struct.wm5100_priv*, %struct.wm5100_priv** %9, align 8
  %242 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %241, i32 0, i32 3
  %243 = load i64*, i64** %242, align 8
  %244 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %245 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds i64, i64* %243, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %240, %199
  %251 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 7
  %254 = load i32, i32* @WM5100_AIF1RX_BCPF_MASK, align 4
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %251, i32 %253, i32 %254, i32 %255)
  br label %264

257:                                              ; preds = %240
  %258 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, 6
  %261 = load i32, i32* @WM5100_AIF1TX_BCPF_MASK, align 4
  %262 = load i32, i32* %15, align 4
  %263 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %258, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %257, %250
  %265 = load i32, i32* %16, align 4
  %266 = load i32, i32* @WM5100_AIF1TX_WL_SHIFT, align 4
  %267 = shl i32 %265, %266
  %268 = load i32, i32* %17, align 4
  %269 = or i32 %267, %268
  store i32 %269, i32* %11, align 4
  %270 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %271 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %284

275:                                              ; preds = %264
  %276 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 9
  %279 = load i32, i32* @WM5100_AIF1RX_WL_MASK, align 4
  %280 = load i32, i32* @WM5100_AIF1RX_SLOT_LEN_MASK, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %11, align 4
  %283 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %276, i32 %278, i32 %281, i32 %282)
  br label %293

284:                                              ; preds = %264
  %285 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %286 = load i32, i32* %12, align 4
  %287 = add nsw i32 %286, 8
  %288 = load i32, i32* @WM5100_AIF1TX_WL_MASK, align 4
  %289 = load i32, i32* @WM5100_AIF1TX_SLOT_LEN_MASK, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* %11, align 4
  %292 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %285, i32 %287, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %284, %275
  %294 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %295 = load i32, i32* %12, align 4
  %296 = add nsw i32 %295, 4
  %297 = load i32, i32* @WM5100_AIF1_RATE_MASK, align 4
  %298 = load i32, i32* %18, align 4
  %299 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %294, i32 %296, i32 %297, i32 %298)
  store i32 0, i32* %4, align 4
  br label %300

300:                                              ; preds = %293, %186, %126, %108, %77, %62, %49, %42
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm5100_alloc_sr(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
