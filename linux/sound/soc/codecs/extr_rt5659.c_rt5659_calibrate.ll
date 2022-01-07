; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5659_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RT5659_BIAS_CUR_CTRL_8 = common dso_local global i32 0, align 4
@RT5659_CHOP_DAC = common dso_local global i32 0, align 4
@RT5659_PRE_DIV_1 = common dso_local global i32 0, align 4
@RT5659_PRE_DIV_2 = common dso_local global i32 0, align 4
@RT5659_MICBIAS_2 = common dso_local global i32 0, align 4
@RT5659_DIG_MISC = common dso_local global i32 0, align 4
@RT5659_GLB_CLK = common dso_local global i32 0, align 4
@RT5659_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5659_PWR_ANLG_3 = common dso_local global i32 0, align 4
@RT5659_PWR_DIG_2 = common dso_local global i32 0, align 4
@RT5659_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5659_DEPOP_1 = common dso_local global i32 0, align 4
@RT5659_HP_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5659_CAL_REC = common dso_local global i32 0, align 4
@RT5659_CALIB_ADC_CTRL = common dso_local global i32 0, align 4
@RT5659_HP_CALIB_CTRL_2 = common dso_local global i32 0, align 4
@RT5659_HP_CALIB_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_HP_CALIB_CTRL_7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"HP Calibration 1 Failure\0A\00", align 1
@RT5659_HP_VOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"HP Calibration 2 Failure\0A\00", align 1
@RT5659_CLASSD_0 = common dso_local global i32 0, align 4
@RT5659_CLASSD_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_PWR_MIXER = common dso_local global i32 0, align 4
@RT5659_PWR_VOL = common dso_local global i32 0, align 4
@RT5659_A_DAC_MUX = common dso_local global i32 0, align 4
@RT5659_SPO_VOL = common dso_local global i32 0, align 4
@RT5659_SPK_L_MIXER = common dso_local global i32 0, align 4
@RT5659_SPK_R_MIXER = common dso_local global i32 0, align 4
@RT5659_CLASSD_1 = common dso_local global i32 0, align 4
@RT5659_CLASSD_2 = common dso_local global i32 0, align 4
@RT5659_SPO_AMP_GAIN = common dso_local global i32 0, align 4
@RT5659_SPK_DC_CAILB_CTRL_3 = common dso_local global i32 0, align 4
@RT5659_SPK_DC_CAILB_CTRL_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"SPK Calibration Failure\0A\00", align 1
@RT5659_MONOMIX_IN_GAIN = common dso_local global i32 0, align 4
@RT5659_MONO_OUT = common dso_local global i32 0, align 4
@RT5659_MONO_GAIN = common dso_local global i32 0, align 4
@RT5659_MONO_NG2_CTRL_5 = common dso_local global i32 0, align 4
@RT5659_MONO_AMP_CALIB_CTRL_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Mono Calibration Failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5659_priv*)* @rt5659_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5659_calibrate(%struct.rt5659_priv* %0) #0 {
  %2 = alloca %struct.rt5659_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt5659_priv* %0, %struct.rt5659_priv** %2, align 8
  %5 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %6 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RT5659_BIAS_CUR_CTRL_8, align 4
  %9 = call i32 @regmap_write(i32 %7, i32 %8, i32 42242)
  %10 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %11 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RT5659_CHOP_DAC, align 4
  %14 = call i32 @regmap_write(i32 %12, i32 %13, i32 12336)
  %15 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %16 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RT5659_PRE_DIV_1, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 61184)
  %20 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %21 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RT5659_PRE_DIV_2, align 4
  %24 = call i32 @regmap_write(i32 %22, i32 %23, i32 61436)
  %25 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %26 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RT5659_MICBIAS_2, align 4
  %29 = call i32 @regmap_write(i32 %27, i32 %28, i32 640)
  %30 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %31 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RT5659_DIG_MISC, align 4
  %34 = call i32 @regmap_write(i32 %32, i32 %33, i32 1)
  %35 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %36 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RT5659_GLB_CLK, align 4
  %39 = call i32 @regmap_write(i32 %37, i32 %38, i32 32768)
  %40 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %41 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %44 = call i32 @regmap_write(i32 %42, i32 %43, i32 43646)
  %45 = call i32 @msleep(i32 60)
  %46 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %47 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %50 = call i32 @regmap_write(i32 %48, i32 %49, i32 65150)
  %51 = call i32 @msleep(i32 50)
  %52 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %53 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @RT5659_PWR_ANLG_3, align 4
  %56 = call i32 @regmap_write(i32 %54, i32 %55, i32 4)
  %57 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %58 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RT5659_PWR_DIG_2, align 4
  %61 = call i32 @regmap_write(i32 %59, i32 %60, i32 1024)
  %62 = call i32 @msleep(i32 50)
  %63 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %64 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RT5659_PWR_DIG_1, align 4
  %67 = call i32 @regmap_write(i32 %65, i32 %66, i32 128)
  %68 = call i32 @usleep_range(i32 10000, i32 10005)
  %69 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %70 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RT5659_DEPOP_1, align 4
  %73 = call i32 @regmap_write(i32 %71, i32 %72, i32 9)
  %74 = call i32 @msleep(i32 50)
  %75 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %76 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RT5659_PWR_DIG_1, align 4
  %79 = call i32 @regmap_write(i32 %77, i32 %78, i32 3968)
  %80 = call i32 @msleep(i32 50)
  %81 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %82 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @RT5659_HP_CHARGE_PUMP_1, align 4
  %85 = call i32 @regmap_write(i32 %83, i32 %84, i32 3606)
  %86 = call i32 @msleep(i32 50)
  %87 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %88 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @RT5659_CAL_REC, align 4
  %91 = call i32 @regmap_write(i32 %89, i32 %90, i32 1285)
  %92 = call i32 @msleep(i32 50)
  %93 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %94 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @RT5659_PWR_ANLG_3, align 4
  %97 = call i32 @regmap_write(i32 %95, i32 %96, i32 388)
  %98 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %99 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @RT5659_CALIB_ADC_CTRL, align 4
  %102 = call i32 @regmap_write(i32 %100, i32 %101, i32 15365)
  %103 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %104 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RT5659_HP_CALIB_CTRL_2, align 4
  %107 = call i32 @regmap_write(i32 %105, i32 %106, i32 8385)
  %108 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %109 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RT5659_HP_CALIB_CTRL_2, align 4
  %112 = call i32 @regmap_write(i32 %110, i32 %111, i32 11457)
  %113 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %114 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @RT5659_HP_CALIB_CTRL_1, align 4
  %117 = call i32 @regmap_write(i32 %115, i32 %116, i32 20736)
  %118 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %119 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RT5659_HP_CALIB_CTRL_7, align 4
  %122 = call i32 @regmap_write(i32 %120, i32 %121, i32 20)
  %123 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %124 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @RT5659_HP_CALIB_CTRL_1, align 4
  %127 = call i32 @regmap_write(i32 %125, i32 %126, i32 53504)
  %128 = call i32 @msleep(i32 60)
  %129 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %130 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @RT5659_HP_CALIB_CTRL_2, align 4
  %133 = call i32 @regmap_write(i32 %131, i32 %132, i32 11457)
  %134 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %135 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @RT5659_HP_CALIB_CTRL_1, align 4
  %138 = call i32 @regmap_write(i32 %136, i32 %137, i32 18688)
  %139 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %140 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @RT5659_HP_CALIB_CTRL_7, align 4
  %143 = call i32 @regmap_write(i32 %141, i32 %142, i32 22)
  %144 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %145 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @RT5659_HP_CALIB_CTRL_1, align 4
  %148 = call i32 @regmap_update_bits(i32 %146, i32 %147, i32 32768, i32 32768)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %1, %171
  %150 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %151 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @RT5659_HP_CALIB_CTRL_1, align 4
  %154 = call i32 @regmap_read(i32 %152, i32 %153, i32* %3)
  %155 = load i32, i32* %3, align 4
  %156 = and i32 %155, 32768
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %161

160:                                              ; preds = %149
  br label %174

161:                                              ; preds = %158
  %162 = load i32, i32* %4, align 4
  %163 = icmp sgt i32 %162, 30
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %166 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %528

171:                                              ; preds = %161
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  br label %149

174:                                              ; preds = %160
  %175 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %176 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @RT5659_HP_CALIB_CTRL_2, align 4
  %179 = call i32 @regmap_write(i32 %177, i32 %178, i32 11457)
  %180 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %181 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @RT5659_HP_VOL, align 4
  %184 = call i32 @regmap_write(i32 %182, i32 %183, i32 0)
  %185 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %186 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @RT5659_HP_CALIB_CTRL_1, align 4
  %189 = call i32 @regmap_write(i32 %187, i32 %188, i32 17664)
  %190 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %191 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @RT5659_HP_CALIB_CTRL_7, align 4
  %194 = call i32 @regmap_write(i32 %192, i32 %193, i32 31)
  %195 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %196 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @RT5659_HP_CALIB_CTRL_1, align 4
  %199 = call i32 @regmap_update_bits(i32 %197, i32 %198, i32 32768, i32 32768)
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %174, %222
  %201 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %202 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @RT5659_HP_CALIB_CTRL_1, align 4
  %205 = call i32 @regmap_read(i32 %203, i32 %204, i32* %3)
  %206 = load i32, i32* %3, align 4
  %207 = and i32 %206, 32768
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %200
  %210 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %212

211:                                              ; preds = %200
  br label %225

212:                                              ; preds = %209
  %213 = load i32, i32* %4, align 4
  %214 = icmp sgt i32 %213, 85
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %217 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %216, i32 0, i32 1
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @dev_err(i32 %220, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %528

222:                                              ; preds = %212
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %4, align 4
  br label %200

225:                                              ; preds = %211
  %226 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %227 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @RT5659_HP_CALIB_CTRL_7, align 4
  %230 = call i32 @regmap_write(i32 %228, i32 %229, i32 0)
  %231 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %232 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @RT5659_HP_CALIB_CTRL_2, align 4
  %235 = call i32 @regmap_write(i32 %233, i32 %234, i32 8384)
  %236 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %237 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @RT5659_CLASSD_0, align 4
  %240 = call i32 @regmap_write(i32 %238, i32 %239, i32 8225)
  %241 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %242 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @RT5659_CLASSD_CTRL_1, align 4
  %245 = call i32 @regmap_write(i32 %243, i32 %244, i32 608)
  %246 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %247 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @RT5659_PWR_MIXER, align 4
  %250 = call i32 @regmap_write(i32 %248, i32 %249, i32 12288)
  %251 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %252 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @RT5659_PWR_VOL, align 4
  %255 = call i32 @regmap_write(i32 %253, i32 %254, i32 49152)
  %256 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %257 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @RT5659_A_DAC_MUX, align 4
  %260 = call i32 @regmap_write(i32 %258, i32 %259, i32 12)
  %261 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %262 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @RT5659_DIG_MISC, align 4
  %265 = call i32 @regmap_write(i32 %263, i32 %264, i32 32768)
  %266 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %267 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @RT5659_SPO_VOL, align 4
  %270 = call i32 @regmap_write(i32 %268, i32 %269, i32 2056)
  %271 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %272 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @RT5659_SPK_L_MIXER, align 4
  %275 = call i32 @regmap_write(i32 %273, i32 %274, i32 30)
  %276 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %277 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @RT5659_SPK_R_MIXER, align 4
  %280 = call i32 @regmap_write(i32 %278, i32 %279, i32 30)
  %281 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %282 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @RT5659_CLASSD_1, align 4
  %285 = call i32 @regmap_write(i32 %283, i32 %284, i32 2051)
  %286 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %287 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @RT5659_CLASSD_2, align 4
  %290 = call i32 @regmap_write(i32 %288, i32 %289, i32 1364)
  %291 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %292 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @RT5659_SPO_AMP_GAIN, align 4
  %295 = call i32 @regmap_write(i32 %293, i32 %294, i32 4355)
  %296 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %297 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @RT5659_CAL_REC, align 4
  %300 = call i32 @regmap_write(i32 %298, i32 %299, i32 2313)
  %301 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %302 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @RT5659_HP_CALIB_CTRL_2, align 4
  %305 = call i32 @regmap_update_bits(i32 %303, i32 %304, i32 1, i32 1)
  %306 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %307 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @RT5659_SPK_DC_CAILB_CTRL_3, align 4
  %310 = call i32 @regmap_write(i32 %308, i32 %309, i32 0)
  %311 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %312 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @RT5659_CLASSD_0, align 4
  %315 = call i32 @regmap_write(i32 %313, i32 %314, i32 33)
  %316 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %317 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @RT5659_SPK_DC_CAILB_CTRL_1, align 4
  %320 = call i32 @regmap_write(i32 %318, i32 %319, i32 16000)
  %321 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %322 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @RT5659_SPK_DC_CAILB_CTRL_1, align 4
  %325 = call i32 @regmap_update_bits(i32 %323, i32 %324, i32 32768, i32 32768)
  store i32 0, i32* %4, align 4
  br label %326

326:                                              ; preds = %225, %348
  %327 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %328 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @RT5659_SPK_DC_CAILB_CTRL_1, align 4
  %331 = call i32 @regmap_read(i32 %329, i32 %330, i32* %3)
  %332 = load i32, i32* %3, align 4
  %333 = and i32 %332, 32768
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %326
  %336 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %338

337:                                              ; preds = %326
  br label %351

338:                                              ; preds = %335
  %339 = load i32, i32* %4, align 4
  %340 = icmp sgt i32 %339, 10
  br i1 %340, label %341, label %348

341:                                              ; preds = %338
  %342 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %343 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %342, i32 0, i32 1
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @dev_err(i32 %346, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %528

348:                                              ; preds = %338
  %349 = load i32, i32* %4, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %4, align 4
  br label %326

351:                                              ; preds = %337
  %352 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %353 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @RT5659_DIG_MISC, align 4
  %356 = call i32 @regmap_write(i32 %354, i32 %355, i32 0)
  %357 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %358 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @RT5659_MONOMIX_IN_GAIN, align 4
  %361 = call i32 @regmap_write(i32 %359, i32 %360, i32 543)
  %362 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %363 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @RT5659_MONO_OUT, align 4
  %366 = call i32 @regmap_write(i32 %364, i32 %365, i32 18442)
  %367 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %368 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @RT5659_MONO_GAIN, align 4
  %371 = call i32 @regmap_write(i32 %369, i32 %370, i32 3)
  %372 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %373 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @RT5659_MONO_NG2_CTRL_5, align 4
  %376 = call i32 @regmap_write(i32 %374, i32 %375, i32 9)
  %377 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %378 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @RT5659_SPK_DC_CAILB_CTRL_3, align 4
  %381 = call i32 @regmap_write(i32 %379, i32 %380, i32 15)
  %382 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %383 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @RT5659_MONO_AMP_CALIB_CTRL_1, align 4
  %386 = call i32 @regmap_write(i32 %384, i32 %385, i32 7680)
  %387 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %388 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @RT5659_MONO_AMP_CALIB_CTRL_1, align 4
  %391 = call i32 @regmap_update_bits(i32 %389, i32 %390, i32 32768, i32 32768)
  store i32 0, i32* %4, align 4
  br label %392

392:                                              ; preds = %351, %414
  %393 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %394 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @RT5659_MONO_AMP_CALIB_CTRL_1, align 4
  %397 = call i32 @regmap_read(i32 %395, i32 %396, i32* %3)
  %398 = load i32, i32* %3, align 4
  %399 = and i32 %398, 32768
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %392
  %402 = call i32 @usleep_range(i32 10000, i32 10005)
  br label %404

403:                                              ; preds = %392
  br label %417

404:                                              ; preds = %401
  %405 = load i32, i32* %4, align 4
  %406 = icmp sgt i32 %405, 35
  br i1 %406, label %407, label %414

407:                                              ; preds = %404
  %408 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %409 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %408, i32 0, i32 1
  %410 = load %struct.TYPE_2__*, %struct.TYPE_2__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @dev_err(i32 %412, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %528

414:                                              ; preds = %404
  %415 = load i32, i32* %4, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %4, align 4
  br label %392

417:                                              ; preds = %403
  %418 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %419 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @RT5659_SPK_DC_CAILB_CTRL_3, align 4
  %422 = call i32 @regmap_write(i32 %420, i32 %421, i32 3)
  %423 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %424 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @RT5659_CAL_REC, align 4
  %427 = call i32 @regmap_write(i32 %425, i32 %426, i32 2056)
  %428 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %429 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @RT5659_PWR_ANLG_3, align 4
  %432 = call i32 @regmap_write(i32 %430, i32 %431, i32 0)
  %433 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %434 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* @RT5659_CALIB_ADC_CTRL, align 4
  %437 = call i32 @regmap_write(i32 %435, i32 %436, i32 8197)
  %438 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %439 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @RT5659_HP_CALIB_CTRL_2, align 4
  %442 = call i32 @regmap_write(i32 %440, i32 %441, i32 8384)
  %443 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %444 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @RT5659_DEPOP_1, align 4
  %447 = call i32 @regmap_write(i32 %445, i32 %446, i32 0)
  %448 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %449 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @RT5659_CLASSD_1, align 4
  %452 = call i32 @regmap_write(i32 %450, i32 %451, i32 17)
  %453 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %454 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* @RT5659_CLASSD_2, align 4
  %457 = call i32 @regmap_write(i32 %455, i32 %456, i32 336)
  %458 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %459 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %462 = call i32 @regmap_write(i32 %460, i32 %461, i32 65086)
  %463 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %464 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @RT5659_MONO_OUT, align 4
  %467 = call i32 @regmap_write(i32 %465, i32 %466, i32 51210)
  %468 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %469 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* @RT5659_MONO_AMP_CALIB_CTRL_1, align 4
  %472 = call i32 @regmap_write(i32 %470, i32 %471, i32 7684)
  %473 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %474 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @RT5659_PWR_MIXER, align 4
  %477 = call i32 @regmap_write(i32 %475, i32 %476, i32 0)
  %478 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %479 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @RT5659_PWR_VOL, align 4
  %482 = call i32 @regmap_write(i32 %480, i32 %481, i32 0)
  %483 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %484 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @RT5659_PWR_DIG_1, align 4
  %487 = call i32 @regmap_write(i32 %485, i32 %486, i32 0)
  %488 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %489 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* @RT5659_PWR_DIG_2, align 4
  %492 = call i32 @regmap_write(i32 %490, i32 %491, i32 0)
  %493 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %494 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %497 = call i32 @regmap_write(i32 %495, i32 %496, i32 62)
  %498 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %499 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load i32, i32* @RT5659_CLASSD_CTRL_1, align 4
  %502 = call i32 @regmap_write(i32 %500, i32 %501, i32 96)
  %503 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %504 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = load i32, i32* @RT5659_CLASSD_0, align 4
  %507 = call i32 @regmap_write(i32 %505, i32 %506, i32 8225)
  %508 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %509 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load i32, i32* @RT5659_GLB_CLK, align 4
  %512 = call i32 @regmap_write(i32 %510, i32 %511, i32 0)
  %513 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %514 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* @RT5659_MICBIAS_2, align 4
  %517 = call i32 @regmap_write(i32 %515, i32 %516, i32 128)
  %518 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %519 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @RT5659_HP_VOL, align 4
  %522 = call i32 @regmap_write(i32 %520, i32 %521, i32 32896)
  %523 = load %struct.rt5659_priv*, %struct.rt5659_priv** %2, align 8
  %524 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = load i32, i32* @RT5659_HP_CHARGE_PUMP_1, align 4
  %527 = call i32 @regmap_write(i32 %525, i32 %526, i32 3094)
  br label %528

528:                                              ; preds = %417, %407, %341, %215, %164
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
