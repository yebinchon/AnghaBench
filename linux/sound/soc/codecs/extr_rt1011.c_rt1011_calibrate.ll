; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1011_priv = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@RT1011_RESET = common dso_local global i32 0, align 4
@RT1011_SYSTEM_RESET_3 = common dso_local global i32 0, align 4
@RT1011_CLK_2 = common dso_local global i32 0, align 4
@RT1011_PLL_1 = common dso_local global i32 0, align 4
@RT1011_PLL_2 = common dso_local global i32 0, align 4
@RT1011_CLK_DET = common dso_local global i32 0, align 4
@RT1011_ADC_SET_5 = common dso_local global i32 0, align 4
@RT1011_DAC_SET_2 = common dso_local global i32 0, align 4
@RT1011_ADC_SET_1 = common dso_local global i32 0, align 4
@RT1011_ADC_SET_4 = common dso_local global i32 0, align 4
@RT1011_SPK_PRO_DC_DET_1 = common dso_local global i32 0, align 4
@RT1011_SPK_PRO_DC_DET_2 = common dso_local global i32 0, align 4
@RT1011_POWER_1 = common dso_local global i32 0, align 4
@RT1011_POWER_3 = common dso_local global i32 0, align 4
@RT1011_POWER_9 = common dso_local global i32 0, align 4
@RT1011_POWER_2 = common dso_local global i32 0, align 4
@RT1011_A_TEMP_SEN = common dso_local global i32 0, align 4
@RT1011_A_TIMING_1 = common dso_local global i32 0, align 4
@RT1011_BAT_GAIN_1 = common dso_local global i32 0, align 4
@RT1011_DC_CALIB_CLASSD_3 = common dso_local global i32 0, align 4
@RT1011_BOOST_CON_1 = common dso_local global i32 0, align 4
@RT1011_POWER_4 = common dso_local global i32 0, align 4
@RT1011_POWER_6 = common dso_local global i32 0, align 4
@RT1011_MIXER_1 = common dso_local global i32 0, align 4
@RT1011_EFUSE_CONTROL_1 = common dso_local global i32 0, align 4
@RT1011_EFUSE_ADC_OFFSET_18_16 = common dso_local global i32 0, align 4
@RT1011_EFUSE_ADC_OFFSET_15_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ADC offset=0x%x\0A\00", align 1
@RT1011_EFUSE_DAC_OFFSET_G0_20_16 = common dso_local global i32 0, align 4
@RT1011_EFUSE_DAC_OFFSET_G0_15_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Gain0 offset=0x%x\0A\00", align 1
@RT1011_EFUSE_DAC_OFFSET_G1_20_16 = common dso_local global i32 0, align 4
@RT1011_EFUSE_DAC_OFFSET_G1_15_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Gain1 offset=0x%x\0A\00", align 1
@RT1011_CLASS_D_POS = common dso_local global i32 0, align 4
@RT1011_CLASSD_INTERNAL_SET_1 = common dso_local global i32 0, align 4
@RT1011_SPK_TEMP_PROTECT_0 = common dso_local global i32 0, align 4
@RT1011_SPK_TEMP_PROTECT_7 = common dso_local global i32 0, align 4
@RT1011_SPK_TEMP_PROTECT_4 = common dso_local global i32 0, align 4
@RT1011_SPK_TEMP_PROTECT_6 = common dso_local global i32 0, align 4
@RT1011_INIT_RECIPROCAL_SYN_24_16 = common dso_local global i32 0, align 4
@RT1011_INIT_RECIPROCAL_SYN_15_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Calibrate R0 Failure\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"r0 resistance about %d.%02d ohm, reg=0x%X\0A\00", align 1
@RT1011_DAC_SET_3 = common dso_local global i32 0, align 4
@RT1011_INIT_RECIPROCAL_REG_24_16 = common dso_local global i32 0, align 4
@RT1011_INIT_RECIPROCAL_REG_15_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt1011_priv*, i8)* @rt1011_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_calibrate(%struct.rt1011_priv* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.rt1011_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.snd_soc_dapm_context*, align 8
  %15 = alloca i32, align 4
  store %struct.rt1011_priv* %0, %struct.rt1011_priv** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %6, align 4
  store i32 50, i32* %8, align 4
  %16 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.device* @regmap_get_device(i32 %18)
  store %struct.device* %19, %struct.device** %13, align 8
  %20 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32 %22)
  store %struct.snd_soc_dapm_context* %23, %struct.snd_soc_dapm_context** %14, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %14, align 8
  %25 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %24)
  %26 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regcache_cache_bypass(i32 %28, i32 1)
  %30 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RT1011_RESET, align 4
  %34 = call i32 @regmap_write(i32 %32, i32 %33, i32 0)
  %35 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RT1011_SYSTEM_RESET_3, align 4
  %39 = call i32 @regmap_write(i32 %37, i32 %38, i32 29711)
  %40 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RT1011_SYSTEM_RESET_3, align 4
  %44 = call i32 @regmap_write(i32 %42, i32 %43, i32 30479)
  %45 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RT1011_CLK_2, align 4
  %49 = call i32 @regmap_write(i32 %47, i32 %48, i32 37888)
  %50 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RT1011_PLL_1, align 4
  %54 = call i32 @regmap_write(i32 %52, i32 %53, i32 2048)
  %55 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RT1011_PLL_2, align 4
  %59 = call i32 @regmap_write(i32 %57, i32 %58, i32 32)
  %60 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RT1011_CLK_DET, align 4
  %64 = call i32 @regmap_write(i32 %62, i32 %63, i32 2048)
  %65 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %66 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RT1011_ADC_SET_5, align 4
  %69 = call i32 @regmap_write(i32 %67, i32 %68, i32 2592)
  %70 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %71 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RT1011_DAC_SET_2, align 4
  %74 = call i32 @regmap_write(i32 %72, i32 %73, i32 57906)
  %75 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %76 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RT1011_ADC_SET_1, align 4
  %79 = call i32 @regmap_write(i32 %77, i32 %78, i32 10533)
  %80 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %81 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RT1011_ADC_SET_4, align 4
  %84 = call i32 @regmap_write(i32 %82, i32 %83, i32 49152)
  %85 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %86 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RT1011_SPK_PRO_DC_DET_1, align 4
  %89 = call i32 @regmap_write(i32 %87, i32 %88, i32 45068)
  %90 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %91 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RT1011_SPK_PRO_DC_DET_2, align 4
  %94 = call i32 @regmap_write(i32 %92, i32 %93, i32 52428)
  %95 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %96 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RT1011_POWER_1, align 4
  %99 = call i32 @regmap_write(i32 %97, i32 %98, i32 57568)
  %100 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %101 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RT1011_POWER_3, align 4
  %104 = call i32 @regmap_write(i32 %102, i32 %103, i32 20483)
  %105 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %106 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RT1011_POWER_9, align 4
  %109 = call i32 @regmap_write(i32 %107, i32 %108, i32 43104)
  %110 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %111 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RT1011_DAC_SET_2, align 4
  %114 = call i32 @regmap_write(i32 %112, i32 %113, i32 41010)
  %115 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %116 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RT1011_POWER_2, align 4
  %119 = call i32 @regmap_write(i32 %117, i32 %118, i32 7)
  %120 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RT1011_POWER_3, align 4
  %124 = call i32 @regmap_write(i32 %122, i32 %123, i32 24567)
  %125 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %126 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RT1011_A_TEMP_SEN, align 4
  %129 = call i32 @regmap_write(i32 %127, i32 %128, i32 32580)
  %130 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %131 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RT1011_A_TIMING_1, align 4
  %134 = call i32 @regmap_write(i32 %132, i32 %133, i32 16468)
  %135 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %136 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @RT1011_BAT_GAIN_1, align 4
  %139 = call i32 @regmap_write(i32 %137, i32 %138, i32 12444)
  %140 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %141 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @RT1011_DC_CALIB_CLASSD_3, align 4
  %144 = call i32 @regmap_write(i32 %142, i32 %143, i32 51968)
  %145 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @RT1011_BOOST_CON_1, align 4
  %149 = call i32 @regmap_write(i32 %147, i32 %148, i32 57472)
  %150 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %151 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @RT1011_POWER_4, align 4
  %154 = call i32 @regmap_write(i32 %152, i32 %153, i32 5874)
  %155 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %156 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RT1011_POWER_6, align 4
  %159 = call i32 @regmap_write(i32 %157, i32 %158, i32 13997)
  %160 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %161 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @RT1011_MIXER_1, align 4
  %164 = call i32 @regmap_write(i32 %162, i32 %163, i32 16157)
  %165 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %166 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @RT1011_EFUSE_CONTROL_1, align 4
  %169 = call i32 @regmap_write(i32 %167, i32 %168, i32 3338)
  %170 = call i32 @msleep(i32 30)
  %171 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %172 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @RT1011_EFUSE_ADC_OFFSET_18_16, align 4
  %175 = call i32 @regmap_read(i32 %173, i32 %174, i32* %5)
  %176 = load i32, i32* %5, align 4
  %177 = shl i32 %176, 16
  store i32 %177, i32* %9, align 4
  %178 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %179 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @RT1011_EFUSE_ADC_OFFSET_15_0, align 4
  %182 = call i32 @regmap_read(i32 %180, i32 %181, i32* %5)
  %183 = load i32, i32* %5, align 4
  %184 = and i32 %183, 65535
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %9, align 4
  %187 = load %struct.device*, %struct.device** %13, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %188)
  %190 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %191 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @RT1011_EFUSE_DAC_OFFSET_G0_20_16, align 4
  %194 = call i32 @regmap_read(i32 %192, i32 %193, i32* %5)
  %195 = load i32, i32* %5, align 4
  %196 = shl i32 %195, 16
  store i32 %196, i32* %9, align 4
  %197 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %198 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @RT1011_EFUSE_DAC_OFFSET_G0_15_0, align 4
  %201 = call i32 @regmap_read(i32 %199, i32 %200, i32* %5)
  %202 = load i32, i32* %5, align 4
  %203 = and i32 %202, 65535
  %204 = load i32, i32* %9, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %9, align 4
  %206 = load %struct.device*, %struct.device** %13, align 8
  %207 = load i32, i32* %9, align 4
  %208 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %207)
  %209 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %210 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @RT1011_EFUSE_DAC_OFFSET_G1_20_16, align 4
  %213 = call i32 @regmap_read(i32 %211, i32 %212, i32* %5)
  %214 = load i32, i32* %5, align 4
  %215 = shl i32 %214, 16
  store i32 %215, i32* %9, align 4
  %216 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %217 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @RT1011_EFUSE_DAC_OFFSET_G1_15_0, align 4
  %220 = call i32 @regmap_read(i32 %218, i32 %219, i32* %5)
  %221 = load i32, i32* %5, align 4
  %222 = and i32 %221, 65535
  %223 = load i32, i32* %9, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %9, align 4
  %225 = load %struct.device*, %struct.device** %13, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %225, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %226)
  %228 = load i8, i8* %4, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %358

230:                                              ; preds = %2
  %231 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %232 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @RT1011_CLASS_D_POS, align 4
  %235 = call i32 @regmap_write(i32 %233, i32 %234, i32 270)
  %236 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %237 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @RT1011_CLASSD_INTERNAL_SET_1, align 4
  %240 = call i32 @regmap_write(i32 %238, i32 %239, i32 5889)
  %241 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %242 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_0, align 4
  %245 = call i32 @regmap_write(i32 %243, i32 %244, i32 32768)
  %246 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %247 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_7, align 4
  %250 = call i32 @regmap_write(i32 %248, i32 %249, i32 61440)
  %251 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %252 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_4, align 4
  %255 = call i32 @regmap_write(i32 %253, i32 %254, i32 16448)
  %256 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %257 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_0, align 4
  %260 = call i32 @regmap_write(i32 %258, i32 %259, i32 49152)
  %261 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %262 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_6, align 4
  %265 = call i32 @regmap_write(i32 %263, i32 %264, i32 1986)
  store i32 0, i32* %6, align 4
  %266 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %266, align 4
  %267 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %267, align 4
  %268 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %268, align 4
  br label %269

269:                                              ; preds = %320, %304, %230
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %321

273:                                              ; preds = %269
  %274 = call i32 @msleep(i32 100)
  %275 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %276 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @RT1011_INIT_RECIPROCAL_SYN_24_16, align 4
  %279 = call i32 @regmap_read(i32 %277, i32 %278, i32* %5)
  %280 = load i32, i32* %5, align 4
  %281 = shl i32 %280, 16
  %282 = load i32, i32* %6, align 4
  %283 = urem i32 %282, 3
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %284
  store i32 %281, i32* %285, align 4
  %286 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %287 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @RT1011_INIT_RECIPROCAL_SYN_15_0, align 4
  %290 = call i32 @regmap_read(i32 %288, i32 %289, i32* %5)
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* %6, align 4
  %293 = urem i32 %292, 3
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %291
  store i32 %297, i32* %295, align 4
  %298 = load i32, i32* %6, align 4
  %299 = urem i32 %298, 3
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %273
  br label %269

305:                                              ; preds = %273
  %306 = load i32, i32* %6, align 4
  %307 = add i32 %306, 1
  store i32 %307, i32* %6, align 4
  %308 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %309, %311
  br i1 %312, label %313, label %320

313:                                              ; preds = %305
  %314 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %315, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %313
  br label %321

320:                                              ; preds = %313, %305
  br label %269

321:                                              ; preds = %319, %269
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* %8, align 4
  %324 = icmp ugt i32 %322, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %321
  %326 = load %struct.device*, %struct.device** %13, align 8
  %327 = call i32 @dev_err(%struct.device* %326, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %328 = load i32, i32* @EAGAIN, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %15, align 4
  br label %357

330:                                              ; preds = %321
  store i32 -2147483648, i32* %12, align 4
  %331 = load i32, i32* %12, align 4
  %332 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = udiv i32 %331, %333
  %335 = udiv i32 %334, 128
  store i32 %335, i32* %10, align 4
  %336 = load i32, i32* %12, align 4
  %337 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = udiv i32 %336, %338
  %340 = mul i32 %339, 100
  %341 = udiv i32 %340, 128
  %342 = load i32, i32* %10, align 4
  %343 = mul i32 %342, 100
  %344 = sub i32 %341, %343
  store i32 %344, i32* %11, align 4
  %345 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %348 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %347, i32 0, i32 0
  store i32 %346, i32* %348, align 4
  %349 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %350 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %349, i32 0, i32 1
  store i32 1, i32* %350, align 4
  %351 = load %struct.device*, %struct.device** %13, align 8
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* %11, align 4
  %354 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %355 = load i32, i32* %354, align 4
  %356 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %351, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %352, i32 %353, i32 %355)
  br label %357

357:                                              ; preds = %330, %325
  br label %358

358:                                              ; preds = %357, %2
  %359 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %360 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_0, align 4
  %363 = call i32 @regmap_write(i32 %361, i32 %362, i32 0)
  %364 = call i32 @msleep(i32 400)
  %365 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %366 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @RT1011_POWER_9, align 4
  %369 = call i32 @regmap_write(i32 %367, i32 %368, i32 43072)
  %370 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %371 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_6, align 4
  %374 = call i32 @regmap_write(i32 %372, i32 %373, i32 1794)
  %375 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %376 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @RT1011_MIXER_1, align 4
  %379 = call i32 @regmap_write(i32 %377, i32 %378, i32 65501)
  %380 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %381 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @RT1011_CLASSD_INTERNAL_SET_1, align 4
  %384 = call i32 @regmap_write(i32 %382, i32 %383, i32 1793)
  %385 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %386 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @RT1011_DAC_SET_3, align 4
  %389 = call i32 @regmap_write(i32 %387, i32 %388, i32 57348)
  %390 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %391 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @RT1011_A_TEMP_SEN, align 4
  %394 = call i32 @regmap_write(i32 %392, i32 %393, i32 32576)
  %395 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %396 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @RT1011_POWER_1, align 4
  %399 = call i32 @regmap_write(i32 %397, i32 %398, i32 0)
  %400 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %401 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @RT1011_POWER_2, align 4
  %404 = call i32 @regmap_write(i32 %402, i32 %403, i32 0)
  %405 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %406 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @RT1011_POWER_3, align 4
  %409 = call i32 @regmap_write(i32 %407, i32 %408, i32 2)
  %410 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %411 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @RT1011_POWER_4, align 4
  %414 = call i32 @regmap_write(i32 %412, i32 %413, i32 242)
  %415 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %416 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @RT1011_RESET, align 4
  %419 = call i32 @regmap_write(i32 %417, i32 %418, i32 0)
  %420 = load i8, i8* %4, align 1
  %421 = icmp ne i8 %420, 0
  br i1 %421, label %422, label %450

422:                                              ; preds = %358
  %423 = load i32, i32* %6, align 4
  %424 = load i32, i32* %8, align 4
  %425 = icmp ule i32 %423, %424
  br i1 %425, label %426, label %449

426:                                              ; preds = %422
  %427 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %428 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @RT1011_INIT_RECIPROCAL_REG_24_16, align 4
  %431 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %432 = load i32, i32* %431, align 4
  %433 = lshr i32 %432, 16
  %434 = and i32 %433, 511
  %435 = call i32 @regmap_write(i32 %429, i32 %430, i32 %434)
  %436 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %437 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @RT1011_INIT_RECIPROCAL_REG_15_0, align 4
  %440 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %441 = load i32, i32* %440, align 4
  %442 = and i32 %441, 65535
  %443 = call i32 @regmap_write(i32 %438, i32 %439, i32 %442)
  %444 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %445 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_4, align 4
  %448 = call i32 @regmap_write(i32 %446, i32 %447, i32 16512)
  br label %449

449:                                              ; preds = %426, %422
  br label %450

450:                                              ; preds = %449, %358
  %451 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %452 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @regcache_cache_bypass(i32 %453, i32 0)
  %455 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %456 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @regcache_mark_dirty(i32 %457)
  %459 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %460 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @regcache_sync(i32 %461)
  %463 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %14, align 8
  %464 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %463)
  %465 = load i32, i32* %15, align 4
  ret i32 %465
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
