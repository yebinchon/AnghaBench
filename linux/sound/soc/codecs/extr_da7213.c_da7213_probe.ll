; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7213_priv = type { i32, i32*, %struct.da7213_platform_data* }
%struct.da7213_platform_data = type { i32, i32, i32, i32, i32 }

@DA7213_ALC_CTRL1 = common dso_local global i32 0, align 4
@DA7213_ALC_CALIB_MODE_MAN = common dso_local global i32 0, align 4
@DA7213_PC_COUNT = common dso_local global i32 0, align 4
@DA7213_PC_FREERUN_MASK = common dso_local global i32 0, align 4
@DA7213_AUX_L_CTRL = common dso_local global i32 0, align 4
@DA7213_GAIN_RAMP_EN = common dso_local global i32 0, align 4
@DA7213_AUX_R_CTRL = common dso_local global i32 0, align 4
@DA7213_MIXIN_L_CTRL = common dso_local global i32 0, align 4
@DA7213_MIXIN_R_CTRL = common dso_local global i32 0, align 4
@DA7213_ADC_L_CTRL = common dso_local global i32 0, align 4
@DA7213_ADC_R_CTRL = common dso_local global i32 0, align 4
@DA7213_DAC_L_CTRL = common dso_local global i32 0, align 4
@DA7213_DAC_R_CTRL = common dso_local global i32 0, align 4
@DA7213_HP_L_CTRL = common dso_local global i32 0, align 4
@DA7213_HP_R_CTRL = common dso_local global i32 0, align 4
@DA7213_LINE_CTRL = common dso_local global i32 0, align 4
@DA7213_MIXIN_MIX_EN = common dso_local global i32 0, align 4
@DA7213_MIXOUT_L_CTRL = common dso_local global i32 0, align 4
@DA7213_MIXOUT_MIX_EN = common dso_local global i32 0, align 4
@DA7213_MIXOUT_R_CTRL = common dso_local global i32 0, align 4
@DA7213_HP_AMP_OE = common dso_local global i32 0, align 4
@DA7213_LINE_AMP_OE = common dso_local global i32 0, align 4
@DA7213_MICBIAS1_LEVEL_SHIFT = common dso_local global i32 0, align 4
@DA7213_MICBIAS2_LEVEL_SHIFT = common dso_local global i32 0, align 4
@DA7213_MICBIAS_CTRL = common dso_local global i32 0, align 4
@DA7213_MICBIAS1_LEVEL_MASK = common dso_local global i32 0, align 4
@DA7213_MICBIAS2_LEVEL_MASK = common dso_local global i32 0, align 4
@DA7213_DMIC_DATA_SEL_SHIFT = common dso_local global i32 0, align 4
@DA7213_DMIC_SAMPLEPHASE_SHIFT = common dso_local global i32 0, align 4
@DA7213_DMIC_CLK_RATE_SHIFT = common dso_local global i32 0, align 4
@DA7213_MIC_CONFIG = common dso_local global i32 0, align 4
@DA7213_DMIC_DATA_SEL_MASK = common dso_local global i32 0, align 4
@DA7213_DMIC_SAMPLEPHASE_MASK = common dso_local global i32 0, align 4
@DA7213_DMIC_CLK_RATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @da7213_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7213_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.da7213_priv*, align 8
  %5 = alloca %struct.da7213_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.da7213_priv* %9, %struct.da7213_priv** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = load i32, i32* @DA7213_ALC_CTRL1, align 4
  %12 = load i32, i32* @DA7213_ALC_CALIB_MODE_MAN, align 4
  %13 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %15 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = load i32, i32* @DA7213_PC_COUNT, align 4
  %18 = load i32, i32* @DA7213_PC_FREERUN_MASK, align 4
  %19 = load i32, i32* @DA7213_PC_FREERUN_MASK, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @DA7213_AUX_L_CTRL, align 4
  %23 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %24 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %27 = load i32, i32* @DA7213_AUX_R_CTRL, align 4
  %28 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %29 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i32, i32* @DA7213_MIXIN_L_CTRL, align 4
  %33 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %34 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = load i32, i32* @DA7213_MIXIN_R_CTRL, align 4
  %38 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %39 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @DA7213_ADC_L_CTRL, align 4
  %43 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %44 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @DA7213_ADC_R_CTRL, align 4
  %48 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %49 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = load i32, i32* @DA7213_DAC_L_CTRL, align 4
  %53 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %54 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %57 = load i32, i32* @DA7213_DAC_R_CTRL, align 4
  %58 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %59 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %62 = load i32, i32* @DA7213_HP_L_CTRL, align 4
  %63 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %64 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = load i32, i32* @DA7213_HP_R_CTRL, align 4
  %68 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %69 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %72 = load i32, i32* @DA7213_LINE_CTRL, align 4
  %73 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %74 = load i32, i32* @DA7213_GAIN_RAMP_EN, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %77 = load i32, i32* @DA7213_MIXIN_L_CTRL, align 4
  %78 = load i32, i32* @DA7213_MIXIN_MIX_EN, align 4
  %79 = load i32, i32* @DA7213_MIXIN_MIX_EN, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %82 = load i32, i32* @DA7213_MIXIN_R_CTRL, align 4
  %83 = load i32, i32* @DA7213_MIXIN_MIX_EN, align 4
  %84 = load i32, i32* @DA7213_MIXIN_MIX_EN, align 4
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %87 = load i32, i32* @DA7213_MIXOUT_L_CTRL, align 4
  %88 = load i32, i32* @DA7213_MIXOUT_MIX_EN, align 4
  %89 = load i32, i32* @DA7213_MIXOUT_MIX_EN, align 4
  %90 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %92 = load i32, i32* @DA7213_MIXOUT_R_CTRL, align 4
  %93 = load i32, i32* @DA7213_MIXOUT_MIX_EN, align 4
  %94 = load i32, i32* @DA7213_MIXOUT_MIX_EN, align 4
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %97 = load i32, i32* @DA7213_HP_L_CTRL, align 4
  %98 = load i32, i32* @DA7213_HP_AMP_OE, align 4
  %99 = load i32, i32* @DA7213_HP_AMP_OE, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %102 = load i32, i32* @DA7213_HP_R_CTRL, align 4
  %103 = load i32, i32* @DA7213_HP_AMP_OE, align 4
  %104 = load i32, i32* @DA7213_HP_AMP_OE, align 4
  %105 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %107 = load i32, i32* @DA7213_LINE_CTRL, align 4
  %108 = load i32, i32* @DA7213_LINE_AMP_OE, align 4
  %109 = load i32, i32* @DA7213_LINE_AMP_OE, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %112 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.da7213_platform_data* @dev_get_platdata(i32 %113)
  %115 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %116 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %115, i32 0, i32 2
  store %struct.da7213_platform_data* %114, %struct.da7213_platform_data** %116, align 8
  %117 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %118 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %117, i32 0, i32 2
  %119 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %118, align 8
  %120 = icmp ne %struct.da7213_platform_data* %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %1
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %123 = call %struct.da7213_platform_data* @da7213_fw_to_pdata(%struct.snd_soc_component* %122)
  %124 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %125 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %124, i32 0, i32 2
  store %struct.da7213_platform_data* %123, %struct.da7213_platform_data** %125, align 8
  br label %126

126:                                              ; preds = %121, %1
  %127 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %128 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %127, i32 0, i32 2
  %129 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %128, align 8
  %130 = icmp ne %struct.da7213_platform_data* %129, null
  br i1 %130, label %131, label %211

131:                                              ; preds = %126
  %132 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %133 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %132, i32 0, i32 2
  %134 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %133, align 8
  store %struct.da7213_platform_data* %134, %struct.da7213_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %135 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %136 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  switch i32 %137, label %146 [
    i32 131, label %138
    i32 130, label %138
    i32 129, label %138
    i32 128, label %138
  ]

138:                                              ; preds = %131, %131, %131, %131
  %139 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %140 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DA7213_MICBIAS1_LEVEL_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %131, %138
  %147 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %148 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  switch i32 %149, label %158 [
    i32 131, label %150
    i32 130, label %150
    i32 129, label %150
    i32 128, label %150
  ]

150:                                              ; preds = %146, %146, %146, %146
  %151 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %152 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DA7213_MICBIAS2_LEVEL_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %146, %150
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %160 = load i32, i32* @DA7213_MICBIAS_CTRL, align 4
  %161 = load i32, i32* @DA7213_MICBIAS1_LEVEL_MASK, align 4
  %162 = load i32, i32* @DA7213_MICBIAS2_LEVEL_MASK, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %159, i32 %160, i32 %163, i32 %164)
  %166 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %167 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  switch i32 %168, label %177 [
    i32 135, label %169
    i32 134, label %169
  ]

169:                                              ; preds = %158, %158
  %170 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %171 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @DA7213_DMIC_DATA_SEL_SHIFT, align 4
  %174 = shl i32 %172, %173
  %175 = load i32, i32* %7, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %158, %169
  %178 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %179 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %189 [
    i32 132, label %181
    i32 133, label %181
  ]

181:                                              ; preds = %177, %177
  %182 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %183 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @DA7213_DMIC_SAMPLEPHASE_SHIFT, align 4
  %186 = shl i32 %184, %185
  %187 = load i32, i32* %7, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %177, %181
  %190 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %191 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %201 [
    i32 136, label %193
    i32 137, label %193
  ]

193:                                              ; preds = %189, %189
  %194 = load %struct.da7213_platform_data*, %struct.da7213_platform_data** %5, align 8
  %195 = getelementptr inbounds %struct.da7213_platform_data, %struct.da7213_platform_data* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @DA7213_DMIC_CLK_RATE_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = load i32, i32* %7, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %7, align 4
  br label %201

201:                                              ; preds = %189, %193
  %202 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %203 = load i32, i32* @DA7213_MIC_CONFIG, align 4
  %204 = load i32, i32* @DA7213_DMIC_DATA_SEL_MASK, align 4
  %205 = load i32, i32* @DA7213_DMIC_SAMPLEPHASE_MASK, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @DA7213_DMIC_CLK_RATE_MASK, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %202, i32 %203, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %201, %126
  %212 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %213 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32* @devm_clk_get(i32 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %216 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %217 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %216, i32 0, i32 1
  store i32* %215, i32** %217, align 8
  %218 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %219 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = call i64 @IS_ERR(i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %240

223:                                              ; preds = %211
  %224 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %225 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @PTR_ERR(i32* %226)
  %228 = load i32, i32* @ENOENT, align 4
  %229 = sub nsw i32 0, %228
  %230 = icmp ne i32 %227, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %223
  %232 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %233 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @PTR_ERR(i32* %234)
  store i32 %235, i32* %2, align 4
  br label %241

236:                                              ; preds = %223
  %237 = load %struct.da7213_priv*, %struct.da7213_priv** %4, align 8
  %238 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %237, i32 0, i32 1
  store i32* null, i32** %238, align 8
  br label %239

239:                                              ; preds = %236
  br label %240

240:                                              ; preds = %239, %211
  store i32 0, i32* %2, align 4
  br label %241

241:                                              ; preds = %240, %231
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local %struct.da7213_platform_data* @dev_get_platdata(i32) #1

declare dso_local %struct.da7213_platform_data* @da7213_fw_to_pdata(%struct.snd_soc_component*) #1

declare dso_local i32* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
