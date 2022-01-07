; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs53l30.c_cs53l30_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs53l30.c_cs53l30_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cs53l30_private = type { i32, %struct.TYPE_5__*, i32*, i32*, i32*, i64, i32* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs53l30_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to get supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to enable supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@cs53l30_regmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@CS53L30_DEVID_AB = common dso_local global i32 0, align 4
@CS53L30_DEVID_CD = common dso_local global i32 0, align 4
@CS53L30_DEVID_E = common dso_local global i32 0, align 4
@CS53L30_DEVID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Device ID (%X). Expected %X\0A\00", align 1
@CS53L30_REVID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to get Revision ID: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@CS53L30_MUTEP_CTL1 = common dso_local global i32 0, align 4
@CS53L30_MUTEP_CTL1_MUTEALL = common dso_local global i32 0, align 4
@CS53L30_MUTEP_CTL2 = common dso_local global i32 0, align 4
@CS53L30_MUTE_PIN_POLARITY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"cirrus,micbias-lvl\00", align 1
@CS53L30_MICBIAS_CTL = common dso_local global i32 0, align 4
@CS53L30_MIC_BIAS_CTRL_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"cirrus,use-sdout2\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Cirrus Logic CS53L30, Revision: %02X\0A\00", align 1
@cs53l30_driver = common dso_local global i32 0, align 4
@cs53l30_dai = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cs53l30_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs53l30_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.cs53l30_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.cs53l30_private* @devm_kzalloc(%struct.device* %20, i32 56, i32 %21)
  store %struct.cs53l30_private* %22, %struct.cs53l30_private** %8, align 8
  %23 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %24 = icmp ne %struct.cs53l30_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %289

28:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %32 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %33)
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load i32*, i32** @cs53l30_supply_names, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %43 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %55 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %56)
  %58 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %59 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @devm_regulator_bulk_get(%struct.device* %53, i32 %57, %struct.TYPE_5__* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  br label %289

69:                                               ; preds = %52
  %70 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %71 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %72)
  %74 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %75 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @regulator_bulk_enable(i32 %73, %struct.TYPE_5__* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %289

85:                                               ; preds = %69
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %88 = call i8* @devm_gpiod_get_optional(%struct.device* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %91 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %90, i32 0, i32 6
  store i32* %89, i32** %91, align 8
  %92 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %93 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = call i64 @IS_ERR(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %99 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @PTR_ERR(i32* %100)
  store i32 %101, i32* %11, align 4
  br label %279

102:                                              ; preds = %85
  %103 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %104 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @gpiod_set_value_cansleep(i32* %105, i32 1)
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %109 = call i32 @i2c_set_clientdata(%struct.i2c_client* %107, %struct.cs53l30_private* %108)
  %110 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %111 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %110, i32 0, i32 5
  store i64 0, i64* %111, align 8
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = call i32* @devm_regmap_init_i2c(%struct.i2c_client* %112, i32* @cs53l30_regmap)
  %114 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %115 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %114, i32 0, i32 2
  store i32* %113, i32** %115, align 8
  %116 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %117 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @IS_ERR(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %102
  %122 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %123 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @PTR_ERR(i32* %124)
  store i32 %125, i32* %11, align 4
  %126 = load %struct.device*, %struct.device** %7, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %279

129:                                              ; preds = %102
  %130 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %131 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @CS53L30_DEVID_AB, align 4
  %134 = call i32 @regmap_read(i32* %132, i32 %133, i32* %10)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  %136 = shl i32 %135, 12
  store i32 %136, i32* %9, align 4
  %137 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %138 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @CS53L30_DEVID_CD, align 4
  %141 = call i32 @regmap_read(i32* %139, i32 %140, i32* %10)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %10, align 4
  %143 = shl i32 %142, 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %147 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @CS53L30_DEVID_E, align 4
  %150 = call i32 @regmap_read(i32* %148, i32 %149, i32* %10)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = and i32 %151, 240
  %153 = lshr i32 %152, 4
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @CS53L30_DEVID, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %129
  %160 = load i32, i32* @ENODEV, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %11, align 4
  %162 = load %struct.device*, %struct.device** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @CS53L30_DEVID, align 4
  %165 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %163, i32 %164)
  br label %279

166:                                              ; preds = %129
  %167 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %168 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @CS53L30_REVID, align 4
  %171 = call i32 @regmap_read(i32* %169, i32 %170, i32* %10)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load %struct.device*, %struct.device** %7, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  br label %279

178:                                              ; preds = %166
  %179 = load %struct.device*, %struct.device** %7, align 8
  %180 = call i32* @devm_clk_get(%struct.device* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %181 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %182 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %181, i32 0, i32 4
  store i32* %180, i32** %182, align 8
  %183 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %184 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = call i64 @IS_ERR(i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %178
  %189 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %190 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @PTR_ERR(i32* %191)
  %193 = load i32, i32* @ENOENT, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %198 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @PTR_ERR(i32* %199)
  store i32 %200, i32* %11, align 4
  br label %279

201:                                              ; preds = %188
  %202 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %203 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %202, i32 0, i32 4
  store i32* null, i32** %203, align 8
  br label %204

204:                                              ; preds = %201, %178
  %205 = load %struct.device*, %struct.device** %7, align 8
  %206 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %207 = call i8* @devm_gpiod_get_optional(%struct.device* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %206)
  %208 = bitcast i8* %207 to i32*
  %209 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %210 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %209, i32 0, i32 3
  store i32* %208, i32** %210, align 8
  %211 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %212 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = call i64 @IS_ERR(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %204
  %217 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %218 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @PTR_ERR(i32* %219)
  store i32 %220, i32* %11, align 4
  br label %279

221:                                              ; preds = %204
  %222 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %223 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %246

226:                                              ; preds = %221
  %227 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %228 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @CS53L30_MUTEP_CTL1, align 4
  %231 = load i32, i32* @CS53L30_MUTEP_CTL1_MUTEALL, align 4
  %232 = call i32 @regmap_write(i32* %229, i32 %230, i32 %231)
  %233 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %234 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = call i64 @gpiod_is_active_low(i32* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %226
  %239 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %240 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* @CS53L30_MUTEP_CTL2, align 4
  %243 = load i32, i32* @CS53L30_MUTE_PIN_POLARITY, align 4
  %244 = call i32 @regmap_update_bits(i32* %241, i32 %242, i32 %243, i32 0)
  br label %245

245:                                              ; preds = %238, %226
  br label %246

246:                                              ; preds = %245, %221
  %247 = load %struct.device_node*, %struct.device_node** %6, align 8
  %248 = call i32 @of_property_read_u8(%struct.device_node* %247, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* %13)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %258, label %250

250:                                              ; preds = %246
  %251 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %252 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* @CS53L30_MICBIAS_CTL, align 4
  %255 = load i32, i32* @CS53L30_MIC_BIAS_CTRL_MASK, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @regmap_update_bits(i32* %253, i32 %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %250, %246
  %259 = load %struct.device_node*, %struct.device_node** %6, align 8
  %260 = call i64 @of_property_read_bool(%struct.device_node* %259, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %264 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %263, i32 0, i32 0
  store i32 1, i32* %264, align 8
  br label %265

265:                                              ; preds = %262, %258
  %266 = load %struct.device*, %struct.device** %7, align 8
  %267 = load i32, i32* %10, align 4
  %268 = and i32 %267, 255
  %269 = call i32 @dev_info(%struct.device* %266, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %268)
  %270 = load %struct.device*, %struct.device** %7, align 8
  %271 = call i32 @devm_snd_soc_register_component(%struct.device* %270, i32* @cs53l30_driver, i32* @cs53l30_dai, i32 1)
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %265
  %275 = load %struct.device*, %struct.device** %7, align 8
  %276 = load i32, i32* %11, align 4
  %277 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %275, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %276)
  br label %279

278:                                              ; preds = %265
  store i32 0, i32* %3, align 4
  br label %289

279:                                              ; preds = %274, %216, %196, %174, %159, %121, %97
  %280 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %281 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %280, i32 0, i32 1
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %281, align 8
  %283 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %282)
  %284 = load %struct.cs53l30_private*, %struct.cs53l30_private** %8, align 8
  %285 = getelementptr inbounds %struct.cs53l30_private, %struct.cs53l30_private* %284, i32 0, i32 1
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = call i32 @regulator_bulk_disable(i32 %283, %struct.TYPE_5__* %286)
  %288 = load i32, i32* %11, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %279, %278, %80, %64, %25
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local %struct.cs53l30_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_5__*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cs53l30_private*) #1

declare dso_local i32* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @regmap_read(i32*, i32, i32*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i32*, i32, i32) #1

declare dso_local i64 @gpiod_is_active_low(i32*) #1

declare dso_local i32 @regmap_update_bits(i32*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u8(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
