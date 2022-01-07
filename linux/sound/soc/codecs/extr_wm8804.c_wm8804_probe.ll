; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.wm8804_priv = type { %struct.TYPE_6__*, i32, %struct.TYPE_7__*, %struct.regmap*, %struct.device* }
%struct.TYPE_6__ = type { %struct.regulator*, i32 }
%struct.regulator = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"wlf,reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get reset line: %d\0A\00", align 1
@wm8804_supply_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@wm8804_regulator_event_0 = common dso_local global i32 0, align 4
@wm8804_regulator_event_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to register regulator notifier: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8804_RST_DEVID1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to read device ID: %d\0A\00", align 1
@WM8804_DEVID2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Invalid device ID: %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8804_DEVREV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to read device revision: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"revision %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@soc_component_dev_wm8804 = common dso_local global i32 0, align 4
@wm8804_dai = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8804_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.wm8804_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.regulator*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wm8804_priv* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.wm8804_priv* %14, %struct.wm8804_priv** %6, align 8
  %15 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %16 = icmp ne %struct.wm8804_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %246

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %23 = call i32 @dev_set_drvdata(%struct.device* %21, %struct.wm8804_priv* %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %25, i32 0, i32 4
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %29 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %28, i32 0, i32 3
  store %struct.regmap* %27, %struct.regmap** %29, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %32 = call i32 @devm_gpiod_get_optional(%struct.device* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %34 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %36 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %20
  %41 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %42 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %246

49:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %53 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load i32*, i32** @wm8804_supply_names, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %64 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 8
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %76 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %77)
  %79 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %80 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = call i32 @devm_regulator_bulk_get(%struct.device* %74, i32 %78, %struct.TYPE_6__* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %246

90:                                               ; preds = %73
  %91 = load i32, i32* @wm8804_regulator_event_0, align 4
  %92 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %93 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 4
  %97 = load i32, i32* @wm8804_regulator_event_1, align 4
  %98 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %99 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 4
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %135, %90
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %106 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %107)
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %103
  %111 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %112 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.regulator*, %struct.regulator** %117, align 8
  store %struct.regulator* %118, %struct.regulator** %11, align 8
  %119 = load %struct.regulator*, %struct.regulator** %11, align 8
  %120 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %121 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %120, i32 0, i32 2
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = call i32 @devm_regulator_register_notifier(%struct.regulator* %119, %struct.TYPE_7__* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %110
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %246

134:                                              ; preds = %110
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %103

138:                                              ; preds = %103
  %139 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %140 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %141)
  %143 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %144 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = call i32 @regulator_bulk_enable(i32 %142, %struct.TYPE_6__* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %138
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @dev_err(%struct.device* %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %3, align 4
  br label %246

154:                                              ; preds = %138
  %155 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %156 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @gpiod_set_value_cansleep(i32 %157, i32 1)
  %159 = load %struct.regmap*, %struct.regmap** %5, align 8
  %160 = load i32, i32* @WM8804_RST_DEVID1, align 4
  %161 = call i32 @regmap_read(%struct.regmap* %159, i32 %160, i32* %7)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %154
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %236

168:                                              ; preds = %154
  %169 = load %struct.regmap*, %struct.regmap** %5, align 8
  %170 = load i32, i32* @WM8804_DEVID2, align 4
  %171 = call i32 @regmap_read(%struct.regmap* %169, i32 %170, i32* %8)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @dev_err(%struct.device* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  br label %236

178:                                              ; preds = %168
  %179 = load i32, i32* %8, align 4
  %180 = shl i32 %179, 8
  %181 = load i32, i32* %7, align 4
  %182 = or i32 %180, %181
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 34821
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load %struct.device*, %struct.device** %4, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @dev_err(%struct.device* %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %10, align 4
  br label %236

191:                                              ; preds = %178
  %192 = load %struct.regmap*, %struct.regmap** %5, align 8
  %193 = load i32, i32* @WM8804_DEVREV, align 4
  %194 = call i32 @regmap_read(%struct.regmap* %192, i32 %193, i32* %7)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load %struct.device*, %struct.device** %4, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @dev_err(%struct.device* %198, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %199)
  br label %236

201:                                              ; preds = %191
  %202 = load %struct.device*, %struct.device** %4, align 8
  %203 = load i32, i32* %7, align 4
  %204 = add i32 %203, 65
  %205 = call i32 @dev_info(%struct.device* %202, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %204)
  %206 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %207 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %201
  %211 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %212 = call i32 @wm8804_soft_reset(%struct.wm8804_priv* %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load %struct.device*, %struct.device** %4, align 8
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @dev_err(%struct.device* %216, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %217)
  br label %236

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %219, %201
  %221 = load %struct.device*, %struct.device** %4, align 8
  %222 = call i32 @devm_snd_soc_register_component(%struct.device* %221, i32* @soc_component_dev_wm8804, i32* @wm8804_dai, i32 1)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.device*, %struct.device** %4, align 8
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @dev_err(%struct.device* %226, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %227)
  br label %236

229:                                              ; preds = %220
  %230 = load %struct.device*, %struct.device** %4, align 8
  %231 = call i32 @pm_runtime_set_active(%struct.device* %230)
  %232 = load %struct.device*, %struct.device** %4, align 8
  %233 = call i32 @pm_runtime_enable(%struct.device* %232)
  %234 = load %struct.device*, %struct.device** %4, align 8
  %235 = call i32 @pm_runtime_idle(%struct.device* %234)
  store i32 0, i32* %3, align 4
  br label %246

236:                                              ; preds = %225, %215, %197, %185, %174, %164
  %237 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %238 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %237, i32 0, i32 0
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %239)
  %241 = load %struct.wm8804_priv*, %struct.wm8804_priv** %6, align 8
  %242 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %241, i32 0, i32 0
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = call i32 @regulator_bulk_disable(i32 %240, %struct.TYPE_6__* %243)
  %245 = load i32, i32* %10, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %236, %229, %149, %129, %85, %40, %17
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local %struct.wm8804_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.wm8804_priv*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @devm_regulator_register_notifier(%struct.regulator*, %struct.TYPE_7__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @wm8804_soft_reset(%struct.wm8804_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_idle(%struct.device*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
