; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm512x_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"hw_params %u Hz, %u channels\0A\00", align 1
@PCM512x_ALEN_16 = common dso_local global i32 0, align 4
@PCM512x_ALEN_20 = common dso_local global i32 0, align 4
@PCM512x_ALEN_24 = common dso_local global i32 0, align 4
@PCM512x_ALEN_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Bad frame size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@PCM512x_BCLK_LRCLK_CFG = common dso_local global i32 0, align 4
@PCM512x_BCKP = common dso_local global i32 0, align 4
@PCM512x_BCKO = common dso_local global i32 0, align 4
@PCM512x_LRKO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to enable slave mode: %d\0A\00", align 1
@PCM512x_ERROR_DETECT = common dso_local global i32 0, align 4
@PCM512x_DCAS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to enable clock divider autoset: %d\0A\00", align 1
@PCM512x_RLRK = common dso_local global i32 0, align 4
@PCM512x_RBCK = common dso_local global i32 0, align 4
@PCM512x_I2S_1 = common dso_local global i32 0, align 4
@PCM512x_ALEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to set frame size: %d\0A\00", align 1
@PCM512x_FLEX_A = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to set FLEX_A: %d\0A\00", align 1
@PCM512x_FLEX_B = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to set FLEX_B: %d\0A\00", align 1
@PCM512x_IDFS = common dso_local global i32 0, align 4
@PCM512x_IDBK = common dso_local global i32 0, align 4
@PCM512x_IDSK = common dso_local global i32 0, align 4
@PCM512x_IDCH = common dso_local global i32 0, align 4
@PCM512x_IDCM = common dso_local global i32 0, align 4
@PCM512x_IPLK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to ignore auto-clock failures: %d\0A\00", align 1
@PCM512x_PLL_EN = common dso_local global i32 0, align 4
@PCM512x_PLLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to disable pll: %d\0A\00", align 1
@PCM512x_PLL_REF = common dso_local global i32 0, align 4
@PCM512x_SREF = common dso_local global i32 0, align 4
@PCM512x_SREF_GPIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to set gpio as pllref: %d\0A\00", align 1
@PCM512x_GREF_GPIO1 = common dso_local global i32 0, align 4
@PCM512x_GPIO_PLLIN = common dso_local global i32 0, align 4
@PCM512x_GREF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to set gpio %d as pllin: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Failed to enable pll: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed to enable clock output: %d\0A\00", align 1
@PCM512x_MASTER_MODE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"Failed to enable master mode: %d\0A\00", align 1
@PCM512x_G1OE = common dso_local global i32 0, align 4
@PCM512x_GPIO_EN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to enable gpio %d: %d\0A\00", align 1
@PCM512x_GPIO_OUTPUT_1 = common dso_local global i32 0, align 4
@PCM512x_GxSL = common dso_local global i32 0, align 4
@PCM512x_GxSL_PLLCK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to output pll on %d: %d\0A\00", align 1
@PCM512x_SYNCHRONIZE = common dso_local global i32 0, align 4
@PCM512x_RQSY = common dso_local global i32 0, align 4
@PCM512x_RQSY_HALT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"Failed to halt clocks: %d\0A\00", align 1
@PCM512x_RQSY_RESUME = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to resume clocks: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pcm512x_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.pcm512x_priv*, align 8
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
  %19 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.pcm512x_priv* %19, %struct.pcm512x_priv** %9, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_rate(%struct.snd_pcm_hw_params* %23)
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = call i32 @params_channels(%struct.snd_pcm_hw_params* %25)
  %27 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_width(%struct.snd_pcm_hw_params* %28)
  switch i32 %29, label %38 [
    i32 16, label %30
    i32 20, label %32
    i32 24, label %34
    i32 32, label %36
  ]

30:                                               ; preds = %3
  %31 = load i32, i32* @PCM512x_ALEN_16, align 4
  store i32 %31, i32* %10, align 4
  br label %47

32:                                               ; preds = %3
  %33 = load i32, i32* @PCM512x_ALEN_20, align 4
  store i32 %33, i32* %10, align 4
  br label %47

34:                                               ; preds = %3
  %35 = load i32, i32* @PCM512x_ALEN_24, align 4
  store i32 %35, i32* %10, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load i32, i32* @PCM512x_ALEN_32, align 4
  store i32 %37, i32* %10, align 4
  br label %47

38:                                               ; preds = %3
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i32 @params_width(%struct.snd_pcm_hw_params* %42)
  %44 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %456

47:                                               ; preds = %36, %34, %32, %30
  %48 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %49 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %100 [
    i32 128, label %53
    i32 130, label %90
    i32 129, label %97
  ]

53:                                               ; preds = %47
  %54 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %55 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PCM512x_BCLK_LRCLK_CFG, align 4
  %58 = load i32, i32* @PCM512x_BCKP, align 4
  %59 = load i32, i32* @PCM512x_BCKO, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PCM512x_LRKO, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %62, i32 0)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %53
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %4, align 4
  br label %456

73:                                               ; preds = %53
  %74 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %75 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PCM512x_ERROR_DETECT, align 4
  %78 = load i32, i32* @PCM512x_DCAS, align 4
  %79 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 0)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %4, align 4
  br label %456

89:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %456

90:                                               ; preds = %47
  %91 = load i32, i32* @PCM512x_BCKO, align 4
  %92 = load i32, i32* @PCM512x_LRKO, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* @PCM512x_RLRK, align 4
  %95 = load i32, i32* @PCM512x_RBCK, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %13, align 4
  br label %103

97:                                               ; preds = %47
  %98 = load i32, i32* @PCM512x_BCKO, align 4
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* @PCM512x_RBCK, align 4
  store i32 %99, i32* %13, align 4
  br label %103

100:                                              ; preds = %47
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %456

103:                                              ; preds = %97, %90
  %104 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %105 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PCM512x_I2S_1, align 4
  %108 = load i32, i32* @PCM512x_ALEN, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %103
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %115 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %4, align 4
  br label %456

120:                                              ; preds = %103
  %121 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %122 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %193

125:                                              ; preds = %120
  %126 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %127 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PCM512x_FLEX_A, align 4
  %130 = call i32 @regmap_write(i32 %128, i32 %129, i32 17)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %135 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %4, align 4
  br label %456

140:                                              ; preds = %125
  %141 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %142 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PCM512x_FLEX_B, align 4
  %145 = call i32 @regmap_write(i32 %143, i32 %144, i32 255)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %150 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %4, align 4
  br label %456

155:                                              ; preds = %140
  %156 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %157 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @PCM512x_ERROR_DETECT, align 4
  %160 = load i32, i32* @PCM512x_IDFS, align 4
  %161 = load i32, i32* @PCM512x_IDBK, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @PCM512x_IDSK, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @PCM512x_IDCH, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @PCM512x_IDCM, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @PCM512x_DCAS, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @PCM512x_IPLK, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @PCM512x_IDFS, align 4
  %174 = load i32, i32* @PCM512x_IDBK, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @PCM512x_IDSK, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @PCM512x_IDCH, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @PCM512x_DCAS, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @regmap_update_bits(i32 %158, i32 %159, i32 %172, i32 %181)
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %155
  %186 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %187 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %188, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %14, align 4
  store i32 %191, i32* %4, align 4
  br label %456

192:                                              ; preds = %155
  br label %249

193:                                              ; preds = %120
  %194 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %195 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PCM512x_ERROR_DETECT, align 4
  %198 = load i32, i32* @PCM512x_IDFS, align 4
  %199 = load i32, i32* @PCM512x_IDBK, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @PCM512x_IDSK, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @PCM512x_IDCH, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @PCM512x_IDCM, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @PCM512x_DCAS, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @PCM512x_IPLK, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @PCM512x_IDFS, align 4
  %212 = load i32, i32* @PCM512x_IDBK, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @PCM512x_IDSK, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @PCM512x_IDCH, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @PCM512x_DCAS, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @PCM512x_IPLK, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @regmap_update_bits(i32 %196, i32 %197, i32 %210, i32 %221)
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %193
  %226 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %227 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %14, align 4
  %230 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %228, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %14, align 4
  store i32 %231, i32* %4, align 4
  br label %456

232:                                              ; preds = %193
  %233 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %234 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @PCM512x_PLL_EN, align 4
  %237 = load i32, i32* @PCM512x_PLLE, align 4
  %238 = call i32 @regmap_update_bits(i32 %235, i32 %236, i32 %237, i32 0)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %232
  %242 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %243 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %14, align 4
  %246 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %244, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* %14, align 4
  store i32 %247, i32* %4, align 4
  br label %456

248:                                              ; preds = %232
  br label %249

249:                                              ; preds = %248, %192
  %250 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %251 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %252 = call i32 @pcm512x_set_dividers(%struct.snd_soc_dai* %250, %struct.snd_pcm_hw_params* %251)
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %14, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load i32, i32* %14, align 4
  store i32 %256, i32* %4, align 4
  br label %456

257:                                              ; preds = %249
  %258 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %259 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %323

262:                                              ; preds = %257
  %263 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %264 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @PCM512x_PLL_REF, align 4
  %267 = load i32, i32* @PCM512x_SREF, align 4
  %268 = load i32, i32* @PCM512x_SREF_GPIO, align 4
  %269 = call i32 @regmap_update_bits(i32 %265, i32 %266, i32 %267, i32 %268)
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %262
  %273 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %274 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %14, align 4
  %277 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %275, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* %14, align 4
  store i32 %278, i32* %4, align 4
  br label %456

279:                                              ; preds = %262
  %280 = load i32, i32* @PCM512x_GREF_GPIO1, align 4
  %281 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %282 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %280, %283
  %285 = sub nsw i32 %284, 1
  store i32 %285, i32* %11, align 4
  %286 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %287 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @PCM512x_GPIO_PLLIN, align 4
  %290 = load i32, i32* @PCM512x_GREF, align 4
  %291 = load i32, i32* %11, align 4
  %292 = call i32 @regmap_update_bits(i32 %288, i32 %289, i32 %290, i32 %291)
  store i32 %292, i32* %14, align 4
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %305

295:                                              ; preds = %279
  %296 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %297 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %300 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %14, align 4
  %303 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %298, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %301, i32 %302)
  %304 = load i32, i32* %14, align 4
  store i32 %304, i32* %4, align 4
  br label %456

305:                                              ; preds = %279
  %306 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %307 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @PCM512x_PLL_EN, align 4
  %310 = load i32, i32* @PCM512x_PLLE, align 4
  %311 = load i32, i32* @PCM512x_PLLE, align 4
  %312 = call i32 @regmap_update_bits(i32 %308, i32 %309, i32 %310, i32 %311)
  store i32 %312, i32* %14, align 4
  %313 = load i32, i32* %14, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %305
  %316 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %317 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %14, align 4
  %320 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %318, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* %14, align 4
  store i32 %321, i32* %4, align 4
  br label %456

322:                                              ; preds = %305
  br label %323

323:                                              ; preds = %322, %257
  %324 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %325 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @PCM512x_BCLK_LRCLK_CFG, align 4
  %328 = load i32, i32* @PCM512x_BCKP, align 4
  %329 = load i32, i32* @PCM512x_BCKO, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @PCM512x_LRKO, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* %12, align 4
  %334 = call i32 @regmap_update_bits(i32 %326, i32 %327, i32 %332, i32 %333)
  store i32 %334, i32* %14, align 4
  %335 = load i32, i32* %14, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %323
  %338 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %339 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %14, align 4
  %342 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %340, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %341)
  %343 = load i32, i32* %14, align 4
  store i32 %343, i32* %4, align 4
  br label %456

344:                                              ; preds = %323
  %345 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %346 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @PCM512x_MASTER_MODE, align 4
  %349 = load i32, i32* @PCM512x_RLRK, align 4
  %350 = load i32, i32* @PCM512x_RBCK, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* %13, align 4
  %353 = call i32 @regmap_update_bits(i32 %347, i32 %348, i32 %351, i32 %352)
  store i32 %353, i32* %14, align 4
  %354 = load i32, i32* %14, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %344
  %357 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %358 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %14, align 4
  %361 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %359, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %360)
  %362 = load i32, i32* %14, align 4
  store i32 %362, i32* %4, align 4
  br label %456

363:                                              ; preds = %344
  %364 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %365 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %421

368:                                              ; preds = %363
  %369 = load i32, i32* @PCM512x_G1OE, align 4
  %370 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %371 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = sub nsw i32 %372, 1
  %374 = shl i32 %369, %373
  store i32 %374, i32* %11, align 4
  %375 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %376 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @PCM512x_GPIO_EN, align 4
  %379 = load i32, i32* %11, align 4
  %380 = load i32, i32* %11, align 4
  %381 = call i32 @regmap_update_bits(i32 %377, i32 %378, i32 %379, i32 %380)
  store i32 %381, i32* %14, align 4
  %382 = load i32, i32* %14, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %394

384:                                              ; preds = %368
  %385 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %386 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %389 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %14, align 4
  %392 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %387, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %390, i32 %391)
  %393 = load i32, i32* %14, align 4
  store i32 %393, i32* %4, align 4
  br label %456

394:                                              ; preds = %368
  %395 = load i32, i32* @PCM512x_GPIO_OUTPUT_1, align 4
  %396 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %397 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %395, %398
  %400 = sub nsw i32 %399, 1
  store i32 %400, i32* %11, align 4
  %401 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %402 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* %11, align 4
  %405 = load i32, i32* @PCM512x_GxSL, align 4
  %406 = load i32, i32* @PCM512x_GxSL_PLLCK, align 4
  %407 = call i32 @regmap_update_bits(i32 %403, i32 %404, i32 %405, i32 %406)
  store i32 %407, i32* %14, align 4
  %408 = load i32, i32* %14, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %420

410:                                              ; preds = %394
  %411 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %412 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %14, align 4
  %415 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %416 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %413, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %414, i32 %417)
  %419 = load i32, i32* %14, align 4
  store i32 %419, i32* %4, align 4
  br label %456

420:                                              ; preds = %394
  br label %421

421:                                              ; preds = %420, %363
  %422 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %423 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @PCM512x_SYNCHRONIZE, align 4
  %426 = load i32, i32* @PCM512x_RQSY, align 4
  %427 = load i32, i32* @PCM512x_RQSY_HALT, align 4
  %428 = call i32 @regmap_update_bits(i32 %424, i32 %425, i32 %426, i32 %427)
  store i32 %428, i32* %14, align 4
  %429 = load i32, i32* %14, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %438

431:                                              ; preds = %421
  %432 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %433 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %14, align 4
  %436 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %434, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %435)
  %437 = load i32, i32* %14, align 4
  store i32 %437, i32* %4, align 4
  br label %456

438:                                              ; preds = %421
  %439 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %9, align 8
  %440 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @PCM512x_SYNCHRONIZE, align 4
  %443 = load i32, i32* @PCM512x_RQSY, align 4
  %444 = load i32, i32* @PCM512x_RQSY_RESUME, align 4
  %445 = call i32 @regmap_update_bits(i32 %441, i32 %442, i32 %443, i32 %444)
  store i32 %445, i32* %14, align 4
  %446 = load i32, i32* %14, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %438
  %449 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %450 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* %14, align 4
  %453 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %451, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %452)
  %454 = load i32, i32* %14, align 4
  store i32 %454, i32* %4, align 4
  br label %456

455:                                              ; preds = %438
  store i32 0, i32* %4, align 4
  br label %456

456:                                              ; preds = %455, %448, %431, %410, %384, %356, %337, %315, %295, %272, %255, %241, %225, %185, %148, %133, %113, %100, %89, %82, %66, %38
  %457 = load i32, i32* %4, align 4
  ret i32 %457
}

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @pcm512x_set_dividers(%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
