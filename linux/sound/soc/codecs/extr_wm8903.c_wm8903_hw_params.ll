; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8903_priv = type { i32, i8* }

@WM8903_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8903_AUDIO_INTERFACE_2 = common dso_local global i32 0, align 4
@WM8903_AUDIO_INTERFACE_3 = common dso_local global i32 0, align 4
@WM8903_CLOCK_RATES_0 = common dso_local global i32 0, align 4
@WM8903_CLOCK_RATES_1 = common dso_local global i32 0, align 4
@WM8903_DAC_DIGITAL_1 = common dso_local global i32 0, align 4
@WM8903_DAC_SB_FILT = common dso_local global i32 0, align 4
@sample_rates = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"DSP fs = %dHz\0A\00", align 1
@WM8903_SAMPLE_RATE_MASK = common dso_local global i32 0, align 4
@WM8903_AIF_WL_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"MCLK = %dHz, target sample rate = %dHz\0A\00", align 1
@clk_sys_ratios = common dso_local global %struct.TYPE_5__* null, align 8
@WM8903_MCLKDIV2 = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_RATE_MASK = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_MODE_MASK = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_RATE_SHIFT = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_MODE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"CLK_SYS_RATE=%x, CLK_SYS_MODE=%x div=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Actual CLK_SYS = %dHz\0A\00", align 1
@bclk_divs = common dso_local global %struct.TYPE_5__* null, align 8
@WM8903_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8903_LRCLK_RATE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"BCLK ratio %d for %dHz - actual BCLK = %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8903_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8903_priv*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %26, align 8
  store %struct.snd_soc_component* %27, %struct.snd_soc_component** %8, align 8
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %29 = call %struct.wm8903_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %28)
  store %struct.wm8903_priv* %29, %struct.wm8903_priv** %9, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = call i8* @params_rate(%struct.snd_pcm_hw_params* %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = load i32, i32* @WM8903_AUDIO_INTERFACE_1, align 4
  %35 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %33, i32 %34)
  store i32 %35, i32* %19, align 4
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %37 = load i32, i32* @WM8903_AUDIO_INTERFACE_2, align 4
  %38 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %36, i32 %37)
  store i32 %38, i32* %20, align 4
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %40 = load i32, i32* @WM8903_AUDIO_INTERFACE_3, align 4
  %41 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %39, i32 %40)
  store i32 %41, i32* %21, align 4
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %43 = load i32, i32* @WM8903_CLOCK_RATES_0, align 4
  %44 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %42, i32 %43)
  store i32 %44, i32* %22, align 4
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = load i32, i32* @WM8903_CLOCK_RATES_1, align 4
  %47 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %45, i32 %46)
  store i32 %47, i32* %23, align 4
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %49 = load i32, i32* @WM8903_DAC_DIGITAL_1, align 4
  %50 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %48, i32 %49)
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %51, 24000
  br i1 %52, label %53, label %57

53:                                               ; preds = %3
  %54 = load i32, i32* @WM8903_DAC_SB_FILT, align 4
  %55 = load i32, i32* %24, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %24, align 4
  br label %62

57:                                               ; preds = %3
  %58 = load i32, i32* @WM8903_DAC_SB_FILT, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %24, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %24, align 4
  br label %62

62:                                               ; preds = %57, %53
  store i32 0, i32* %14, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @abs(i32 %70) #3
  store i32 %71, i32* %16, align 4
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %94, %62
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @abs(i32 %85) #3
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %90, %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %72

97:                                               ; preds = %72
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %99 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @WM8903_SAMPLE_RATE_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %23, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %23, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %23, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* @WM8903_AIF_WL_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %19, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 2, %124
  store i32 %125, i32* %11, align 4
  %126 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %127 = call i32 @params_width(%struct.snd_pcm_hw_params* %126)
  switch i32 %127, label %146 [
    i32 16, label %128
    i32 20, label %131
    i32 24, label %136
    i32 32, label %141
  ]

128:                                              ; preds = %97
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %129, 16
  store i32 %130, i32* %11, align 4
  br label %149

131:                                              ; preds = %97
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 %132, 20
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %19, align 4
  %135 = or i32 %134, 4
  store i32 %135, i32* %19, align 4
  br label %149

136:                                              ; preds = %97
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 %137, 24
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %19, align 4
  %140 = or i32 %139, 8
  store i32 %140, i32* %19, align 4
  br label %149

141:                                              ; preds = %97
  %142 = load i32, i32* %11, align 4
  %143 = mul nsw i32 %142, 32
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %19, align 4
  %145 = or i32 %144, 12
  store i32 %145, i32* %19, align 4
  br label %149

146:                                              ; preds = %97
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %395

149:                                              ; preds = %141, %136, %131, %128
  %150 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %151 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %154 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156)
  store i32 0, i32* %15, align 4
  %158 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %159 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %164, %168
  %170 = sdiv i32 %160, %169
  %171 = load i32, i32* %10, align 4
  %172 = sub nsw i32 %170, %171
  %173 = call i32 @abs(i32 %172) #3
  store i32 %173, i32* %16, align 4
  store i32 1, i32* %13, align 4
  br label %174

174:                                              ; preds = %207, %149
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %177 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %176)
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %179, label %210

179:                                              ; preds = %174
  %180 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %181 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %188, %194
  %196 = sdiv i32 %182, %195
  %197 = load i32, i32* %10, align 4
  %198 = sub nsw i32 %196, %197
  %199 = call i32 @abs(i32 %198) #3
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %179
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %17, align 4
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %203, %179
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %174

210:                                              ; preds = %174
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %226

218:                                              ; preds = %210
  %219 = load i32, i32* @WM8903_MCLKDIV2, align 4
  %220 = load i32, i32* %22, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %22, align 4
  %222 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %223 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 2
  store i32 %225, i32* %18, align 4
  br label %234

226:                                              ; preds = %210
  %227 = load i32, i32* @WM8903_MCLKDIV2, align 4
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %22, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %22, align 4
  %231 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %232 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %18, align 4
  br label %234

234:                                              ; preds = %226, %218
  %235 = load i32, i32* @WM8903_CLK_SYS_RATE_MASK, align 4
  %236 = load i32, i32* @WM8903_CLK_SYS_MODE_MASK, align 4
  %237 = or i32 %235, %236
  %238 = xor i32 %237, -1
  %239 = load i32, i32* %23, align 4
  %240 = and i32 %239, %238
  store i32 %240, i32* %23, align 4
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @WM8903_CLK_SYS_RATE_SHIFT, align 4
  %248 = shl i32 %246, %247
  %249 = load i32, i32* %23, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %23, align 4
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %252 = load i32, i32* %15, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @WM8903_CLK_SYS_MODE_SHIFT, align 4
  %258 = shl i32 %256, %257
  %259 = load i32, i32* %23, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %23, align 4
  %261 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %262 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_ratios, align 8
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %263, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %269, i32 %275, i32 %281)
  %283 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %284 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %18, align 4
  %287 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %286)
  store i32 0, i32* %12, align 4
  %288 = load i32, i32* %18, align 4
  %289 = mul nsw i32 %288, 10
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = sdiv i32 %289, %293
  %295 = load i32, i32* %11, align 4
  %296 = sub nsw i32 %294, %295
  store i32 %296, i32* %16, align 4
  store i32 1, i32* %13, align 4
  br label %297

297:                                              ; preds = %317, %234
  %298 = load i32, i32* %13, align 4
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %300 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %299)
  %301 = icmp slt i32 %298, %300
  br i1 %301, label %302, label %322

302:                                              ; preds = %297
  %303 = load i32, i32* %18, align 4
  %304 = mul nsw i32 %303, 10
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = sdiv i32 %304, %310
  %312 = load i32, i32* %11, align 4
  %313 = sub nsw i32 %311, %312
  store i32 %313, i32* %17, align 4
  %314 = load i32, i32* %17, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %302
  br label %322

317:                                              ; preds = %302
  %318 = load i32, i32* %13, align 4
  store i32 %318, i32* %12, align 4
  %319 = load i32, i32* %17, align 4
  store i32 %319, i32* %16, align 4
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %13, align 4
  br label %297

322:                                              ; preds = %316, %297
  %323 = load i32, i32* @WM8903_BCLK_DIV_MASK, align 4
  %324 = xor i32 %323, -1
  %325 = load i32, i32* %20, align 4
  %326 = and i32 %325, %324
  store i32 %326, i32* %20, align 4
  %327 = load i32, i32* @WM8903_LRCLK_RATE_MASK, align 4
  %328 = xor i32 %327, -1
  %329 = load i32, i32* %21, align 4
  %330 = and i32 %329, %328
  store i32 %330, i32* %21, align 4
  %331 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %332 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %335 = load i32, i32* %12, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 4
  %340 = sdiv i32 %339, 10
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %18, align 4
  %343 = mul nsw i32 %342, 10
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %345 = load i32, i32* %12, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = sdiv i32 %343, %349
  %351 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %333, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %340, i32 %341, i32 %350)
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %353 = load i32, i32* %12, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %20, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %20, align 4
  %360 = load i32, i32* %11, align 4
  %361 = load i32, i32* %10, align 4
  %362 = sdiv i32 %360, %361
  %363 = load i32, i32* %21, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %21, align 4
  %365 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %366 = call i8* @params_rate(%struct.snd_pcm_hw_params* %365)
  %367 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %368 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %367, i32 0, i32 1
  store i8* %366, i8** %368, align 8
  %369 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %370 = call i32 @wm8903_set_deemph(%struct.snd_soc_component* %369)
  %371 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %372 = load i32, i32* @WM8903_CLOCK_RATES_0, align 4
  %373 = load i32, i32* %22, align 4
  %374 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %371, i32 %372, i32 %373)
  %375 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %376 = load i32, i32* @WM8903_CLOCK_RATES_1, align 4
  %377 = load i32, i32* %23, align 4
  %378 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %375, i32 %376, i32 %377)
  %379 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %380 = load i32, i32* @WM8903_AUDIO_INTERFACE_1, align 4
  %381 = load i32, i32* %19, align 4
  %382 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %379, i32 %380, i32 %381)
  %383 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %384 = load i32, i32* @WM8903_AUDIO_INTERFACE_2, align 4
  %385 = load i32, i32* %20, align 4
  %386 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %383, i32 %384, i32 %385)
  %387 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %388 = load i32, i32* @WM8903_AUDIO_INTERFACE_3, align 4
  %389 = load i32, i32* %21, align 4
  %390 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %387, i32 %388, i32 %389)
  %391 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %392 = load i32, i32* @WM8903_DAC_DIGITAL_1, align 4
  %393 = load i32, i32* %24, align 4
  %394 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %391, i32 %392, i32 %393)
  store i32 0, i32* %4, align 4
  br label %395

395:                                              ; preds = %322, %146
  %396 = load i32, i32* %4, align 4
  ret i32 %396
}

declare dso_local %struct.wm8903_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i8* @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm8903_set_deemph(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
