; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_set_sp_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_set_sp_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.cs43130_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cs43130_clk_gen = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS43130_SP_FSD_MASK = common dso_local global i32 0, align 4
@CS43130_SP_STP_SHIFT = common dso_local global i32 0, align 4
@CS43130_SP_STP_MASK = common dso_local global i32 0, align 4
@CS43130_SP_LCPOL_IN_MASK = common dso_local global i32 0, align 4
@CS43130_SP_LCPOL_OUT_SHIFT = common dso_local global i32 0, align 4
@CS43130_SP_LCPOL_OUT_MASK = common dso_local global i32 0, align 4
@CS43130_SP_SCPOL_IN_SHIFT = common dso_local global i32 0, align 4
@CS43130_SP_SCPOL_IN_MASK = common dso_local global i32 0, align 4
@CS43130_SP_SCPOL_OUT_SHIFT = common dso_local global i32 0, align 4
@CS43130_SP_SCPOL_OUT_MASK = common dso_local global i32 0, align 4
@CS43130_SP_MODE_SHIFT = common dso_local global i32 0, align 4
@CS43130_SP_MODE_MASK = common dso_local global i32 0, align 4
@CS43130_ASP_LRCK_PERIOD_1 = common dso_local global i32 0, align 4
@CS43130_SP_LCPR_DATA_MASK = common dso_local global i32 0, align 4
@CS43130_SP_LCPR_LSB_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_ASP_LRCK_PERIOD_2 = common dso_local global i32 0, align 4
@CS43130_SP_LCPR_MSB_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_ASP_LRCK_HI_TIME_1 = common dso_local global i32 0, align 4
@CS43130_SP_LCHI_DATA_MASK = common dso_local global i32 0, align 4
@CS43130_SP_LCHI_LSB_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_ASP_LRCK_HI_TIME_2 = common dso_local global i32 0, align 4
@CS43130_SP_LCHI_MSB_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_ASP_FRAME_CONF = common dso_local global i32 0, align 4
@CS43130_ASP_CH_1_LOC = common dso_local global i32 0, align 4
@CS43130_ASP_CH_2_LOC = common dso_local global i32 0, align 4
@CS43130_ASP_CH_1_SZ_EN = common dso_local global i32 0, align 4
@CS43130_CH_EN_MASK = common dso_local global i32 0, align 4
@CS43130_CH_EN_SHIFT = common dso_local global i32 0, align 4
@CS43130_ASP_CH_2_SZ_EN = common dso_local global i32 0, align 4
@CS43130_ASP_CLOCK_CONF = common dso_local global i32 0, align 4
@CS43130_XSP_LRCK_PERIOD_1 = common dso_local global i32 0, align 4
@CS43130_XSP_LRCK_PERIOD_2 = common dso_local global i32 0, align 4
@CS43130_XSP_LRCK_HI_TIME_1 = common dso_local global i32 0, align 4
@CS43130_XSP_LRCK_HI_TIME_2 = common dso_local global i32 0, align 4
@CS43130_XSP_FRAME_CONF = common dso_local global i32 0, align 4
@CS43130_XSP_CH_1_LOC = common dso_local global i32 0, align 4
@CS43130_XSP_CH_2_LOC = common dso_local global i32 0, align 4
@CS43130_XSP_CH_1_SZ_EN = common dso_local global i32 0, align 4
@CS43130_XSP_CH_2_SZ_EN = common dso_local global i32 0, align 4
@CS43130_XSP_CLOCK_CONF = common dso_local global i32 0, align 4
@cs43130_16_clk_gen = common dso_local global i32 0, align 4
@cs43130_32_clk_gen = common dso_local global i32 0, align 4
@cs43130_48_clk_gen = common dso_local global i32 0, align 4
@cs43130_64_clk_gen = common dso_local global i32 0, align 4
@CS43130_ASP_DEN_1 = common dso_local global i32 0, align 4
@CS43130_SP_M_LSB_DATA_MASK = common dso_local global i32 0, align 4
@CS43130_SP_M_LSB_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_ASP_DEN_2 = common dso_local global i32 0, align 4
@CS43130_SP_M_MSB_DATA_MASK = common dso_local global i32 0, align 4
@CS43130_SP_M_MSB_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_ASP_NUM_1 = common dso_local global i32 0, align 4
@CS43130_SP_N_LSB_DATA_MASK = common dso_local global i32 0, align 4
@CS43130_SP_N_LSB_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_ASP_NUM_2 = common dso_local global i32 0, align 4
@CS43130_SP_N_MSB_DATA_MASK = common dso_local global i32 0, align 4
@CS43130_SP_N_MSB_DATA_SHIFT = common dso_local global i32 0, align 4
@CS43130_XSP_DEN_1 = common dso_local global i32 0, align 4
@CS43130_XSP_DEN_2 = common dso_local global i32 0, align 4
@CS43130_XSP_NUM_1 = common dso_local global i32 0, align 4
@CS43130_XSP_NUM_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.snd_pcm_hw_params*, %struct.cs43130_private*)* @cs43130_set_sp_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_set_sp_fmt(i32 %0, i32 %1, %struct.snd_pcm_hw_params* %2, %struct.cs43130_private* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_hw_params*, align 8
  %9 = alloca %struct.cs43130_private*, align 8
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
  %21 = alloca %struct.cs43130_clk_gen*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %8, align 8
  store %struct.cs43130_private* %3, %struct.cs43130_private** %9, align 8
  %22 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %23 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %36 [
    i32 129, label %30
    i32 128, label %32
    i32 131, label %34
    i32 130, label %35
  ]

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %39

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %39

34:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %39

35:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %425

39:                                               ; preds = %35, %34, %32, %30
  %40 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %41 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %50 [
    i32 132, label %48
    i32 133, label %49
  ]

48:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  br label %53

49:                                               ; preds = %39
  store i32 1, i32* %20, align 4
  br label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %425

53:                                               ; preds = %49, %48
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %56 = call i32 @params_channels(%struct.snd_pcm_hw_params* %55)
  %57 = mul i32 %54, %56
  store i32 %57, i32* %10, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %60 = call i32 @params_channels(%struct.snd_pcm_hw_params* %59)
  %61 = sub nsw i32 %60, 1
  %62 = mul i32 %58, %61
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @CS43130_SP_FSD_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @CS43130_SP_STP_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @CS43130_SP_STP_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @CS43130_SP_LCPOL_IN_MASK, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @CS43130_SP_LCPOL_OUT_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* @CS43130_SP_LCPOL_OUT_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %17, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @CS43130_SP_SCPOL_IN_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* @CS43130_SP_SCPOL_IN_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %17, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @CS43130_SP_SCPOL_OUT_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* @CS43130_SP_SCPOL_OUT_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %17, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* @CS43130_SP_MODE_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* @CS43130_SP_MODE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %17, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %6, align 4
  switch i32 %104, label %267 [
    i32 135, label %105
    i32 136, label %105
    i32 134, label %186
  ]

105:                                              ; preds = %53, %53
  %106 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %107 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CS43130_ASP_LRCK_PERIOD_1, align 4
  %110 = load i32, i32* @CS43130_SP_LCPR_DATA_MASK, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* @CS43130_SP_LCPR_LSB_DATA_SHIFT, align 4
  %114 = ashr i32 %112, %113
  %115 = call i32 @regmap_update_bits(i32 %108, i32 %109, i32 %110, i32 %114)
  %116 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %117 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CS43130_ASP_LRCK_PERIOD_2, align 4
  %120 = load i32, i32* @CS43130_SP_LCPR_DATA_MASK, align 4
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* @CS43130_SP_LCPR_MSB_DATA_SHIFT, align 4
  %124 = ashr i32 %122, %123
  %125 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %120, i32 %124)
  %126 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %127 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CS43130_ASP_LRCK_HI_TIME_1, align 4
  %130 = load i32, i32* @CS43130_SP_LCHI_DATA_MASK, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* @CS43130_SP_LCHI_LSB_DATA_SHIFT, align 4
  %134 = ashr i32 %132, %133
  %135 = call i32 @regmap_update_bits(i32 %128, i32 %129, i32 %130, i32 %134)
  %136 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %137 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CS43130_ASP_LRCK_HI_TIME_2, align 4
  %140 = load i32, i32* @CS43130_SP_LCHI_DATA_MASK, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %141, 1
  %143 = load i32, i32* @CS43130_SP_LCHI_MSB_DATA_SHIFT, align 4
  %144 = ashr i32 %142, %143
  %145 = call i32 @regmap_update_bits(i32 %138, i32 %139, i32 %140, i32 %144)
  %146 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %147 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CS43130_ASP_FRAME_CONF, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @regmap_write(i32 %148, i32 %149, i32 %150)
  %152 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %153 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @CS43130_ASP_CH_1_LOC, align 4
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @regmap_write(i32 %154, i32 %155, i32 %156)
  %158 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %159 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CS43130_ASP_CH_2_LOC, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @regmap_write(i32 %160, i32 %161, i32 %162)
  %164 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %165 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @CS43130_ASP_CH_1_SZ_EN, align 4
  %168 = load i32, i32* @CS43130_CH_EN_MASK, align 4
  %169 = load i32, i32* @CS43130_CH_EN_SHIFT, align 4
  %170 = shl i32 1, %169
  %171 = call i32 @regmap_update_bits(i32 %166, i32 %167, i32 %168, i32 %170)
  %172 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %173 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @CS43130_ASP_CH_2_SZ_EN, align 4
  %176 = load i32, i32* @CS43130_CH_EN_MASK, align 4
  %177 = load i32, i32* @CS43130_CH_EN_SHIFT, align 4
  %178 = shl i32 1, %177
  %179 = call i32 @regmap_update_bits(i32 %174, i32 %175, i32 %176, i32 %178)
  %180 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %181 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @CS43130_ASP_CLOCK_CONF, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @regmap_write(i32 %182, i32 %183, i32 %184)
  br label %270

186:                                              ; preds = %53
  %187 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %188 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @CS43130_XSP_LRCK_PERIOD_1, align 4
  %191 = load i32, i32* @CS43130_SP_LCPR_DATA_MASK, align 4
  %192 = load i32, i32* %10, align 4
  %193 = sub nsw i32 %192, 1
  %194 = load i32, i32* @CS43130_SP_LCPR_LSB_DATA_SHIFT, align 4
  %195 = ashr i32 %193, %194
  %196 = call i32 @regmap_update_bits(i32 %189, i32 %190, i32 %191, i32 %195)
  %197 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %198 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @CS43130_XSP_LRCK_PERIOD_2, align 4
  %201 = load i32, i32* @CS43130_SP_LCPR_DATA_MASK, align 4
  %202 = load i32, i32* %10, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load i32, i32* @CS43130_SP_LCPR_MSB_DATA_SHIFT, align 4
  %205 = ashr i32 %203, %204
  %206 = call i32 @regmap_update_bits(i32 %199, i32 %200, i32 %201, i32 %205)
  %207 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %208 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @CS43130_XSP_LRCK_HI_TIME_1, align 4
  %211 = load i32, i32* @CS43130_SP_LCHI_DATA_MASK, align 4
  %212 = load i32, i32* %11, align 4
  %213 = sub nsw i32 %212, 1
  %214 = load i32, i32* @CS43130_SP_LCHI_LSB_DATA_SHIFT, align 4
  %215 = ashr i32 %213, %214
  %216 = call i32 @regmap_update_bits(i32 %209, i32 %210, i32 %211, i32 %215)
  %217 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %218 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @CS43130_XSP_LRCK_HI_TIME_2, align 4
  %221 = load i32, i32* @CS43130_SP_LCHI_DATA_MASK, align 4
  %222 = load i32, i32* %11, align 4
  %223 = sub nsw i32 %222, 1
  %224 = load i32, i32* @CS43130_SP_LCHI_MSB_DATA_SHIFT, align 4
  %225 = ashr i32 %223, %224
  %226 = call i32 @regmap_update_bits(i32 %219, i32 %220, i32 %221, i32 %225)
  %227 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %228 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @CS43130_XSP_FRAME_CONF, align 4
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @regmap_write(i32 %229, i32 %230, i32 %231)
  %233 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %234 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @CS43130_XSP_CH_1_LOC, align 4
  %237 = load i32, i32* %18, align 4
  %238 = call i32 @regmap_write(i32 %235, i32 %236, i32 %237)
  %239 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %240 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @CS43130_XSP_CH_2_LOC, align 4
  %243 = load i32, i32* %19, align 4
  %244 = call i32 @regmap_write(i32 %241, i32 %242, i32 %243)
  %245 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %246 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @CS43130_XSP_CH_1_SZ_EN, align 4
  %249 = load i32, i32* @CS43130_CH_EN_MASK, align 4
  %250 = load i32, i32* @CS43130_CH_EN_SHIFT, align 4
  %251 = shl i32 1, %250
  %252 = call i32 @regmap_update_bits(i32 %247, i32 %248, i32 %249, i32 %251)
  %253 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %254 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @CS43130_XSP_CH_2_SZ_EN, align 4
  %257 = load i32, i32* @CS43130_CH_EN_MASK, align 4
  %258 = load i32, i32* @CS43130_CH_EN_SHIFT, align 4
  %259 = shl i32 1, %258
  %260 = call i32 @regmap_update_bits(i32 %255, i32 %256, i32 %257, i32 %259)
  %261 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %262 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @CS43130_XSP_CLOCK_CONF, align 4
  %265 = load i32, i32* %17, align 4
  %266 = call i32 @regmap_write(i32 %263, i32 %264, i32 %265)
  br label %270

267:                                              ; preds = %53
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %5, align 4
  br label %425

270:                                              ; preds = %186, %105
  %271 = load i32, i32* %10, align 4
  switch i32 %271, label %312 [
    i32 16, label %272
    i32 32, label %282
    i32 48, label %292
    i32 64, label %302
  ]

272:                                              ; preds = %270
  %273 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %274 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %277 = call i32 @params_rate(%struct.snd_pcm_hw_params* %276)
  %278 = load i32, i32* @cs43130_16_clk_gen, align 4
  %279 = load i32, i32* @cs43130_16_clk_gen, align 4
  %280 = call i32 @ARRAY_SIZE(i32 %279)
  %281 = call %struct.cs43130_clk_gen* @cs43130_get_clk_gen(i32 %275, i32 %277, i32 %278, i32 %280)
  store %struct.cs43130_clk_gen* %281, %struct.cs43130_clk_gen** %21, align 8
  br label %315

282:                                              ; preds = %270
  %283 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %284 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %287 = call i32 @params_rate(%struct.snd_pcm_hw_params* %286)
  %288 = load i32, i32* @cs43130_32_clk_gen, align 4
  %289 = load i32, i32* @cs43130_32_clk_gen, align 4
  %290 = call i32 @ARRAY_SIZE(i32 %289)
  %291 = call %struct.cs43130_clk_gen* @cs43130_get_clk_gen(i32 %285, i32 %287, i32 %288, i32 %290)
  store %struct.cs43130_clk_gen* %291, %struct.cs43130_clk_gen** %21, align 8
  br label %315

292:                                              ; preds = %270
  %293 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %294 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %297 = call i32 @params_rate(%struct.snd_pcm_hw_params* %296)
  %298 = load i32, i32* @cs43130_48_clk_gen, align 4
  %299 = load i32, i32* @cs43130_48_clk_gen, align 4
  %300 = call i32 @ARRAY_SIZE(i32 %299)
  %301 = call %struct.cs43130_clk_gen* @cs43130_get_clk_gen(i32 %295, i32 %297, i32 %298, i32 %300)
  store %struct.cs43130_clk_gen* %301, %struct.cs43130_clk_gen** %21, align 8
  br label %315

302:                                              ; preds = %270
  %303 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %304 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %307 = call i32 @params_rate(%struct.snd_pcm_hw_params* %306)
  %308 = load i32, i32* @cs43130_64_clk_gen, align 4
  %309 = load i32, i32* @cs43130_64_clk_gen, align 4
  %310 = call i32 @ARRAY_SIZE(i32 %309)
  %311 = call %struct.cs43130_clk_gen* @cs43130_get_clk_gen(i32 %305, i32 %307, i32 %308, i32 %310)
  store %struct.cs43130_clk_gen* %311, %struct.cs43130_clk_gen** %21, align 8
  br label %315

312:                                              ; preds = %270
  %313 = load i32, i32* @EINVAL, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %5, align 4
  br label %425

315:                                              ; preds = %302, %292, %282, %272
  %316 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %317 = icmp ne %struct.cs43130_clk_gen* %316, null
  br i1 %317, label %321, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* @EINVAL, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %5, align 4
  br label %425

321:                                              ; preds = %315
  %322 = load i32, i32* %6, align 4
  switch i32 %322, label %421 [
    i32 135, label %323
    i32 136, label %323
    i32 134, label %372
  ]

323:                                              ; preds = %321, %321
  %324 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %325 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @CS43130_ASP_DEN_1, align 4
  %328 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %329 = getelementptr inbounds %struct.cs43130_clk_gen, %struct.cs43130_clk_gen* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @CS43130_SP_M_LSB_DATA_MASK, align 4
  %332 = and i32 %330, %331
  %333 = load i32, i32* @CS43130_SP_M_LSB_DATA_SHIFT, align 4
  %334 = ashr i32 %332, %333
  %335 = call i32 @regmap_write(i32 %326, i32 %327, i32 %334)
  %336 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %337 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @CS43130_ASP_DEN_2, align 4
  %340 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %341 = getelementptr inbounds %struct.cs43130_clk_gen, %struct.cs43130_clk_gen* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @CS43130_SP_M_MSB_DATA_MASK, align 4
  %344 = and i32 %342, %343
  %345 = load i32, i32* @CS43130_SP_M_MSB_DATA_SHIFT, align 4
  %346 = ashr i32 %344, %345
  %347 = call i32 @regmap_write(i32 %338, i32 %339, i32 %346)
  %348 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %349 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @CS43130_ASP_NUM_1, align 4
  %352 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %353 = getelementptr inbounds %struct.cs43130_clk_gen, %struct.cs43130_clk_gen* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @CS43130_SP_N_LSB_DATA_MASK, align 4
  %356 = and i32 %354, %355
  %357 = load i32, i32* @CS43130_SP_N_LSB_DATA_SHIFT, align 4
  %358 = ashr i32 %356, %357
  %359 = call i32 @regmap_write(i32 %350, i32 %351, i32 %358)
  %360 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %361 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @CS43130_ASP_NUM_2, align 4
  %364 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %365 = getelementptr inbounds %struct.cs43130_clk_gen, %struct.cs43130_clk_gen* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @CS43130_SP_N_MSB_DATA_MASK, align 4
  %368 = and i32 %366, %367
  %369 = load i32, i32* @CS43130_SP_N_MSB_DATA_SHIFT, align 4
  %370 = ashr i32 %368, %369
  %371 = call i32 @regmap_write(i32 %362, i32 %363, i32 %370)
  br label %424

372:                                              ; preds = %321
  %373 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %374 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @CS43130_XSP_DEN_1, align 4
  %377 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %378 = getelementptr inbounds %struct.cs43130_clk_gen, %struct.cs43130_clk_gen* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @CS43130_SP_M_LSB_DATA_MASK, align 4
  %381 = and i32 %379, %380
  %382 = load i32, i32* @CS43130_SP_M_LSB_DATA_SHIFT, align 4
  %383 = ashr i32 %381, %382
  %384 = call i32 @regmap_write(i32 %375, i32 %376, i32 %383)
  %385 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %386 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* @CS43130_XSP_DEN_2, align 4
  %389 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %390 = getelementptr inbounds %struct.cs43130_clk_gen, %struct.cs43130_clk_gen* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @CS43130_SP_M_MSB_DATA_MASK, align 4
  %393 = and i32 %391, %392
  %394 = load i32, i32* @CS43130_SP_M_MSB_DATA_SHIFT, align 4
  %395 = ashr i32 %393, %394
  %396 = call i32 @regmap_write(i32 %387, i32 %388, i32 %395)
  %397 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %398 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @CS43130_XSP_NUM_1, align 4
  %401 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %402 = getelementptr inbounds %struct.cs43130_clk_gen, %struct.cs43130_clk_gen* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @CS43130_SP_N_LSB_DATA_MASK, align 4
  %405 = and i32 %403, %404
  %406 = load i32, i32* @CS43130_SP_N_LSB_DATA_SHIFT, align 4
  %407 = ashr i32 %405, %406
  %408 = call i32 @regmap_write(i32 %399, i32 %400, i32 %407)
  %409 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %410 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @CS43130_XSP_NUM_2, align 4
  %413 = load %struct.cs43130_clk_gen*, %struct.cs43130_clk_gen** %21, align 8
  %414 = getelementptr inbounds %struct.cs43130_clk_gen, %struct.cs43130_clk_gen* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @CS43130_SP_N_MSB_DATA_MASK, align 4
  %417 = and i32 %415, %416
  %418 = load i32, i32* @CS43130_SP_N_MSB_DATA_SHIFT, align 4
  %419 = ashr i32 %417, %418
  %420 = call i32 @regmap_write(i32 %411, i32 %412, i32 %419)
  br label %424

421:                                              ; preds = %321
  %422 = load i32, i32* @EINVAL, align 4
  %423 = sub nsw i32 0, %422
  store i32 %423, i32* %5, align 4
  br label %425

424:                                              ; preds = %372, %323
  store i32 0, i32* %5, align 4
  br label %425

425:                                              ; preds = %424, %421, %318, %312, %267, %50, %36
  %426 = load i32, i32* %5, align 4
  ret i32 %426
}

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local %struct.cs43130_clk_gen* @cs43130_get_clk_gen(i32, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
