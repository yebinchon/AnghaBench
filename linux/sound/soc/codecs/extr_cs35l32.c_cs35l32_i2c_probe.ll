; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l32.c_cs35l32_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l32.c_cs35l32_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.cs35l32_private = type { %struct.TYPE_16__*, i32, %struct.cs35l32_platform_data, i32 }
%struct.cs35l32_platform_data = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs35l32_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@cs35l32_supply_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@CS35L32_DEVID_AB = common dso_local global i32 0, align 4
@CS35L32_DEVID_CD = common dso_local global i32 0, align 4
@CS35L32_DEVID_E = common dso_local global i32 0, align 4
@CS35L32_CHIP_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"CS35L32 Device ID (%X). Expected %X\0A\00", align 1
@CS35L32_REV_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Get Revision ID failed\0A\00", align 1
@cs35l32_monitor_patch = common dso_local global %struct.TYPE_16__* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to apply errata patch\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Cirrus Logic CS35L32, Revision: %02X\0A\00", align 1
@CS35L32_AUDIO_LED_MNGR = common dso_local global i32 0, align 4
@CS35L32_BOOST_MASK = common dso_local global i32 0, align 4
@CS35L32_ADSP_CTL = common dso_local global i32 0, align 4
@CS35L32_ADSP_SHARE_MASK = common dso_local global i32 0, align 4
@CS35L32_ADSP_DATACFG_MASK = common dso_local global i32 0, align 4
@CS35L32_BATT_THRESHOLD = common dso_local global i32 0, align 4
@CS35L32_BATT_REC_MASK = common dso_local global i32 0, align 4
@CS35L32_BATT_THRESH_MASK = common dso_local global i32 0, align 4
@CS35L32_PWRCTL1 = common dso_local global i32 0, align 4
@CS35L32_PDN_AMP = common dso_local global i32 0, align 4
@CS35L32_INT_STATUS_1 = common dso_local global i32 0, align 4
@soc_component_dev_cs35l32 = common dso_local global i32 0, align 4
@cs35l32_dai = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cs35l32_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l32_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.cs35l32_private*, align 8
  %7 = alloca %struct.cs35l32_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.cs35l32_platform_data* @dev_get_platdata(%struct.TYPE_17__* %13)
  store %struct.cs35l32_platform_data* %14, %struct.cs35l32_platform_data** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kzalloc(%struct.TYPE_17__* %16, i32 40, i32 %17)
  %19 = bitcast i8* %18 to %struct.cs35l32_private*
  store %struct.cs35l32_private* %19, %struct.cs35l32_private** %6, align 8
  %20 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %21 = icmp ne %struct.cs35l32_private* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %362

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.cs35l32_private* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %29, i32* @cs35l32_regmap)
  %31 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %32 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %34 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %40 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %362

48:                                               ; preds = %25
  %49 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %7, align 8
  %50 = icmp ne %struct.cs35l32_platform_data* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %53 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %52, i32 0, i32 2
  %54 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %7, align 8
  %55 = bitcast %struct.cs35l32_platform_data* %53 to i8*
  %56 = bitcast %struct.cs35l32_platform_data* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 20, i1 false)
  br label %85

57:                                               ; preds = %48
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @devm_kzalloc(%struct.TYPE_17__* %59, i32 20, i32 %60)
  %62 = bitcast i8* %61 to %struct.cs35l32_platform_data*
  store %struct.cs35l32_platform_data* %62, %struct.cs35l32_platform_data** %7, align 8
  %63 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %7, align 8
  %64 = icmp ne %struct.cs35l32_platform_data* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %362

68:                                               ; preds = %57
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %77 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %76, i32 0, i32 2
  %78 = call i32 @cs35l32_handle_of_data(%struct.i2c_client* %75, %struct.cs35l32_platform_data* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %362

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %51
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %106, %85
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %89 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %90)
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load i32*, i32** @cs35l32_supply_names, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %100 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 %98, i32* %105, align 4
  br label %106

106:                                              ; preds = %93
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %86

109:                                              ; preds = %86
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %113 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %114)
  %116 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %117 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %116, i32 0, i32 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = call i32 @devm_regulator_bulk_get(%struct.TYPE_17__* %111, i32 %115, %struct.TYPE_16__* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %109
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %362

128:                                              ; preds = %109
  %129 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %130 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %131)
  %133 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %134 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %133, i32 0, i32 0
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = call i32 @regulator_bulk_enable(i32 %132, %struct.TYPE_16__* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %362

145:                                              ; preds = %128
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %149 = call i32 @devm_gpiod_get_optional(%struct.TYPE_17__* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %151 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %153 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %145
  %158 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %159 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %3, align 4
  br label %362

162:                                              ; preds = %145
  %163 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %164 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @gpiod_set_value_cansleep(i32 %165, i32 1)
  %167 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %168 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CS35L32_DEVID_AB, align 4
  %171 = call i32 @regmap_read(i32 %169, i32 %170, i32* %11)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %11, align 4
  %173 = and i32 %172, 255
  %174 = shl i32 %173, 12
  store i32 %174, i32* %10, align 4
  %175 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %176 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @CS35L32_DEVID_CD, align 4
  %179 = call i32 @regmap_read(i32 %177, i32 %178, i32* %11)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %11, align 4
  %181 = and i32 %180, 255
  %182 = shl i32 %181, 4
  %183 = load i32, i32* %10, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %10, align 4
  %185 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %186 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @CS35L32_DEVID_E, align 4
  %189 = call i32 @regmap_read(i32 %187, i32 %188, i32* %11)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %11, align 4
  %191 = and i32 %190, 240
  %192 = lshr i32 %191, 4
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @CS35L32_CHIP_ID, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %162
  %199 = load i32, i32* @ENODEV, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %8, align 4
  %201 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %202 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %201, i32 0, i32 0
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @CS35L32_CHIP_ID, align 4
  %205 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %203, i32 %204)
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %3, align 4
  br label %362

207:                                              ; preds = %162
  %208 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %209 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @CS35L32_REV_ID, align 4
  %212 = call i32 @regmap_read(i32 %210, i32 %211, i32* %11)
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 0
  %218 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %3, align 4
  br label %362

220:                                              ; preds = %207
  %221 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %222 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cs35l32_monitor_patch, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cs35l32_monitor_patch, align 8
  %226 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %225)
  %227 = call i32 @regmap_register_patch(i32 %223, %struct.TYPE_16__* %224, i32 %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %220
  %231 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %232 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %231, i32 0, i32 0
  %233 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %232, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %3, align 4
  br label %362

235:                                              ; preds = %220
  %236 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %237 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %236, i32 0, i32 0
  %238 = load i32, i32* %11, align 4
  %239 = and i32 %238, 255
  %240 = call i32 @dev_info(%struct.TYPE_17__* %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %239)
  %241 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %242 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %235
  %247 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %248 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @CS35L32_AUDIO_LED_MNGR, align 4
  %251 = load i32, i32* @CS35L32_BOOST_MASK, align 4
  %252 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %253 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @regmap_update_bits(i32 %249, i32 %250, i32 %251, i32 %255)
  br label %257

257:                                              ; preds = %246, %235
  %258 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %259 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %257
  %264 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %265 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @CS35L32_ADSP_CTL, align 4
  %268 = load i32, i32* @CS35L32_ADSP_SHARE_MASK, align 4
  %269 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %270 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = shl i32 %272, 3
  %274 = call i32 @regmap_update_bits(i32 %266, i32 %267, i32 %268, i32 %273)
  br label %275

275:                                              ; preds = %263, %257
  %276 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %277 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %275
  %282 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %283 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @CS35L32_ADSP_CTL, align 4
  %286 = load i32, i32* @CS35L32_ADSP_DATACFG_MASK, align 4
  %287 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %288 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = shl i32 %290, 4
  %292 = call i32 @regmap_update_bits(i32 %284, i32 %285, i32 %286, i32 %291)
  br label %293

293:                                              ; preds = %281, %275
  %294 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %295 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %311

299:                                              ; preds = %293
  %300 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %301 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @CS35L32_BATT_THRESHOLD, align 4
  %304 = load i32, i32* @CS35L32_BATT_REC_MASK, align 4
  %305 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %306 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = shl i32 %308, 1
  %310 = call i32 @regmap_update_bits(i32 %302, i32 %303, i32 %304, i32 %309)
  br label %311

311:                                              ; preds = %299, %293
  %312 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %313 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %329

317:                                              ; preds = %311
  %318 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %319 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @CS35L32_BATT_THRESHOLD, align 4
  %322 = load i32, i32* @CS35L32_BATT_THRESH_MASK, align 4
  %323 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %324 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 4
  %327 = shl i32 %326, 4
  %328 = call i32 @regmap_update_bits(i32 %320, i32 %321, i32 %322, i32 %327)
  br label %329

329:                                              ; preds = %317, %311
  %330 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %331 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @CS35L32_PWRCTL1, align 4
  %334 = load i32, i32* @CS35L32_PDN_AMP, align 4
  %335 = load i32, i32* @CS35L32_PDN_AMP, align 4
  %336 = call i32 @regmap_update_bits(i32 %332, i32 %333, i32 %334, i32 %335)
  %337 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %338 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @CS35L32_INT_STATUS_1, align 4
  %341 = call i32 @regmap_read(i32 %339, i32 %340, i32* %11)
  store i32 %341, i32* %8, align 4
  %342 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %343 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %342, i32 0, i32 0
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cs35l32_dai, align 8
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cs35l32_dai, align 8
  %346 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %345)
  %347 = call i32 @devm_snd_soc_register_component(%struct.TYPE_17__* %343, i32* @soc_component_dev_cs35l32, %struct.TYPE_16__* %344, i32 %346)
  store i32 %347, i32* %8, align 4
  %348 = load i32, i32* %8, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %329
  br label %352

351:                                              ; preds = %329
  store i32 0, i32* %3, align 4
  br label %362

352:                                              ; preds = %350
  %353 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %354 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %353, i32 0, i32 0
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %354, align 8
  %356 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %355)
  %357 = load %struct.cs35l32_private*, %struct.cs35l32_private** %6, align 8
  %358 = getelementptr inbounds %struct.cs35l32_private, %struct.cs35l32_private* %357, i32 0, i32 0
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %358, align 8
  %360 = call i32 @regulator_bulk_disable(i32 %356, %struct.TYPE_16__* %359)
  %361 = load i32, i32* %8, align 4
  store i32 %361, i32* %3, align 4
  br label %362

362:                                              ; preds = %352, %351, %230, %215, %198, %157, %139, %122, %81, %65, %38, %22
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local %struct.cs35l32_platform_data* @dev_get_platdata(%struct.TYPE_17__*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cs35l32_private*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cs35l32_handle_of_data(%struct.i2c_client*, %struct.cs35l32_platform_data*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_16__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_17__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_register_patch(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_17__*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
