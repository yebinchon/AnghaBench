; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Configuring for %d %d bit TDM slots\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Target BCLK is %dHz\0A\00", align 1
@clk_sys_rates = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Selected CLK_SYS_RATIO of %d\0A\00", align 1
@WM8904_CLK_SYS_RATE_SHIFT = common dso_local global i32 0, align 4
@sample_rates = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Selected SAMPLE_RATE of %dHz\0A\00", align 1
@WM8904_SAMPLE_RATE_SHIFT = common dso_local global i32 0, align 4
@WM8904_DAC_SB_FILT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@bclk_divs = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Selected BCLK_DIV of %d for %dHz BCLK\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"LRCLK_RATE is %d\0A\00", align 1
@WM8904_DAC_DIGITAL_1 = common dso_local global i32 0, align 4
@WM8904_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8904_AIF_WL_MASK = common dso_local global i32 0, align 4
@WM8904_AUDIO_INTERFACE_2 = common dso_local global i32 0, align 4
@WM8904_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8904_AUDIO_INTERFACE_3 = common dso_local global i32 0, align 4
@WM8904_LRCLK_RATE_MASK = common dso_local global i32 0, align 4
@WM8904_CLOCK_RATES_1 = common dso_local global i32 0, align 4
@WM8904_SAMPLE_RATE_MASK = common dso_local global i32 0, align 4
@WM8904_CLK_SYS_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8904_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8904_priv*, align 8
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
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %21, align 8
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %8, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %24 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.wm8904_priv* %24, %struct.wm8904_priv** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_rate(%struct.snd_pcm_hw_params* %25)
  %27 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %28 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %30 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %3
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %38 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %42 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %46 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %49 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %52 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @snd_soc_calc_bclk(i32 %47, i32 %50, i32 2, i64 %53)
  %55 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %56 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %62

57:                                               ; preds = %3
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %59 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %61 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %33
  %63 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %64 = call i32 @params_width(%struct.snd_pcm_hw_params* %63)
  switch i32 %64, label %75 [
    i32 16, label %65
    i32 20, label %66
    i32 24, label %69
    i32 32, label %72
  ]

65:                                               ; preds = %62
  br label %78

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, 64
  store i32 %68, i32* %15, align 4
  br label %78

69:                                               ; preds = %62
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, 128
  store i32 %71, i32* %15, align 4
  br label %78

72:                                               ; preds = %62
  %73 = load i32, i32* %15, align 4
  %74 = or i32 %73, 192
  store i32 %74, i32* %15, align 4
  br label %78

75:                                               ; preds = %62
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %346

78:                                               ; preds = %72, %69, %66, %65
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %80 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %83 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %87 = call i32 @wm8904_configure_clocking(%struct.snd_soc_component* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %346

92:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  %93 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %94 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_rates, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %95, %99
  %101 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %102 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %100, %103
  %105 = call i32 @abs(i32 %104) #3
  store i32 %105, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %106

106:                                              ; preds = %134, %92
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_rates, align 8
  %109 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %108)
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %137

111:                                              ; preds = %106
  %112 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %113 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_rates, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %114, %120
  %122 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %123 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %121, %124
  %126 = call i32 @abs(i32 %125) #3
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %111
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %130, %111
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %106

137:                                              ; preds = %106
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %139 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_rates, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_sys_rates, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @WM8904_CLK_SYS_RATE_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %18, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %18, align 4
  store i32 0, i32* %12, align 4
  %158 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %159 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %160, %164
  %166 = call i32 @abs(i32 %165) #3
  store i32 %166, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %167

167:                                              ; preds = %191, %137
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %170 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %169)
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %194

172:                                              ; preds = %167
  %173 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %174 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %175, %181
  %183 = call i32 @abs(i32 %182) #3
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %172
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %13, align 4
  br label %190

190:                                              ; preds = %187, %172
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %167

194:                                              ; preds = %167
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %196 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sample_rates, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @WM8904_SAMPLE_RATE_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = load i32, i32* %18, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %18, align 4
  %215 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %216 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sle i32 %217, 24000
  br i1 %218, label %219, label %223

219:                                              ; preds = %194
  %220 = load i32, i32* @WM8904_DAC_SB_FILT, align 4
  %221 = load i32, i32* %19, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %19, align 4
  br label %223

223:                                              ; preds = %219, %194
  store i32 0, i32* %12, align 4
  %224 = load i32, i32* @INT_MAX, align 4
  store i32 %224, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %225

225:                                              ; preds = %257, %223
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %228 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %227)
  %229 = icmp slt i32 %226, %228
  br i1 %229, label %230, label %260

230:                                              ; preds = %225
  %231 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %232 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = mul nsw i32 %233, 10
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = sdiv i32 %234, %240
  %242 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %243 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %241, %244
  store i32 %245, i32* %14, align 4
  %246 = load i32, i32* %14, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %230
  br label %260

249:                                              ; preds = %230
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i32, i32* %11, align 4
  store i32 %254, i32* %12, align 4
  %255 = load i32, i32* %14, align 4
  store i32 %255, i32* %13, align 4
  br label %256

256:                                              ; preds = %253, %249
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %225

260:                                              ; preds = %248, %225
  %261 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %262 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = mul nsw i32 %263, 10
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %266 = load i32, i32* %12, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = sdiv i32 %264, %270
  %272 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %273 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %275 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %284 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %276, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %282, i32 %285)
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bclk_divs, align 8
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %16, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %16, align 4
  %295 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %296 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %299 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %302 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sdiv i32 %300, %303
  %305 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %297, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %304)
  %306 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %307 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %310 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sdiv i32 %308, %311
  %313 = load i32, i32* %17, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %17, align 4
  %315 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %316 = load i32, i32* @WM8904_DAC_DIGITAL_1, align 4
  %317 = load i32, i32* @WM8904_DAC_SB_FILT, align 4
  %318 = load i32, i32* %19, align 4
  %319 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %315, i32 %316, i32 %317, i32 %318)
  %320 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %321 = load i32, i32* @WM8904_AUDIO_INTERFACE_1, align 4
  %322 = load i32, i32* @WM8904_AIF_WL_MASK, align 4
  %323 = load i32, i32* %15, align 4
  %324 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %320, i32 %321, i32 %322, i32 %323)
  %325 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %326 = load i32, i32* @WM8904_AUDIO_INTERFACE_2, align 4
  %327 = load i32, i32* @WM8904_BCLK_DIV_MASK, align 4
  %328 = load i32, i32* %16, align 4
  %329 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %325, i32 %326, i32 %327, i32 %328)
  %330 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %331 = load i32, i32* @WM8904_AUDIO_INTERFACE_3, align 4
  %332 = load i32, i32* @WM8904_LRCLK_RATE_MASK, align 4
  %333 = load i32, i32* %17, align 4
  %334 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %330, i32 %331, i32 %332, i32 %333)
  %335 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %336 = load i32, i32* @WM8904_CLOCK_RATES_1, align 4
  %337 = load i32, i32* @WM8904_SAMPLE_RATE_MASK, align 4
  %338 = load i32, i32* @WM8904_CLK_SYS_RATE_MASK, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* %18, align 4
  %341 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %335, i32 %336, i32 %339, i32 %340)
  %342 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %343 = call i32 @wm8904_set_retune_mobile(%struct.snd_soc_component* %342)
  %344 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %345 = call i32 @wm8904_set_deemph(%struct.snd_soc_component* %344)
  store i32 0, i32* %4, align 4
  br label %346

346:                                              ; preds = %260, %90, %75
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_calc_bclk(i32, i32, i32, i64) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm8904_configure_clocking(%struct.snd_soc_component*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm8904_set_retune_mobile(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8904_set_deemph(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
