; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.cs42l42_private = type { %struct.TYPE_13__*, i64, i64 }
%struct.TYPE_13__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs42l42_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@cs42l42_supply_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Found reset GPIO\0A\00", align 1
@cs42l42_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"cs42l42\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@CS42L42_DEVID_AB = common dso_local global i32 0, align 4
@CS42L42_DEVID_CD = common dso_local global i32 0, align 4
@CS42L42_DEVID_E = common dso_local global i32 0, align 4
@CS42L42_CHIP_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"CS42L42 Device ID (%X). Expected %X\0A\00", align 1
@CS42L42_REVID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Get Revision ID failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Cirrus Logic CS42L42, Revision: %02X\0A\00", align 1
@CS42L42_PWR_CTL1 = common dso_local global i32 0, align 4
@CS42L42_ASP_DAO_PDN_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_DAI_PDN_MASK = common dso_local global i32 0, align 4
@CS42L42_MIXER_PDN_MASK = common dso_local global i32 0, align 4
@CS42L42_EQ_PDN_MASK = common dso_local global i32 0, align 4
@CS42L42_HP_PDN_MASK = common dso_local global i32 0, align 4
@CS42L42_ADC_PDN_MASK = common dso_local global i32 0, align 4
@CS42L42_PDN_ALL_MASK = common dso_local global i32 0, align 4
@CS42L42_ASP_DAO_PDN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_ASP_DAI_PDN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_MIXER_PDN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_EQ_PDN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HP_PDN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_ADC_PDN_SHIFT = common dso_local global i32 0, align 4
@CS42L42_PDN_ALL_SHIFT = common dso_local global i32 0, align 4
@soc_component_dev_cs42l42 = common dso_local global i32 0, align 4
@cs42l42_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cs42l42_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l42_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.cs42l42_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cs42l42_private* @devm_kzalloc(%struct.TYPE_14__* %12, i32 24, i32 %13)
  store %struct.cs42l42_private* %14, %struct.cs42l42_private** %6, align 8
  %15 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %16 = icmp ne %struct.cs42l42_private* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %287

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.cs42l42_private* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i64 @devm_regmap_init_i2c(%struct.i2c_client* %24, i32* @cs42l42_regmap)
  %26 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %27 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %29 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @IS_ERR(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %35 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @PTR_ERR(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %287

43:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %47 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %48)
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load i32*, i32** @cs42l42_supply_names, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %58 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %44

67:                                               ; preds = %44
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %71 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %72)
  %74 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %75 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = call i32 @devm_regulator_bulk_get(%struct.TYPE_14__* %69, i32 %73, %struct.TYPE_13__* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %67
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %287

86:                                               ; preds = %67
  %87 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %88 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %89)
  %91 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %92 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = call i32 @regulator_bulk_enable(i32 %90, %struct.TYPE_13__* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %287

103:                                              ; preds = %86
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %107 = call i64 @devm_gpiod_get_optional(%struct.TYPE_14__* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %109 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %111 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @IS_ERR(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %117 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @PTR_ERR(i64 %118)
  store i32 %119, i32* %3, align 4
  br label %287

120:                                              ; preds = %103
  %121 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %122 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = call i32 @dev_dbg(%struct.TYPE_14__* %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %130 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @gpiod_set_value_cansleep(i64 %131, i32 1)
  br label %133

133:                                              ; preds = %125, %120
  %134 = call i32 @mdelay(i32 3)
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 0
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @cs42l42_irq_thread, align 4
  %141 = load i32, i32* @IRQF_ONESHOT, align 4
  %142 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %145 = call i32 @devm_request_threaded_irq(%struct.TYPE_14__* %136, i32 %139, i32* null, i32 %140, i32 %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.cs42l42_private* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %133
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %148, %133
  %154 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %155 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @CS42L42_DEVID_AB, align 4
  %158 = call i32 @regmap_read(i64 %156, i32 %157, i32* %10)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %10, align 4
  %160 = and i32 %159, 255
  %161 = shl i32 %160, 12
  store i32 %161, i32* %9, align 4
  %162 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %163 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @CS42L42_DEVID_CD, align 4
  %166 = call i32 @regmap_read(i64 %164, i32 %165, i32* %10)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %10, align 4
  %168 = and i32 %167, 255
  %169 = shl i32 %168, 4
  %170 = load i32, i32* %9, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %9, align 4
  %172 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %173 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @CS42L42_DEVID_E, align 4
  %176 = call i32 @regmap_read(i64 %174, i32 %175, i32* %10)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %10, align 4
  %178 = and i32 %177, 240
  %179 = lshr i32 %178, 4
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @CS42L42_CHIP_ID, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %153
  %186 = load i32, i32* @ENODEV, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %7, align 4
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %188, i32 0, i32 0
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @CS42L42_CHIP_ID, align 4
  %192 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %189, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %190, i32 %191)
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %287

194:                                              ; preds = %153
  %195 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %196 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* @CS42L42_REVID, align 4
  %199 = call i32 @regmap_read(i64 %197, i32 %198, i32* %10)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %194
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 0
  %205 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %204, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %3, align 4
  br label %287

207:                                              ; preds = %194
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 0
  %210 = load i32, i32* %10, align 4
  %211 = and i32 %210, 255
  %212 = call i32 @dev_info(%struct.TYPE_14__* %209, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %211)
  %213 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %214 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @CS42L42_PWR_CTL1, align 4
  %217 = load i32, i32* @CS42L42_ASP_DAO_PDN_MASK, align 4
  %218 = load i32, i32* @CS42L42_ASP_DAI_PDN_MASK, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @CS42L42_MIXER_PDN_MASK, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @CS42L42_EQ_PDN_MASK, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CS42L42_HP_PDN_MASK, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @CS42L42_ADC_PDN_MASK, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @CS42L42_PDN_ALL_MASK, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @CS42L42_ASP_DAO_PDN_SHIFT, align 4
  %231 = shl i32 1, %230
  %232 = load i32, i32* @CS42L42_ASP_DAI_PDN_SHIFT, align 4
  %233 = shl i32 1, %232
  %234 = or i32 %231, %233
  %235 = load i32, i32* @CS42L42_MIXER_PDN_SHIFT, align 4
  %236 = shl i32 1, %235
  %237 = or i32 %234, %236
  %238 = load i32, i32* @CS42L42_EQ_PDN_SHIFT, align 4
  %239 = shl i32 1, %238
  %240 = or i32 %237, %239
  %241 = load i32, i32* @CS42L42_HP_PDN_SHIFT, align 4
  %242 = shl i32 1, %241
  %243 = or i32 %240, %242
  %244 = load i32, i32* @CS42L42_ADC_PDN_SHIFT, align 4
  %245 = shl i32 1, %244
  %246 = or i32 %243, %245
  %247 = load i32, i32* @CS42L42_PDN_ALL_SHIFT, align 4
  %248 = shl i32 0, %247
  %249 = or i32 %246, %248
  %250 = call i32 @regmap_update_bits(i64 %215, i32 %216, i32 %229, i32 %249)
  %251 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %252 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %207
  %257 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %258 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %259 = call i32 @cs42l42_handle_device_data(%struct.i2c_client* %257, %struct.cs42l42_private* %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %3, align 4
  br label %287

264:                                              ; preds = %256
  br label %265

265:                                              ; preds = %264, %207
  %266 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %267 = call i32 @cs42l42_setup_hs_type_detect(%struct.cs42l42_private* %266)
  %268 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %269 = call i32 @cs42l42_set_interrupt_masks(%struct.cs42l42_private* %268)
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %270, i32 0, i32 0
  %272 = call i32 @devm_snd_soc_register_component(%struct.TYPE_14__* %271, i32* @soc_component_dev_cs42l42, i32* @cs42l42_dai, i32 1)
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %277

276:                                              ; preds = %265
  store i32 0, i32* %3, align 4
  br label %287

277:                                              ; preds = %275
  %278 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %279 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %278, i32 0, i32 0
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %279, align 8
  %281 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %280)
  %282 = load %struct.cs42l42_private*, %struct.cs42l42_private** %6, align 8
  %283 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %282, i32 0, i32 0
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %283, align 8
  %285 = call i32 @regulator_bulk_disable(i32 %281, %struct.TYPE_13__* %284)
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %3, align 4
  br label %287

287:                                              ; preds = %277, %276, %262, %202, %185, %115, %97, %80, %33, %17
  %288 = load i32, i32* %3, align 4
  ret i32 %288
}

declare dso_local %struct.cs42l42_private* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cs42l42_private*) #1

declare dso_local i64 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_14__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @devm_gpiod_get_optional(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_14__*, i32, i32*, i32, i32, i8*, %struct.cs42l42_private*) #1

declare dso_local i32 @regmap_read(i64, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

declare dso_local i32 @cs42l42_handle_device_data(%struct.i2c_client*, %struct.cs42l42_private*) #1

declare dso_local i32 @cs42l42_setup_hs_type_detect(%struct.cs42l42_private*) #1

declare dso_local i32 @cs42l42_set_interrupt_masks(%struct.cs42l42_private*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_14__*, i32*, i32*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
