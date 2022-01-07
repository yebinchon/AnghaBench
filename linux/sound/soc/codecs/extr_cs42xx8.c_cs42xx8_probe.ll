; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42xx8.c_cs42xx8_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42xx8.c_cs42xx8_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.of_device_id = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.cs42xx8_priv = type { %struct.TYPE_11__*, %struct.regmap*, %struct.TYPE_10__*, %struct.regmap*, i32, %struct.regmap* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate regmap: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs42xx8_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to find driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to get the clock: %ld\0A\00", align 1
@cs42xx8_supply_names = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to request supplies: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to enable supplies: %d\0A\00", align 1
@CS42XX8_CHIPID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to get device ID, ret = %d\00", align 1
@CS42XX8_CHIPID_CHIP_ID_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"unmatched chip ID: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"found device, revision %X\0A\00", align 1
@CS42XX8_CHIPID_REV_ID_MASK = common dso_local global i32 0, align 4
@cs42xx8_dai = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@cs42xx8_driver = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to register component:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs42xx8_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.cs42xx8_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %11 = load %struct.regmap*, %struct.regmap** %5, align 8
  %12 = call i64 @IS_ERR(%struct.regmap* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.regmap* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %228

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.cs42xx8_priv* @devm_kzalloc(%struct.device* %22, i32 48, i32 %23)
  store %struct.cs42xx8_priv* %24, %struct.cs42xx8_priv** %7, align 8
  %25 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %26 = icmp eq %struct.cs42xx8_priv* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %228

30:                                               ; preds = %21
  %31 = load %struct.regmap*, %struct.regmap** %5, align 8
  %32 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %33 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %32, i32 0, i32 1
  store %struct.regmap* %31, %struct.regmap** %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %36 = call i32 @dev_set_drvdata(%struct.device* %34, %struct.cs42xx8_priv* %35)
  %37 = load i32, i32* @cs42xx8_of_match, align 4
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call %struct.of_device_id* @of_match_device(i32 %37, %struct.device* %38)
  store %struct.of_device_id* %39, %struct.of_device_id** %6, align 8
  %40 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %41 = icmp ne %struct.of_device_id* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %44 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %47 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %46, i32 0, i32 2
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %47, align 8
  br label %48

48:                                               ; preds = %42, %30
  %49 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %50 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %228

58:                                               ; preds = %48
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %61 = call %struct.regmap* @devm_gpiod_get_optional(%struct.device* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %63 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %62, i32 0, i32 5
  store %struct.regmap* %61, %struct.regmap** %63, align 8
  %64 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %65 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %64, i32 0, i32 5
  %66 = load %struct.regmap*, %struct.regmap** %65, align 8
  %67 = call i64 @IS_ERR(%struct.regmap* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %71 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %70, i32 0, i32 5
  %72 = load %struct.regmap*, %struct.regmap** %71, align 8
  %73 = call i32 @PTR_ERR(%struct.regmap* %72)
  store i32 %73, i32* %3, align 4
  br label %228

74:                                               ; preds = %58
  %75 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %76 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %75, i32 0, i32 5
  %77 = load %struct.regmap*, %struct.regmap** %76, align 8
  %78 = call i32 @gpiod_set_value_cansleep(%struct.regmap* %77, i32 0)
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call %struct.regmap* @devm_clk_get(%struct.device* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %82 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %81, i32 0, i32 3
  store %struct.regmap* %80, %struct.regmap** %82, align 8
  %83 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %84 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %83, i32 0, i32 3
  %85 = load %struct.regmap*, %struct.regmap** %84, align 8
  %86 = call i64 @IS_ERR(%struct.regmap* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %74
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %91 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %90, i32 0, i32 3
  %92 = load %struct.regmap*, %struct.regmap** %91, align 8
  %93 = call i32 @PTR_ERR(%struct.regmap* %92)
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %228

97:                                               ; preds = %74
  %98 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %99 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %98, i32 0, i32 3
  %100 = load %struct.regmap*, %struct.regmap** %99, align 8
  %101 = call i32 @clk_get_rate(%struct.regmap* %100)
  %102 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %103 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %124, %97
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %107 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %108)
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %104
  %112 = load i32*, i32** @cs42xx8_supply_names, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %118 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 %116, i32* %123, align 4
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %104

127:                                              ; preds = %104
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %130 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %131)
  %133 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %134 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = call i32 @devm_regulator_bulk_get(%struct.device* %128, i32 %132, %struct.TYPE_11__* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %127
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %228

144:                                              ; preds = %127
  %145 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %146 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %147)
  %149 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %150 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %149, i32 0, i32 0
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = call i32 @regulator_bulk_enable(i32 %148, %struct.TYPE_11__* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %144
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %228

160:                                              ; preds = %144
  %161 = call i32 @msleep(i32 5)
  %162 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %163 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %162, i32 0, i32 1
  %164 = load %struct.regmap*, %struct.regmap** %163, align 8
  %165 = load i32, i32* @CS42XX8_CHIPID, align 4
  %166 = call i32 @regmap_read(%struct.regmap* %164, i32 %165, i32* %9)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  br label %218

173:                                              ; preds = %160
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @CS42XX8_CHIPID_CHIP_ID_MASK, align 4
  %176 = and i32 %174, %175
  %177 = ashr i32 %176, 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %173
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @CS42XX8_CHIPID_CHIP_ID_MASK, align 4
  %183 = and i32 %181, %182
  %184 = ashr i32 %183, 4
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %8, align 4
  br label %218

188:                                              ; preds = %173
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @CS42XX8_CHIPID_REV_ID_MASK, align 4
  %192 = and i32 %190, %191
  %193 = call i32 @dev_info(%struct.device* %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %192)
  %194 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %195 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %194, i32 0, i32 2
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cs42xx8_dai, i32 0, i32 1), align 4
  %199 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %200 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %199, i32 0, i32 2
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 %203, 2
  store i32 %204, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cs42xx8_dai, i32 0, i32 0, i32 0), align 4
  %205 = load %struct.device*, %struct.device** %4, align 8
  %206 = call i32 @devm_snd_soc_register_component(%struct.device* %205, i32* @cs42xx8_driver, %struct.TYPE_12__* @cs42xx8_dai, i32 1)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %188
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %211)
  br label %218

213:                                              ; preds = %188
  %214 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %215 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %214, i32 0, i32 1
  %216 = load %struct.regmap*, %struct.regmap** %215, align 8
  %217 = call i32 @regcache_cache_only(%struct.regmap* %216, i32 1)
  br label %218

218:                                              ; preds = %213, %209, %179, %169
  %219 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %220 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %219, i32 0, i32 0
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %221)
  %223 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %224 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %223, i32 0, i32 0
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = call i32 @regulator_bulk_disable(i32 %222, %struct.TYPE_11__* %225)
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %218, %155, %139, %88, %69, %53, %27, %14
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.cs42xx8_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.cs42xx8_priv*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.regmap* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.regmap*, i32) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_get_rate(%struct.regmap*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @regcache_cache_only(%struct.regmap*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
