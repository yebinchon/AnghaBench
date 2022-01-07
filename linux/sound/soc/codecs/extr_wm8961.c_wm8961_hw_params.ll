; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8961.c_wm8961_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8961_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"MCLK has not been specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wm8961_srate = common dso_local global %struct.TYPE_4__* null, align 8
@WM8961_ADDITIONAL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8961_SAMPLE_RATE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Selected SRATE %dHz for %dHz\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"SYSCLK must be at least 64*fs for DAC\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"SYSCLK must be at least 256*fs for ADC\0A\00", align 1
@wm8961_clk_sys_ratio = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Unable to generate CLK_SYS_RATE\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Selected CLK_SYS_RATE of %d for %d/%d=%d\0A\00", align 1
@WM8961_CLOCKING_4 = common dso_local global i32 0, align 4
@WM8961_CLK_SYS_RATE_MASK = common dso_local global i32 0, align 4
@WM8961_CLK_SYS_RATE_SHIFT = common dso_local global i32 0, align 4
@WM8961_AUDIO_INTERFACE_0 = common dso_local global i32 0, align 4
@WM8961_WL_MASK = common dso_local global i32 0, align 4
@WM8961_WL_SHIFT = common dso_local global i32 0, align 4
@WM8961_ADC_DAC_CONTROL_2 = common dso_local global i32 0, align 4
@WM8961_DACSLOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8961_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8961_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.wm8961_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.wm8961_priv* %19, %struct.wm8961_priv** %9, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.wm8961_priv*, %struct.wm8961_priv** %9, align 8
  %23 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %260

33:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = call i64 @abs(i64 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = call i64 @abs(i64 %58)
  %60 = icmp slt i64 %49, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %39
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %61, %39
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %34

67:                                               ; preds = %34
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %69 = load i32, i32* @WM8961_ADDITIONAL_CONTROL_3, align 4
  %70 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* @WM8961_SAMPLE_RATE_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %14, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %84 = load i32, i32* @WM8961_ADDITIONAL_CONTROL_3, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %88 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %13, align 4
  %98 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.wm8961_priv*, %struct.wm8961_priv** %9, align 8
  %100 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* %12, align 4
  %104 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %67
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 64
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %114 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %260

119:                                              ; preds = %109, %67
  %120 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 256
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %130 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %260

135:                                              ; preds = %125, %119
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %152, %135
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %139 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %138)
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %136
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %155

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %136

155:                                              ; preds = %150, %136
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %158 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %157)
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %162 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @dev_err(i32 %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %260

167:                                              ; preds = %155
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %169 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.wm8961_priv*, %struct.wm8961_priv** %9, align 8
  %178 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.wm8961_priv*, %struct.wm8961_priv** %9, align 8
  %182 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %13, align 4
  %185 = sdiv i32 %183, %184
  %186 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %170, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %176, i32 %179, i32 %180, i32 %185)
  %187 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %188 = load i32, i32* @WM8961_CLOCKING_4, align 4
  %189 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %187, i32 %188)
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* @WM8961_CLK_SYS_RATE_MASK, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %14, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %14, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @WM8961_CLK_SYS_RATE_SHIFT, align 4
  %201 = shl i32 %199, %200
  %202 = load i32, i32* %14, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %14, align 4
  %204 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %205 = load i32, i32* @WM8961_CLOCKING_4, align 4
  %206 = load i32, i32* %14, align 4
  %207 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %204, i32 %205, i32 %206)
  %208 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %209 = load i32, i32* @WM8961_AUDIO_INTERFACE_0, align 4
  %210 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %208, i32 %209)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* @WM8961_WL_MASK, align 4
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %14, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %14, align 4
  %215 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %216 = call i32 @params_width(%struct.snd_pcm_hw_params* %215)
  switch i32 %216, label %233 [
    i32 16, label %217
    i32 20, label %218
    i32 24, label %223
    i32 32, label %228
  ]

217:                                              ; preds = %167
  br label %236

218:                                              ; preds = %167
  %219 = load i32, i32* @WM8961_WL_SHIFT, align 4
  %220 = shl i32 1, %219
  %221 = load i32, i32* %14, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %14, align 4
  br label %236

223:                                              ; preds = %167
  %224 = load i32, i32* @WM8961_WL_SHIFT, align 4
  %225 = shl i32 2, %224
  %226 = load i32, i32* %14, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %14, align 4
  br label %236

228:                                              ; preds = %167
  %229 = load i32, i32* @WM8961_WL_SHIFT, align 4
  %230 = shl i32 3, %229
  %231 = load i32, i32* %14, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %14, align 4
  br label %236

233:                                              ; preds = %167
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %4, align 4
  br label %260

236:                                              ; preds = %228, %223, %218, %217
  %237 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %238 = load i32, i32* @WM8961_AUDIO_INTERFACE_0, align 4
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %237, i32 %238, i32 %239)
  %241 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %242 = load i32, i32* @WM8961_ADC_DAC_CONTROL_2, align 4
  %243 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %241, i32 %242)
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %13, align 4
  %245 = icmp sle i32 %244, 24000
  br i1 %245, label %246, label %250

246:                                              ; preds = %236
  %247 = load i32, i32* @WM8961_DACSLOPE, align 4
  %248 = load i32, i32* %14, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %14, align 4
  br label %255

250:                                              ; preds = %236
  %251 = load i32, i32* @WM8961_DACSLOPE, align 4
  %252 = xor i32 %251, -1
  %253 = load i32, i32* %14, align 4
  %254 = and i32 %253, %252
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %250, %246
  %256 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %257 = load i32, i32* @WM8961_ADC_DAC_CONTROL_2, align 4
  %258 = load i32, i32* %14, align 4
  %259 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %256, i32 %257, i32 %258)
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %255, %233, %160, %128, %112, %26
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local %struct.wm8961_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
