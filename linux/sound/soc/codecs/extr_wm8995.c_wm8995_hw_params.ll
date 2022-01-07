; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8995.c_wm8995_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8995_priv = type { i32* }

@WM8995_AIF1_CONTROL_1 = common dso_local global i32 0, align 4
@WM8995_AIF1_BCLK = common dso_local global i32 0, align 4
@WM8995_AIF1_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@WM8995_AIF1DAC_LRCLK = common dso_local global i32 0, align 4
@WM8995_AIF1ADC_LRCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"AIF1 using split LRCLK\0A\00", align 1
@WM8995_AIF2_CONTROL_1 = common dso_local global i32 0, align 4
@WM8995_AIF2_BCLK = common dso_local global i32 0, align 4
@WM8995_AIF2_RATE = common dso_local global i32 0, align 4
@WM8995_AIF2DAC_LRCLK = common dso_local global i32 0, align 4
@WM8995_AIF2ADC_LRCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"AIF2 using split LRCLK\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8995_AIF1_WL_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported word length %u\0A\00", align 1
@srs = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Sample rate %d is not supported\0A\00", align 1
@WM8995_AIF1_SR_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Sample rate is %dHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"AIF%dCLK is %dHz, target BCLK %dHz\0A\00", align 1
@fs_ratios = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Selected AIF%dCLK/fs = %d\0A\00", align 1
@bclk_divs = common dso_local global i32* null, align 8
@WM8995_AIF1_BCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Using BCLK_DIV %d for actual BCLK %dHz\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Using LRCLK rate %d for actual LRCLK %dHz\0A\00", align 1
@WM8995_AIF1_WL_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1DAC_RATE_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1_SR_MASK = common dso_local global i32 0, align 4
@WM8995_AIF1CLK_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8995_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8995_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8995_priv*, align 8
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
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %24, align 8
  store %struct.snd_soc_component* %25, %struct.snd_soc_component** %8, align 8
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = call %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %26)
  store %struct.wm8995_priv* %27, %struct.wm8995_priv** %9, align 8
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %67 [
    i32 0, label %31
    i32 1, label %49
  ]

31:                                               ; preds = %3
  %32 = load i32, i32* @WM8995_AIF1_CONTROL_1, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @WM8995_AIF1_BCLK, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @WM8995_AIF1_RATE, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @WM8995_AIF1DAC_LRCLK, align 4
  store i32 %41, i32* %12, align 4
  br label %48

42:                                               ; preds = %31
  %43 = load i32, i32* @WM8995_AIF1ADC_LRCLK, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %42, %40
  br label %70

49:                                               ; preds = %3
  %50 = load i32, i32* @WM8995_AIF2_CONTROL_1, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @WM8995_AIF2_BCLK, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @WM8995_AIF2_RATE, align 4
  store i32 %52, i32* %13, align 4
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @WM8995_AIF2DAC_LRCLK, align 4
  store i32 %59, i32* %12, align 4
  br label %66

60:                                               ; preds = %49
  %61 = load i32, i32* @WM8995_AIF2ADC_LRCLK, align 4
  store i32 %61, i32* %12, align 4
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %63 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %58
  br label %70

67:                                               ; preds = %3
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %337

70:                                               ; preds = %66, %48
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %72 = call i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %337

77:                                               ; preds = %70
  store i32 0, i32* %15, align 4
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %79 = call i32 @params_width(%struct.snd_pcm_hw_params* %78)
  switch i32 %79, label %96 [
    i32 16, label %80
    i32 20, label %81
    i32 24, label %86
    i32 32, label %91
  ]

80:                                               ; preds = %77
  br label %105

81:                                               ; preds = %77
  %82 = load i32, i32* @WM8995_AIF1_WL_SHIFT, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %15, align 4
  br label %105

86:                                               ; preds = %77
  %87 = load i32, i32* @WM8995_AIF1_WL_SHIFT, align 4
  %88 = shl i32 2, %87
  %89 = load i32, i32* %15, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %105

91:                                               ; preds = %77
  %92 = load i32, i32* @WM8995_AIF1_WL_SHIFT, align 4
  %93 = shl i32 3, %92
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %105

96:                                               ; preds = %77
  %97 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %101 = call i32 @params_width(%struct.snd_pcm_hw_params* %100)
  %102 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %337

105:                                              ; preds = %91, %86, %81, %80
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %122, %105
  %107 = load i32, i32* %18, align 4
  %108 = load i32*, i32** @srs, align 8
  %109 = call i32 @ARRAY_SIZE(i32* %108)
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load i32*, i32** @srs, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %118 = call i32 @params_rate(%struct.snd_pcm_hw_params* %117)
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %125

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %18, align 4
  br label %106

125:                                              ; preds = %120, %106
  %126 = load i32, i32* %18, align 4
  %127 = load i32*, i32** @srs, align 8
  %128 = call i32 @ARRAY_SIZE(i32* %127)
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %132 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %135 = call i32 @params_rate(%struct.snd_pcm_hw_params* %134)
  %136 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %337

139:                                              ; preds = %125
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @WM8995_AIF1_SR_SHIFT, align 4
  %142 = shl i32 %140, %141
  store i32 %142, i32* %19, align 4
  %143 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %144 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @srs, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @dev_dbg(i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  %152 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %153 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %156 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  %159 = load %struct.wm8995_priv*, %struct.wm8995_priv** %9, align 8
  %160 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %163 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 (i32, i8*, ...) @dev_dbg(i32 %154, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %158, i32 %167, i32 %168)
  store i32 1, i32* %20, align 4
  %170 = load i32*, i32** @fs_ratios, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %174 = call i32 @params_rate(%struct.snd_pcm_hw_params* %173)
  %175 = mul nsw i32 %172, %174
  %176 = load %struct.wm8995_priv*, %struct.wm8995_priv** %9, align 8
  %177 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %180 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %175, %184
  %186 = call i32 @abs(i32 %185) #3
  store i32 %186, i32* %21, align 4
  store i32 2, i32* %18, align 4
  br label %187

187:                                              ; preds = %219, %139
  %188 = load i32, i32* %18, align 4
  %189 = load i32*, i32** @fs_ratios, align 8
  %190 = call i32 @ARRAY_SIZE(i32* %189)
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %222

192:                                              ; preds = %187
  %193 = load i32*, i32** @fs_ratios, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %199 = call i32 @params_rate(%struct.snd_pcm_hw_params* %198)
  %200 = mul nsw i32 %197, %199
  %201 = load %struct.wm8995_priv*, %struct.wm8995_priv** %9, align 8
  %202 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %205 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %200, %209
  %211 = call i32 @abs(i32 %210) #3
  store i32 %211, i32* %22, align 4
  %212 = load i32, i32* %22, align 4
  %213 = load i32, i32* %21, align 4
  %214 = icmp sge i32 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %192
  br label %219

216:                                              ; preds = %192
  %217 = load i32, i32* %18, align 4
  store i32 %217, i32* %20, align 4
  %218 = load i32, i32* %22, align 4
  store i32 %218, i32* %21, align 4
  br label %219

219:                                              ; preds = %216, %215
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %18, align 4
  br label %187

222:                                              ; preds = %187
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %19, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %19, align 4
  %226 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %227 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %230 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  %233 = load i32*, i32** @fs_ratios, align 8
  %234 = load i32, i32* %20, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i32, i8*, ...) @dev_dbg(i32 %228, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %232, i32 %237)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %239

239:                                              ; preds = %268, %222
  %240 = load i32, i32* %18, align 4
  %241 = load i32*, i32** @bclk_divs, align 8
  %242 = call i32 @ARRAY_SIZE(i32* %241)
  %243 = icmp slt i32 %240, %242
  br i1 %243, label %244, label %271

244:                                              ; preds = %239
  %245 = load %struct.wm8995_priv*, %struct.wm8995_priv** %9, align 8
  %246 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %249 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = mul nsw i32 %253, 10
  %255 = load i32*, i32** @bclk_divs, align 8
  %256 = load i32, i32* %18, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sdiv i32 %254, %259
  %261 = load i32, i32* %14, align 4
  %262 = sub nsw i32 %260, %261
  store i32 %262, i32* %22, align 4
  %263 = load i32, i32* %22, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %244
  br label %271

266:                                              ; preds = %244
  %267 = load i32, i32* %18, align 4
  store i32 %267, i32* %20, align 4
  br label %268

268:                                              ; preds = %266
  %269 = load i32, i32* %18, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %18, align 4
  br label %239

271:                                              ; preds = %265, %239
  %272 = load i32, i32* %20, align 4
  %273 = load i32, i32* @WM8995_AIF1_BCLK_DIV_SHIFT, align 4
  %274 = shl i32 %272, %273
  %275 = load i32, i32* %17, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %17, align 4
  %277 = load %struct.wm8995_priv*, %struct.wm8995_priv** %9, align 8
  %278 = getelementptr inbounds %struct.wm8995_priv, %struct.wm8995_priv* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %281 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %279, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 %285, 10
  %287 = load i32*, i32** @bclk_divs, align 8
  %288 = load i32, i32* %20, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sdiv i32 %286, %291
  store i32 %292, i32* %14, align 4
  %293 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %294 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** @bclk_divs, align 8
  %297 = load i32, i32* %20, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %14, align 4
  %302 = call i32 (i32, i8*, ...) @dev_dbg(i32 %295, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %300, i32 %301)
  %303 = load i32, i32* %14, align 4
  %304 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %305 = call i32 @params_rate(%struct.snd_pcm_hw_params* %304)
  %306 = sdiv i32 %303, %305
  store i32 %306, i32* %16, align 4
  %307 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %308 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %16, align 4
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* %16, align 4
  %313 = sdiv i32 %311, %312
  %314 = call i32 (i32, i8*, ...) @dev_dbg(i32 %309, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %310, i32 %313)
  %315 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @WM8995_AIF1_WL_MASK, align 4
  %318 = load i32, i32* %15, align 4
  %319 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %315, i32 %316, i32 %317, i32 %318)
  %320 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* @WM8995_AIF1_BCLK_DIV_MASK, align 4
  %323 = load i32, i32* %17, align 4
  %324 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %320, i32 %321, i32 %322, i32 %323)
  %325 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %326 = load i32, i32* %12, align 4
  %327 = load i32, i32* @WM8995_AIF1DAC_RATE_MASK, align 4
  %328 = load i32, i32* %16, align 4
  %329 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %325, i32 %326, i32 %327, i32 %328)
  %330 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* @WM8995_AIF1_SR_MASK, align 4
  %333 = load i32, i32* @WM8995_AIF1CLK_RATE_MASK, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* %19, align 4
  %336 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %330, i32 %331, i32 %334, i32 %335)
  store i32 0, i32* %4, align 4
  br label %337

337:                                              ; preds = %271, %130, %96, %75, %67
  %338 = load i32, i32* %4, align 4
  ret i32 %338
}

declare dso_local %struct.wm8995_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_params_to_bclk(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
