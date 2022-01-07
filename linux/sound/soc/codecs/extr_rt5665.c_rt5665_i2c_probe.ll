; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.rt5665_platform_data = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.rt5665_priv = type { i64, i32, i32, i32, i32, i32, %struct.rt5665_platform_data, %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt5665_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rt5665\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Fail gpio_request gpio_ldo\0A\00", align 1
@rt5665_regmap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RT5665_DEVICE_ID = common dso_local global i32 0, align 4
@DEVICE_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Device with ID register %x is not rt5665\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5665_RESET = common dso_local global i32 0, align 4
@CODEC_5666 = common dso_local global i64 0, align 8
@CODEC_5665 = common dso_local global i64 0, align 8
@RT5665_IN1_IN2 = common dso_local global i32 0, align 4
@RT5665_IN1_DF_MASK = common dso_local global i32 0, align 4
@RT5665_IN2_DF_MASK = common dso_local global i32 0, align 4
@RT5665_IN3_IN4 = common dso_local global i32 0, align 4
@RT5665_IN3_DF_MASK = common dso_local global i32 0, align 4
@RT5665_IN4_DF_MASK = common dso_local global i32 0, align 4
@RT5665_DMIC1_NULL = common dso_local global i32 0, align 4
@RT5665_DMIC2_NULL = common dso_local global i32 0, align 4
@RT5665_GPIO_CTRL_2 = common dso_local global i32 0, align 4
@RT5665_GP9_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP9_PIN_DMIC1_SCL = common dso_local global i32 0, align 4
@RT5665_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_GP8_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP8_PIN_DMIC2_SCL = common dso_local global i32 0, align 4
@RT5665_DMIC_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_DMIC_1_DP_MASK = common dso_local global i32 0, align 4
@RT5665_DMIC_1_DP_IN2N = common dso_local global i32 0, align 4
@RT5665_DMIC_1_DP_GPIO4 = common dso_local global i32 0, align 4
@RT5665_GP4_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP4_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"no DMIC1\0A\00", align 1
@RT5665_DMIC_2_DP_MASK = common dso_local global i32 0, align 4
@RT5665_DMIC_2_DP_IN2P = common dso_local global i32 0, align 4
@RT5665_DMIC_2_DP_GPIO5 = common dso_local global i32 0, align 4
@RT5665_GP5_PIN_MASK = common dso_local global i32 0, align 4
@RT5665_GP5_PIN_DMIC2_SDA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"no DMIC2\0A\00", align 1
@RT5665_HP_LOGIC_CTRL_2 = common dso_local global i32 0, align 4
@RT5665_EJD_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_VREF_POW_MASK = common dso_local global i32 0, align 4
@RT5665_VREF_POW_REG = common dso_local global i32 0, align 4
@RT5665_STO1_DAC_SIL_DET = common dso_local global i32 0, align 4
@RT5665_DEB_STO_DAC_MASK = common dso_local global i32 0, align 4
@RT5665_DEB_80_MS = common dso_local global i32 0, align 4
@RT5665_HP_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5665_PM_HP_MASK = common dso_local global i32 0, align 4
@RT5665_PM_HP_HV = common dso_local global i32 0, align 4
@RT5665_GP4_PF_MASK = common dso_local global i32 0, align 4
@RT5665_GP4_PF_IN = common dso_local global i32 0, align 4
@RT5665_GPIO_CTRL_3 = common dso_local global i32 0, align 4
@RT5665_GP8_PF_MASK = common dso_local global i32 0, align 4
@RT5665_GP8_PF_IN = common dso_local global i32 0, align 4
@RT5665_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5665_HP_DRIVER_MASK = common dso_local global i32 0, align 4
@RT5665_LDO1_DVO_MASK = common dso_local global i32 0, align 4
@RT5665_HP_DRIVER_5X = common dso_local global i32 0, align 4
@RT5665_LDO1_DVO_12 = common dso_local global i32 0, align 4
@rt5665_jack_detect_handler = common dso_local global i32 0, align 4
@rt5665_calibrate_handler = common dso_local global i32 0, align 4
@rt5665_jd_check_handler = common dso_local global i32 0, align 4
@rt5665_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to reguest IRQ: %d\0A\00", align 1
@soc_component_dev_rt5665 = common dso_local global i32 0, align 4
@rt5665_dai = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5665_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5665_platform_data*, align 8
  %7 = alloca %struct.rt5665_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.rt5665_platform_data* @dev_get_platdata(i32* %12)
  store %struct.rt5665_platform_data* %13, %struct.rt5665_platform_data** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rt5665_priv* @devm_kzalloc(i32* %15, i32 88, i32 %16)
  store %struct.rt5665_priv* %17, %struct.rt5665_priv** %7, align 8
  %18 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %19 = icmp eq %struct.rt5665_priv* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %438

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %26 = call i32 @i2c_set_clientdata(%struct.i2c_client* %24, %struct.rt5665_priv* %25)
  %27 = load %struct.rt5665_platform_data*, %struct.rt5665_platform_data** %6, align 8
  %28 = icmp ne %struct.rt5665_platform_data* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %31 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %30, i32 0, i32 6
  %32 = load %struct.rt5665_platform_data*, %struct.rt5665_platform_data** %6, align 8
  %33 = bitcast %struct.rt5665_platform_data* %31 to i8*
  %34 = bitcast %struct.rt5665_platform_data* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 48, i1 false)
  br label %40

35:                                               ; preds = %23
  %36 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @rt5665_parse_dt(%struct.rt5665_priv* %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %29
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %44 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %43, i32 0, i32 7
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %45)
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load i32*, i32** @rt5665_supply_names, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %55 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %54, i32 0, i32 7
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %68 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %67, i32 0, i32 7
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %69)
  %71 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %72 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %71, i32 0, i32 7
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @devm_regulator_bulk_get(i32* %66, i32 %70, %struct.TYPE_6__* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %438

83:                                               ; preds = %64
  %84 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %85 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %84, i32 0, i32 7
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %86)
  %88 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %88, i32 0, i32 7
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @regulator_bulk_enable(i32 %87, %struct.TYPE_6__* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %438

100:                                              ; preds = %83
  %101 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %102 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @gpio_is_valid(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %111 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %115 = call i64 @devm_gpio_request_one(i32* %109, i32 %113, i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %117, %107
  br label %122

122:                                              ; preds = %121, %100
  %123 = call i32 @usleep_range(i32 300000, i32 350000)
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %124, i32* @rt5665_regmap)
  %126 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %127 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %129 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @IS_ERR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %122
  %134 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %135 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PTR_ERR(i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = load i32, i32* %9, align 4
  %141 = call i32 (i32*, i8*, ...) @dev_err(i32* %139, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %3, align 4
  br label %438

143:                                              ; preds = %122
  %144 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %145 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @RT5665_DEVICE_ID, align 4
  %148 = call i32 @regmap_read(i32 %146, i32 %147, i32* %10)
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @DEVICE_ID, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 0
  %155 = load i32, i32* %10, align 4
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @ENODEV, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %438

159:                                              ; preds = %143
  %160 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %161 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @RT5665_RESET, align 4
  %164 = call i32 @regmap_read(i32 %162, i32 %163, i32* %10)
  %165 = load i32, i32* %10, align 4
  switch i32 %165, label %171 [
    i32 0, label %166
    i32 3, label %170
  ]

166:                                              ; preds = %159
  %167 = load i64, i64* @CODEC_5666, align 8
  %168 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %169 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %175

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %159, %170
  %172 = load i64, i64* @CODEC_5665, align 8
  %173 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %174 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %171, %166
  %176 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %177 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @RT5665_RESET, align 4
  %180 = call i32 @regmap_write(i32 %178, i32 %179, i32 0)
  %181 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %182 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %175
  %187 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %188 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @RT5665_IN1_IN2, align 4
  %191 = load i32, i32* @RT5665_IN1_DF_MASK, align 4
  %192 = load i32, i32* @RT5665_IN1_DF_MASK, align 4
  %193 = call i32 @regmap_update_bits(i32 %189, i32 %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %186, %175
  %195 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %196 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %194
  %201 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %202 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @RT5665_IN1_IN2, align 4
  %205 = load i32, i32* @RT5665_IN2_DF_MASK, align 4
  %206 = load i32, i32* @RT5665_IN2_DF_MASK, align 4
  %207 = call i32 @regmap_update_bits(i32 %203, i32 %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %200, %194
  %209 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %210 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %216 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @RT5665_IN3_IN4, align 4
  %219 = load i32, i32* @RT5665_IN3_DF_MASK, align 4
  %220 = load i32, i32* @RT5665_IN3_DF_MASK, align 4
  %221 = call i32 @regmap_update_bits(i32 %217, i32 %218, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %214, %208
  %223 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %224 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %222
  %229 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %230 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @RT5665_IN3_IN4, align 4
  %233 = load i32, i32* @RT5665_IN4_DF_MASK, align 4
  %234 = load i32, i32* @RT5665_IN4_DF_MASK, align 4
  %235 = call i32 @regmap_update_bits(i32 %231, i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %228, %222
  %237 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %238 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @RT5665_DMIC1_NULL, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %250, label %243

243:                                              ; preds = %236
  %244 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %245 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @RT5665_DMIC2_NULL, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %329

250:                                              ; preds = %243, %236
  %251 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %252 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @RT5665_GPIO_CTRL_2, align 4
  %255 = load i32, i32* @RT5665_GP9_PIN_MASK, align 4
  %256 = load i32, i32* @RT5665_GP9_PIN_DMIC1_SCL, align 4
  %257 = call i32 @regmap_update_bits(i32 %253, i32 %254, i32 %255, i32 %256)
  %258 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %259 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @RT5665_GPIO_CTRL_1, align 4
  %262 = load i32, i32* @RT5665_GP8_PIN_MASK, align 4
  %263 = load i32, i32* @RT5665_GP8_PIN_DMIC2_SCL, align 4
  %264 = call i32 @regmap_update_bits(i32 %260, i32 %261, i32 %262, i32 %263)
  %265 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %266 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %265, i32 0, i32 6
  %267 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  switch i32 %268, label %292 [
    i32 130, label %269
    i32 131, label %277
  ]

269:                                              ; preds = %250
  %270 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %271 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @RT5665_DMIC_CTRL_1, align 4
  %274 = load i32, i32* @RT5665_DMIC_1_DP_MASK, align 4
  %275 = load i32, i32* @RT5665_DMIC_1_DP_IN2N, align 4
  %276 = call i32 @regmap_update_bits(i32 %272, i32 %273, i32 %274, i32 %275)
  br label %296

277:                                              ; preds = %250
  %278 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %279 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @RT5665_DMIC_CTRL_1, align 4
  %282 = load i32, i32* @RT5665_DMIC_1_DP_MASK, align 4
  %283 = load i32, i32* @RT5665_DMIC_1_DP_GPIO4, align 4
  %284 = call i32 @regmap_update_bits(i32 %280, i32 %281, i32 %282, i32 %283)
  %285 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %286 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @RT5665_GPIO_CTRL_1, align 4
  %289 = load i32, i32* @RT5665_GP4_PIN_MASK, align 4
  %290 = load i32, i32* @RT5665_GP4_PIN_DMIC1_SDA, align 4
  %291 = call i32 @regmap_update_bits(i32 %287, i32 %288, i32 %289, i32 %290)
  br label %296

292:                                              ; preds = %250
  %293 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %294 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %293, i32 0, i32 0
  %295 = call i32 @dev_dbg(i32* %294, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %296

296:                                              ; preds = %292, %277, %269
  %297 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %298 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %297, i32 0, i32 6
  %299 = getelementptr inbounds %struct.rt5665_platform_data, %struct.rt5665_platform_data* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  switch i32 %300, label %324 [
    i32 128, label %301
    i32 129, label %309
  ]

301:                                              ; preds = %296
  %302 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %303 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @RT5665_DMIC_CTRL_1, align 4
  %306 = load i32, i32* @RT5665_DMIC_2_DP_MASK, align 4
  %307 = load i32, i32* @RT5665_DMIC_2_DP_IN2P, align 4
  %308 = call i32 @regmap_update_bits(i32 %304, i32 %305, i32 %306, i32 %307)
  br label %328

309:                                              ; preds = %296
  %310 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %311 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @RT5665_DMIC_CTRL_1, align 4
  %314 = load i32, i32* @RT5665_DMIC_2_DP_MASK, align 4
  %315 = load i32, i32* @RT5665_DMIC_2_DP_GPIO5, align 4
  %316 = call i32 @regmap_update_bits(i32 %312, i32 %313, i32 %314, i32 %315)
  %317 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %318 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @RT5665_GPIO_CTRL_1, align 4
  %321 = load i32, i32* @RT5665_GP5_PIN_MASK, align 4
  %322 = load i32, i32* @RT5665_GP5_PIN_DMIC2_SDA, align 4
  %323 = call i32 @regmap_update_bits(i32 %319, i32 %320, i32 %321, i32 %322)
  br label %328

324:                                              ; preds = %296
  %325 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %326 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %325, i32 0, i32 0
  %327 = call i32 @dev_dbg(i32* %326, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %328

328:                                              ; preds = %324, %309, %301
  br label %329

329:                                              ; preds = %328, %243
  %330 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %331 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @RT5665_HP_LOGIC_CTRL_2, align 4
  %334 = call i32 @regmap_write(i32 %332, i32 %333, i32 2)
  %335 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %336 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @RT5665_EJD_CTRL_1, align 4
  %339 = load i32, i32* @RT5665_VREF_POW_MASK, align 4
  %340 = or i32 61440, %339
  %341 = load i32, i32* @RT5665_VREF_POW_REG, align 4
  %342 = or i32 57344, %341
  %343 = call i32 @regmap_update_bits(i32 %337, i32 %338, i32 %340, i32 %342)
  %344 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %345 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @RT5665_STO1_DAC_SIL_DET, align 4
  %348 = load i32, i32* @RT5665_DEB_STO_DAC_MASK, align 4
  %349 = load i32, i32* @RT5665_DEB_80_MS, align 4
  %350 = call i32 @regmap_update_bits(i32 %346, i32 %347, i32 %348, i32 %349)
  %351 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %352 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @RT5665_HP_CHARGE_PUMP_1, align 4
  %355 = load i32, i32* @RT5665_PM_HP_MASK, align 4
  %356 = load i32, i32* @RT5665_PM_HP_HV, align 4
  %357 = call i32 @regmap_update_bits(i32 %353, i32 %354, i32 %355, i32 %356)
  %358 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %359 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @CODEC_5666, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %378

363:                                              ; preds = %329
  %364 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %365 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @RT5665_GPIO_CTRL_2, align 4
  %368 = load i32, i32* @RT5665_GP4_PF_MASK, align 4
  %369 = load i32, i32* @RT5665_GP4_PF_IN, align 4
  %370 = call i32 @regmap_update_bits(i32 %366, i32 %367, i32 %368, i32 %369)
  %371 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %372 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @RT5665_GPIO_CTRL_3, align 4
  %375 = load i32, i32* @RT5665_GP8_PF_MASK, align 4
  %376 = load i32, i32* @RT5665_GP8_PF_IN, align 4
  %377 = call i32 @regmap_update_bits(i32 %373, i32 %374, i32 %375, i32 %376)
  br label %378

378:                                              ; preds = %363, %329
  %379 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %380 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @RT5665_PWR_ANLG_1, align 4
  %383 = load i32, i32* @RT5665_HP_DRIVER_MASK, align 4
  %384 = load i32, i32* @RT5665_LDO1_DVO_MASK, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* @RT5665_HP_DRIVER_5X, align 4
  %387 = load i32, i32* @RT5665_LDO1_DVO_12, align 4
  %388 = or i32 %386, %387
  %389 = call i32 @regmap_update_bits(i32 %381, i32 %382, i32 %385, i32 %388)
  %390 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %391 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %390, i32 0, i32 4
  %392 = load i32, i32* @rt5665_jack_detect_handler, align 4
  %393 = call i32 @INIT_DELAYED_WORK(i32* %391, i32 %392)
  %394 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %395 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %394, i32 0, i32 3
  %396 = load i32, i32* @rt5665_calibrate_handler, align 4
  %397 = call i32 @INIT_DELAYED_WORK(i32* %395, i32 %396)
  %398 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %399 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %398, i32 0, i32 2
  %400 = load i32, i32* @rt5665_jd_check_handler, align 4
  %401 = call i32 @INIT_DELAYED_WORK(i32* %399, i32 %400)
  %402 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %403 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %402, i32 0, i32 1
  %404 = call i32 @mutex_init(i32* %403)
  %405 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %406 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %431

409:                                              ; preds = %378
  %410 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %411 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %410, i32 0, i32 0
  %412 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %413 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load i32, i32* @rt5665_irq, align 4
  %416 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %417 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %418 = or i32 %416, %417
  %419 = load i32, i32* @IRQF_ONESHOT, align 4
  %420 = or i32 %418, %419
  %421 = load %struct.rt5665_priv*, %struct.rt5665_priv** %7, align 8
  %422 = call i32 @devm_request_threaded_irq(i32* %411, i64 %414, i32* null, i32 %415, i32 %420, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.rt5665_priv* %421)
  store i32 %422, i32* %9, align 4
  %423 = load i32, i32* %9, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %409
  %426 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %427 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %426, i32 0, i32 0
  %428 = load i32, i32* %9, align 4
  %429 = call i32 (i32*, i8*, ...) @dev_err(i32* %427, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %428)
  br label %430

430:                                              ; preds = %425, %409
  br label %431

431:                                              ; preds = %430, %378
  %432 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %433 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %432, i32 0, i32 0
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5665_dai, align 8
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5665_dai, align 8
  %436 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %435)
  %437 = call i32 @devm_snd_soc_register_component(i32* %433, i32* @soc_component_dev_rt5665, %struct.TYPE_6__* %434, i32 %436)
  store i32 %437, i32* %3, align 4
  br label %438

438:                                              ; preds = %431, %152, %133, %94, %77, %20
  %439 = load i32, i32* %3, align 4
  ret i32 %439
}

declare dso_local %struct.rt5665_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.rt5665_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5665_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rt5665_parse_dt(%struct.rt5665_priv*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i64 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.rt5665_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
