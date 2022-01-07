; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_set_power_regs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_set_power_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sgtl5000_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VDDA = common dso_local global i64 0, align 8
@VDDIO = common dso_local global i64 0, align 8
@VDDD = common dso_local global i64 0, align 8
@LDO_VOLTAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"regulator voltage not set correctly\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"exceed max voltage vdda %dmV vddio %dmV vddd %dmV\0A\00", align 1
@SGTL5000_CHIP_ANA_POWER = common dso_local global i32 0, align 4
@SGTL5000_DAC_STEREO = common dso_local global i32 0, align 4
@SGTL5000_ADC_STEREO = common dso_local global i32 0, align 4
@SGTL5000_REFTOP_POWERUP = common dso_local global i32 0, align 4
@SGTL5000_CHIP_LINREG_CTRL = common dso_local global i32 0, align 4
@SGTL5000_CHIP_CLK_TOP_CTRL = common dso_local global i32 0, align 4
@SGTL5000_INT_OSC_EN = common dso_local global i32 0, align 4
@SGTL5000_VDDC_CHRGPMP_POWERUP = common dso_local global i32 0, align 4
@SGTL5000_VDDC_ASSN_OVRD = common dso_local global i32 0, align 4
@SGTL5000_VDDC_MAN_ASSN_VDDIO = common dso_local global i32 0, align 4
@SGTL5000_VDDC_MAN_ASSN_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_ANA_GND_BASE = common dso_local global i32 0, align 4
@SGTL5000_ANA_GND_STP = common dso_local global i32 0, align 4
@SGTL5000_ANA_GND_MASK = common dso_local global i32 0, align 4
@SGTL5000_ANA_GND_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_CHIP_REF_CTRL = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_GND_BASE = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_GND_STP = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_GND_MAX = common dso_local global i32 0, align 4
@SGTL5000_CHIP_LINE_OUT_CTRL = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_CURRENT_MASK = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_GND_MASK = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_GND_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_CURRENT_360u = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_CURRENT_SHIFT = common dso_local global i32 0, align 4
@vol_quot_table = common dso_local global i32* null, align 8
@SGTL5000_CHIP_LINE_OUT_VOL = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_VOL_RIGHT_MASK = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_VOL_LEFT_MASK = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_VOL_RIGHT_SHIFT = common dso_local global i32 0, align 4
@SGTL5000_LINE_OUT_VOL_LEFT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sgtl5000_set_power_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgtl5000_set_power_regs(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.sgtl5000_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = call %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.sgtl5000_priv* %16, %struct.sgtl5000_priv** %14, align 8
  %17 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %14, align 8
  %18 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @VDDA, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regulator_get_voltage(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %14, align 8
  %26 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* @VDDIO, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_get_voltage(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %14, align 8
  %34 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VDDD, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %1
  %39 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %14, align 8
  %40 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @VDDD, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_get_voltage(i32 %45)
  br label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @LDO_VOLTAGE, align 4
  br label %49

49:                                               ; preds = %47, %38
  %50 = phi i32 [ %46, %38 ], [ %48, %47 ]
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sdiv i32 %51, 1000
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 %53, 1000
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sdiv i32 %55, 1000
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62, %59, %49
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %262

72:                                               ; preds = %62
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 3600
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %76, 3600
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 1980
  br i1 %80, label %81, label %91

81:                                               ; preds = %78, %75, %72
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %262

91:                                               ; preds = %78
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %93 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %94 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* @SGTL5000_DAC_STEREO, align 4
  %96 = load i32, i32* @SGTL5000_ADC_STEREO, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SGTL5000_REFTOP_POWERUP, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %103 = load i32, i32* @SGTL5000_CHIP_LINREG_CTRL, align 4
  %104 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 3100
  br i1 %106, label %107, label %119

107:                                              ; preds = %91
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 3100
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %112 = load i32, i32* @SGTL5000_CHIP_CLK_TOP_CTRL, align 4
  %113 = load i32, i32* @SGTL5000_INT_OSC_EN, align 4
  %114 = load i32, i32* @SGTL5000_INT_OSC_EN, align 4
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* @SGTL5000_VDDC_CHRGPMP_POWERUP, align 4
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  br label %137

119:                                              ; preds = %107, %91
  %120 = load i32, i32* @SGTL5000_VDDC_CHRGPMP_POWERUP, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %119
  %128 = load i32, i32* @SGTL5000_VDDC_ASSN_OVRD, align 4
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* @SGTL5000_VDDC_MAN_ASSN_VDDIO, align 4
  %132 = load i32, i32* @SGTL5000_VDDC_MAN_ASSN_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %127, %119
  br label %137

137:                                              ; preds = %136, %110
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %139 = load i32, i32* @SGTL5000_CHIP_LINREG_CTRL, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %138, i32 %139, i32 %140)
  %142 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %143 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = sdiv i32 %146, 2
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @SGTL5000_ANA_GND_BASE, align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %173

152:                                              ; preds = %137
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @SGTL5000_ANA_GND_BASE, align 4
  %155 = load i32, i32* @SGTL5000_ANA_GND_STP, align 4
  %156 = load i32, i32* @SGTL5000_ANA_GND_MASK, align 4
  %157 = load i32, i32* @SGTL5000_ANA_GND_SHIFT, align 4
  %158 = ashr i32 %156, %157
  %159 = mul nsw i32 %155, %158
  %160 = add nsw i32 %154, %159
  %161 = icmp sge i32 %153, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load i32, i32* @SGTL5000_ANA_GND_MASK, align 4
  %164 = load i32, i32* @SGTL5000_ANA_GND_SHIFT, align 4
  %165 = ashr i32 %163, %164
  store i32 %165, i32* %9, align 4
  br label %172

166:                                              ; preds = %152
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @SGTL5000_ANA_GND_BASE, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32, i32* @SGTL5000_ANA_GND_STP, align 4
  %171 = sdiv i32 %169, %170
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %166, %162
  br label %173

173:                                              ; preds = %172, %151
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %175 = load i32, i32* @SGTL5000_CHIP_REF_CTRL, align 4
  %176 = load i32, i32* @SGTL5000_ANA_GND_MASK, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @SGTL5000_ANA_GND_SHIFT, align 4
  %179 = shl i32 %177, %178
  %180 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %174, i32 %175, i32 %176, i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = sdiv i32 %181, 2
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @SGTL5000_LINE_OUT_GND_BASE, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  store i32 0, i32* %10, align 4
  br label %204

187:                                              ; preds = %173
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @SGTL5000_LINE_OUT_GND_BASE, align 4
  %190 = load i32, i32* @SGTL5000_LINE_OUT_GND_STP, align 4
  %191 = load i32, i32* @SGTL5000_LINE_OUT_GND_MAX, align 4
  %192 = mul nsw i32 %190, %191
  %193 = add nsw i32 %189, %192
  %194 = icmp sge i32 %188, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %187
  %196 = load i32, i32* @SGTL5000_LINE_OUT_GND_MAX, align 4
  store i32 %196, i32* %10, align 4
  br label %203

197:                                              ; preds = %187
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @SGTL5000_LINE_OUT_GND_BASE, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load i32, i32* @SGTL5000_LINE_OUT_GND_STP, align 4
  %202 = sdiv i32 %200, %201
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %197, %195
  br label %204

204:                                              ; preds = %203, %186
  %205 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %206 = load i32, i32* @SGTL5000_CHIP_LINE_OUT_CTRL, align 4
  %207 = load i32, i32* @SGTL5000_LINE_OUT_CURRENT_MASK, align 4
  %208 = load i32, i32* @SGTL5000_LINE_OUT_GND_MASK, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @SGTL5000_LINE_OUT_GND_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = load i32, i32* @SGTL5000_LINE_OUT_CURRENT_360u, align 4
  %214 = load i32, i32* @SGTL5000_LINE_OUT_CURRENT_SHIFT, align 4
  %215 = shl i32 %213, %214
  %216 = or i32 %212, %215
  %217 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %205, i32 %206, i32 %209, i32 %216)
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %204
  %221 = load i32, i32* %9, align 4
  %222 = mul nsw i32 %221, 100
  %223 = load i32, i32* %10, align 4
  %224 = sdiv i32 %222, %223
  br label %226

225:                                              ; preds = %204
  br label %226

226:                                              ; preds = %225, %220
  %227 = phi i32 [ %224, %220 ], [ 0, %225 ]
  store i32 %227, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %228

228:                                              ; preds = %245, %226
  %229 = load i64, i64* %13, align 8
  %230 = load i32*, i32** @vol_quot_table, align 8
  %231 = call i64 @ARRAY_SIZE(i32* %230)
  %232 = icmp ult i64 %229, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %228
  %234 = load i32, i32* %11, align 4
  %235 = load i32*, i32** @vol_quot_table, align 8
  %236 = load i64, i64* %13, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp sge i32 %234, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %233
  %241 = load i64, i64* %13, align 8
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %12, align 4
  br label %244

243:                                              ; preds = %233
  br label %248

244:                                              ; preds = %240
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %13, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %13, align 8
  br label %228

248:                                              ; preds = %243, %228
  %249 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %250 = load i32, i32* @SGTL5000_CHIP_LINE_OUT_VOL, align 4
  %251 = load i32, i32* @SGTL5000_LINE_OUT_VOL_RIGHT_MASK, align 4
  %252 = load i32, i32* @SGTL5000_LINE_OUT_VOL_LEFT_MASK, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* @SGTL5000_LINE_OUT_VOL_RIGHT_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* @SGTL5000_LINE_OUT_VOL_LEFT_SHIFT, align 4
  %259 = shl i32 %257, %258
  %260 = or i32 %256, %259
  %261 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %249, i32 %250, i32 %253, i32 %260)
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %248, %81, %65
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
