; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap = type { i32 }
%struct.pcm512x_priv = type { i32, i32, %struct.TYPE_6__*, i32, %struct.regmap*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcm512x_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to get supplies: %d\0A\00", align 1
@pcm512x_regulator_event_0 = common dso_local global i32 0, align 4
@pcm512x_regulator_event_1 = common dso_local global i32 0, align 4
@pcm512x_regulator_event_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to register regulator notifier: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@PCM512x_RESET = common dso_local global i32 0, align 4
@PCM512x_RSTM = common dso_local global i32 0, align 4
@PCM512x_RSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to reset device: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to enable SCLK: %d\0A\00", align 1
@PCM512x_POWER = common dso_local global i32 0, align 4
@PCM512x_RQST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to request standby: %d\0A\00", align 1
@pcm512x_component_driver = common dso_local global i32 0, align 4
@pcm512x_dai = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm512x_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.pcm512x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pcm512x_priv* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.pcm512x_priv* %11, %struct.pcm512x_priv** %6, align 8
  %12 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %13 = icmp ne %struct.pcm512x_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %247

17:                                               ; preds = %2
  %18 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %19 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %18, i32 0, i32 6
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %23 = call i32 @dev_set_drvdata(%struct.device* %21, %struct.pcm512x_priv* %22)
  %24 = load %struct.regmap*, %struct.regmap** %5, align 8
  %25 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %26 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %25, i32 0, i32 4
  store %struct.regmap* %24, %struct.regmap** %26, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %47, %17
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %30 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %31)
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load i32*, i32** @pcm512x_supply_names, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %41 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %39, i32* %46, align 4
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %53 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %54)
  %56 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %57 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @devm_regulator_bulk_get(%struct.device* %51, i32 %55, %struct.TYPE_6__* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %247

67:                                               ; preds = %50
  %68 = load i32, i32* @pcm512x_regulator_event_0, align 4
  %69 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %70 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %69, i32 0, i32 5
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* @pcm512x_regulator_event_1, align 4
  %75 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %76 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %75, i32 0, i32 5
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* @pcm512x_regulator_event_2, align 4
  %81 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %82 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %81, i32 0, i32 5
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %116, %67
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %89 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %90)
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %86
  %94 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %95 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %103 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %102, i32 0, i32 5
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = call i32 @devm_regulator_register_notifier(i32 %101, %struct.TYPE_7__* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %93
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %93
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %86

119:                                              ; preds = %86
  %120 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %121 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %120, i32 0, i32 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %122)
  %124 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %125 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %124, i32 0, i32 2
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = call i32 @regulator_bulk_enable(i32 %123, %struct.TYPE_6__* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %119
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %3, align 4
  br label %247

135:                                              ; preds = %119
  %136 = load %struct.regmap*, %struct.regmap** %5, align 8
  %137 = load i32, i32* @PCM512x_RESET, align 4
  %138 = load i32, i32* @PCM512x_RSTM, align 4
  %139 = load i32, i32* @PCM512x_RSTR, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @regmap_write(%struct.regmap* %136, i32 %137, i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  br label %237

148:                                              ; preds = %135
  %149 = load %struct.regmap*, %struct.regmap** %5, align 8
  %150 = load i32, i32* @PCM512x_RESET, align 4
  %151 = call i32 @regmap_write(%struct.regmap* %149, i32 %150, i32 0)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  br label %237

158:                                              ; preds = %148
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = call i32 @devm_clk_get(%struct.device* %159, i32* null)
  %161 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %162 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %164 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @PTR_ERR(i32 %165)
  %167 = load i32, i32* @EPROBE_DEFER, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %158
  %171 = load i32, i32* @EPROBE_DEFER, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %247

173:                                              ; preds = %158
  %174 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %175 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @IS_ERR(i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %192, label %179

179:                                              ; preds = %173
  %180 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %181 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @clk_prepare_enable(i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %179
  %187 = load %struct.device*, %struct.device** %4, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %3, align 4
  br label %247

191:                                              ; preds = %179
  br label %192

192:                                              ; preds = %191, %173
  %193 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %194 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %193, i32 0, i32 4
  %195 = load %struct.regmap*, %struct.regmap** %194, align 8
  %196 = load i32, i32* @PCM512x_POWER, align 4
  %197 = load i32, i32* @PCM512x_RQST, align 4
  %198 = load i32, i32* @PCM512x_RQST, align 4
  %199 = call i32 @regmap_update_bits(%struct.regmap* %195, i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %192
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  br label %225

206:                                              ; preds = %192
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = call i32 @pm_runtime_set_active(%struct.device* %207)
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = call i32 @pm_runtime_enable(%struct.device* %209)
  %211 = load %struct.device*, %struct.device** %4, align 8
  %212 = call i32 @pm_runtime_idle(%struct.device* %211)
  %213 = load %struct.device*, %struct.device** %4, align 8
  %214 = call i32 @devm_snd_soc_register_component(%struct.device* %213, i32* @pcm512x_component_driver, i32* @pcm512x_dai, i32 1)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %206
  %218 = load %struct.device*, %struct.device** %4, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %218, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %219)
  br label %222

221:                                              ; preds = %206
  store i32 0, i32* %3, align 4
  br label %247

222:                                              ; preds = %217
  %223 = load %struct.device*, %struct.device** %4, align 8
  %224 = call i32 @pm_runtime_disable(%struct.device* %223)
  br label %225

225:                                              ; preds = %222, %202
  %226 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %227 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @IS_ERR(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %225
  %232 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %233 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @clk_disable_unprepare(i32 %234)
  br label %236

236:                                              ; preds = %231, %225
  br label %237

237:                                              ; preds = %236, %154, %144
  %238 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %239 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %238, i32 0, i32 2
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %240)
  %242 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %243 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %242, i32 0, i32 2
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = call i32 @regulator_bulk_disable(i32 %241, %struct.TYPE_6__* %244)
  %246 = load i32, i32* %8, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %237, %221, %186, %170, %130, %62, %14
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.pcm512x_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.pcm512x_priv*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_regulator_register_notifier(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_idle(%struct.device*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
