; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98927_priv = type { i32, i32, i32, i64, %struct.snd_soc_component* }

@MAX98927_R0100_SOFT_RESET = common dso_local global i32 0, align 4
@MAX98927_SOFT_RESET = common dso_local global i32 0, align 4
@MAX98927_R001C_PCM_TX_HIZ_CTRL_A = common dso_local global i32 0, align 4
@MAX98927_R001D_PCM_TX_HIZ_CTRL_B = common dso_local global i32 0, align 4
@MAX98927_R0025_PCM_TO_SPK_MONOMIX_A = common dso_local global i32 0, align 4
@MAX98927_R0026_PCM_TO_SPK_MONOMIX_B = common dso_local global i32 0, align 4
@MAX98927_R0036_AMP_VOL_CTRL = common dso_local global i32 0, align 4
@MAX98927_R003C_SPK_GAIN = common dso_local global i32 0, align 4
@MAX98927_R0037_AMP_DSP_CFG = common dso_local global i32 0, align 4
@MAX98927_R003F_MEAS_DSP_CFG = common dso_local global i32 0, align 4
@MAX98927_R0040_BOOST_CTRL0 = common dso_local global i32 0, align 4
@MAX98927_R0042_BOOST_CTRL1 = common dso_local global i32 0, align 4
@MAX98927_R0043_MEAS_ADC_CFG = common dso_local global i32 0, align 4
@MAX98927_R0044_MEAS_ADC_BASE_MSB = common dso_local global i32 0, align 4
@MAX98927_R0045_MEAS_ADC_BASE_LSB = common dso_local global i32 0, align 4
@MAX98927_R007F_BROWNOUT_LVL4_AMP1_CTRL1 = common dso_local global i32 0, align 4
@MAX98927_R0082_ENV_TRACK_VOUT_HEADROOM = common dso_local global i32 0, align 4
@MAX98927_R0086_ENV_TRACK_CTRL = common dso_local global i32 0, align 4
@MAX98927_R0087_ENV_TRACK_BOOST_VOUT_READ = common dso_local global i32 0, align 4
@MAX98927_R001E_PCM_TX_CH_SRC_A = common dso_local global i32 0, align 4
@MAX98927_PCM_TX_CH_SRC_A_I_SHIFT = common dso_local global i32 0, align 4
@MAX98927_R001A_PCM_TX_EN_A = common dso_local global i32 0, align 4
@MAX98927_R001B_PCM_TX_EN_B = common dso_local global i32 0, align 4
@MAX98927_R001F_PCM_TX_CH_SRC_B = common dso_local global i32 0, align 4
@MAX98927_PCM_TX_CH_INTERLEAVE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98927_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98927_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98927_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.max98927_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.max98927_priv* %5, %struct.max98927_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %8 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %7, i32 0, i32 4
  store %struct.snd_soc_component* %6, %struct.snd_soc_component** %8, align 8
  %9 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %10 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX98927_R0100_SOFT_RESET, align 4
  %13 = load i32, i32* @MAX98927_SOFT_RESET, align 4
  %14 = call i32 @regmap_write(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %16 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MAX98927_R001C_PCM_TX_HIZ_CTRL_A, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 255)
  %20 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %21 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAX98927_R001D_PCM_TX_HIZ_CTRL_B, align 4
  %24 = call i32 @regmap_write(i32 %22, i32 %23, i32 255)
  %25 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %26 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX98927_R0025_PCM_TO_SPK_MONOMIX_A, align 4
  %29 = call i32 @regmap_write(i32 %27, i32 %28, i32 128)
  %30 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %31 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MAX98927_R0026_PCM_TO_SPK_MONOMIX_B, align 4
  %34 = call i32 @regmap_write(i32 %32, i32 %33, i32 1)
  %35 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %36 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAX98927_R0036_AMP_VOL_CTRL, align 4
  %39 = call i32 @regmap_write(i32 %37, i32 %38, i32 56)
  %40 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %41 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MAX98927_R003C_SPK_GAIN, align 4
  %44 = call i32 @regmap_write(i32 %42, i32 %43, i32 5)
  %45 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %46 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MAX98927_R0037_AMP_DSP_CFG, align 4
  %49 = call i32 @regmap_write(i32 %47, i32 %48, i32 3)
  %50 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %51 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MAX98927_R003F_MEAS_DSP_CFG, align 4
  %54 = call i32 @regmap_write(i32 %52, i32 %53, i32 247)
  %55 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %56 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MAX98927_R0040_BOOST_CTRL0, align 4
  %59 = call i32 @regmap_write(i32 %57, i32 %58, i32 28)
  %60 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %61 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MAX98927_R0042_BOOST_CTRL1, align 4
  %64 = call i32 @regmap_write(i32 %62, i32 %63, i32 62)
  %65 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %66 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MAX98927_R0043_MEAS_ADC_CFG, align 4
  %69 = call i32 @regmap_write(i32 %67, i32 %68, i32 4)
  %70 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %71 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MAX98927_R0044_MEAS_ADC_BASE_MSB, align 4
  %74 = call i32 @regmap_write(i32 %72, i32 %73, i32 0)
  %75 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %76 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MAX98927_R0045_MEAS_ADC_BASE_LSB, align 4
  %79 = call i32 @regmap_write(i32 %77, i32 %78, i32 36)
  %80 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %81 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MAX98927_R007F_BROWNOUT_LVL4_AMP1_CTRL1, align 4
  %84 = call i32 @regmap_write(i32 %82, i32 %83, i32 6)
  %85 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %86 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MAX98927_R0082_ENV_TRACK_VOUT_HEADROOM, align 4
  %89 = call i32 @regmap_write(i32 %87, i32 %88, i32 8)
  %90 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %91 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MAX98927_R0086_ENV_TRACK_CTRL, align 4
  %94 = call i32 @regmap_write(i32 %92, i32 %93, i32 1)
  %95 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %96 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MAX98927_R0087_ENV_TRACK_BOOST_VOUT_READ, align 4
  %99 = call i32 @regmap_write(i32 %97, i32 %98, i32 16)
  %100 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %101 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MAX98927_R001E_PCM_TX_CH_SRC_A, align 4
  %104 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %105 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MAX98927_PCM_TX_CH_SRC_A_I_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %110 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %108, %111
  %113 = and i32 %112, 255
  %114 = call i32 @regmap_write(i32 %102, i32 %103, i32 %113)
  %115 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %116 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 8
  br i1 %118, label %119, label %142

119:                                              ; preds = %1
  %120 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %121 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MAX98927_R001C_PCM_TX_HIZ_CTRL_A, align 4
  %124 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %125 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 1, %126
  %128 = call i32 @regmap_update_bits(i32 %122, i32 %123, i32 %127, i32 0)
  %129 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %130 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MAX98927_R001A_PCM_TX_EN_A, align 4
  %133 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %134 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 1, %135
  %137 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %138 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 1, %139
  %141 = call i32 @regmap_update_bits(i32 %131, i32 %132, i32 %136, i32 %140)
  br label %168

142:                                              ; preds = %1
  %143 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %144 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @MAX98927_R001D_PCM_TX_HIZ_CTRL_B, align 4
  %147 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %148 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 8
  %151 = shl i32 1, %150
  %152 = call i32 @regmap_update_bits(i32 %145, i32 %146, i32 %151, i32 0)
  %153 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %154 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @MAX98927_R001B_PCM_TX_EN_B, align 4
  %157 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %158 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, 8
  %161 = shl i32 1, %160
  %162 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %163 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, 8
  %166 = shl i32 1, %165
  %167 = call i32 @regmap_update_bits(i32 %155, i32 %156, i32 %161, i32 %166)
  br label %168

168:                                              ; preds = %142, %119
  %169 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %170 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %171, 8
  br i1 %172, label %173, label %196

173:                                              ; preds = %168
  %174 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %175 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @MAX98927_R001C_PCM_TX_HIZ_CTRL_A, align 4
  %178 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %179 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = shl i32 1, %180
  %182 = call i32 @regmap_update_bits(i32 %176, i32 %177, i32 %181, i32 0)
  %183 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %184 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MAX98927_R001A_PCM_TX_EN_A, align 4
  %187 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %188 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = shl i32 1, %189
  %191 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %192 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = shl i32 1, %193
  %195 = call i32 @regmap_update_bits(i32 %185, i32 %186, i32 %190, i32 %194)
  br label %222

196:                                              ; preds = %168
  %197 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %198 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @MAX98927_R001D_PCM_TX_HIZ_CTRL_B, align 4
  %201 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %202 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %203, 8
  %205 = shl i32 1, %204
  %206 = call i32 @regmap_update_bits(i32 %199, i32 %200, i32 %205, i32 0)
  %207 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %208 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @MAX98927_R001B_PCM_TX_EN_B, align 4
  %211 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %212 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, 8
  %215 = shl i32 1, %214
  %216 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %217 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %218, 8
  %220 = shl i32 1, %219
  %221 = call i32 @regmap_update_bits(i32 %209, i32 %210, i32 %215, i32 %220)
  br label %222

222:                                              ; preds = %196, %173
  %223 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %224 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %222
  %228 = load %struct.max98927_priv*, %struct.max98927_priv** %3, align 8
  %229 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @MAX98927_R001F_PCM_TX_CH_SRC_B, align 4
  %232 = load i32, i32* @MAX98927_PCM_TX_CH_INTERLEAVE_MASK, align 4
  %233 = load i32, i32* @MAX98927_PCM_TX_CH_INTERLEAVE_MASK, align 4
  %234 = call i32 @regmap_update_bits(i32 %230, i32 %231, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %227, %222
  ret i32 0
}

declare dso_local %struct.max98927_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
