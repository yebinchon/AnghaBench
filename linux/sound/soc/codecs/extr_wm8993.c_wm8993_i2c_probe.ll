; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8993.c_wm8993_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8993_priv = type { %struct.TYPE_7__*, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8993_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@wm8993_supply_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8993_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to read chip ID: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid ID register value %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wm8993_regmap_patch = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@WM8993_GPIO1 = common dso_local global i32 0, align 4
@WM8993_GPIO1_PD = common dso_local global i32 0, align 4
@WM8993_GPIO1_SEL_MASK = common dso_local global i32 0, align 4
@wm8993_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"wm8993\00", align 1
@soc_component_dev_wm8993 = common dso_local global i32 0, align 4
@wm8993_dai = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8993_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8993_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wm8993_priv* @devm_kzalloc(i32* %11, i32 32, i32 %12)
  store %struct.wm8993_priv* %13, %struct.wm8993_priv** %6, align 8
  %14 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %15 = icmp eq %struct.wm8993_priv* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %234

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %23 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %25 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %24, i32 0, i32 3
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %27, i32* @wm8993_regmap)
  %29 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %30 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %32 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %19
  %37 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %38 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %234

46:                                               ; preds = %19
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %49 = call i32 @i2c_set_clientdata(%struct.i2c_client* %47, %struct.wm8993_priv* %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %70, %46
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %53 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load i32*, i32** @wm8993_supply_names, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %64 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %77 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %78)
  %80 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %81 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @devm_regulator_bulk_get(i32* %75, i32 %79, %struct.TYPE_7__* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 1
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %234

92:                                               ; preds = %73
  %93 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %94 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %95)
  %97 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %98 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = call i32 @regulator_bulk_enable(i32 %96, %struct.TYPE_7__* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 1
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %234

109:                                              ; preds = %92
  %110 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %111 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @WM8993_SOFTWARE_RESET, align 4
  %114 = call i32 @regmap_read(i32 %112, i32 %113, i32* %7)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 1
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  br label %224

122:                                              ; preds = %109
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 35219
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 1
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %224

132:                                              ; preds = %122
  %133 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %134 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @WM8993_SOFTWARE_RESET, align 4
  %137 = call i32 @regmap_write(i32 %135, i32 %136, i32 65535)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %224

141:                                              ; preds = %132
  %142 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %143 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wm8993_regmap_patch, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wm8993_regmap_patch, align 8
  %147 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %146)
  %148 = call i32 @regmap_register_patch(i32 %144, %struct.TYPE_7__* %145, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %141
  %152 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %153 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @dev_warn(i32* %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %151, %141
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %157
  %163 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %164 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @WM8993_GPIO1, align 4
  %167 = load i32, i32* @WM8993_GPIO1_PD, align 4
  %168 = load i32, i32* @WM8993_GPIO1_SEL_MASK, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @regmap_update_bits(i32 %165, i32 %166, i32 %169, i32 7)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  br label %224

174:                                              ; preds = %162
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @wm8993_irq, align 4
  %179 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %180 = load i32, i32* @IRQF_ONESHOT, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %183 = call i32 @request_threaded_irq(i64 %177, i32* null, i32 %178, i32 %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.wm8993_priv* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  br label %224

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187, %157
  %189 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %190 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %191)
  %193 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %194 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %193, i32 0, i32 0
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = call i32 @regulator_bulk_disable(i32 %192, %struct.TYPE_7__* %195)
  %197 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %198 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @regcache_cache_only(i32 %199, i32 1)
  %201 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %202 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %201, i32 0, i32 1
  %203 = call i32 @devm_snd_soc_register_component(i32* %202, i32* @soc_component_dev_wm8993, i32* @wm8993_dai, i32 1)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %188
  %207 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %208 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %207, i32 0, i32 1
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @dev_err(i32* %208, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %209)
  br label %212

211:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %234

212:                                              ; preds = %206
  %213 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %214 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %222 = call i32 @free_irq(i64 %220, %struct.wm8993_priv* %221)
  br label %223

223:                                              ; preds = %217, %212
  br label %224

224:                                              ; preds = %223, %186, %173, %140, %125, %117
  %225 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %226 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %225, i32 0, i32 0
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %227)
  %229 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %230 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %229, i32 0, i32 0
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = call i32 @regulator_bulk_disable(i32 %228, %struct.TYPE_7__* %231)
  %233 = load i32, i32* %8, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %224, %211, %103, %86, %36, %16
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local %struct.wm8993_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8993_priv*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i8*, %struct.wm8993_priv*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.wm8993_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
