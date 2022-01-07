; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.rt5668_platform_data = type { i32, i32, i32 }
%struct.rt5668_priv = type { i32, i32, i32, i32, %struct.rt5668_platform_data, %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt5668_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@rt5668_supply_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"rt5668\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Fail gpio_request gpio_ldo\0A\00", align 1
@RT5668_I2C_MODE = common dso_local global i32 0, align 4
@RT5668_DEVICE_ID = common dso_local global i32 0, align 4
@DEVICE_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Device with ID register %x is not rt5668\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5668_DEPOP_1 = common dso_local global i32 0, align 4
@RT5668_DMIC1_NULL = common dso_local global i32 0, align 4
@RT5668_DMIC_CTRL_1 = common dso_local global i32 0, align 4
@RT5668_DMIC_1_DP_MASK = common dso_local global i32 0, align 4
@RT5668_DMIC_1_DP_GPIO2 = common dso_local global i32 0, align 4
@RT5668_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5668_GP2_PIN_MASK = common dso_local global i32 0, align 4
@RT5668_GP2_PIN_DMIC_SDA = common dso_local global i32 0, align 4
@RT5668_DMIC_1_DP_GPIO5 = common dso_local global i32 0, align 4
@RT5668_GP5_PIN_MASK = common dso_local global i32 0, align 4
@RT5668_GP5_PIN_DMIC_SDA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"invalid DMIC_DAT pin\0A\00", align 1
@RT5668_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5668_GP1_PIN_DMIC_CLK = common dso_local global i32 0, align 4
@RT5668_GP3_PIN_MASK = common dso_local global i32 0, align 4
@RT5668_GP3_PIN_DMIC_CLK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"invalid DMIC_CLK pin\0A\00", align 1
@RT5668_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5668_LDO1_DVO_MASK = common dso_local global i32 0, align 4
@RT5668_HP_DRIVER_MASK = common dso_local global i32 0, align 4
@RT5668_LDO1_DVO_14 = common dso_local global i32 0, align 4
@RT5668_HP_DRIVER_5X = common dso_local global i32 0, align 4
@RT5668_MICBIAS_2 = common dso_local global i32 0, align 4
@RT5668_GP4_PIN_MASK = common dso_local global i32 0, align 4
@RT5668_GP4_PIN_ADCDAT1 = common dso_local global i32 0, align 4
@RT5668_GP5_PIN_DACDAT1 = common dso_local global i32 0, align 4
@RT5668_TEST_MODE_CTRL_1 = common dso_local global i32 0, align 4
@rt5668_jack_detect_handler = common dso_local global i32 0, align 4
@rt5668_jd_check_handler = common dso_local global i32 0, align 4
@rt5668_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to reguest IRQ: %d\0A\00", align 1
@soc_component_dev_rt5668 = common dso_local global i32 0, align 4
@rt5668_dai = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5668_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5668_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5668_platform_data*, align 8
  %7 = alloca %struct.rt5668_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.rt5668_platform_data* @dev_get_platdata(i32* %12)
  store %struct.rt5668_platform_data* %13, %struct.rt5668_platform_data** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rt5668_priv* @devm_kzalloc(i32* %15, i32 40, i32 %16)
  store %struct.rt5668_priv* %17, %struct.rt5668_priv** %7, align 8
  %18 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %19 = icmp eq %struct.rt5668_priv* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %323

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %26 = call i32 @i2c_set_clientdata(%struct.i2c_client* %24, %struct.rt5668_priv* %25)
  %27 = load %struct.rt5668_platform_data*, %struct.rt5668_platform_data** %6, align 8
  %28 = icmp ne %struct.rt5668_platform_data* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %31 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %30, i32 0, i32 4
  %32 = load %struct.rt5668_platform_data*, %struct.rt5668_platform_data** %6, align 8
  %33 = bitcast %struct.rt5668_platform_data* %31 to i8*
  %34 = bitcast %struct.rt5668_platform_data* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 4 %34, i64 12, i1 false)
  br label %40

35:                                               ; preds = %23
  %36 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @rt5668_parse_dt(%struct.rt5668_priv* %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %41, i32* @rt5668_regmap)
  %43 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %44 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %46 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %52 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %323

60:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %64 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %61
  %69 = load i32*, i32** @rt5668_supply_names, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %75 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %74, i32 0, i32 5
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %61

84:                                               ; preds = %61
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %88 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %87, i32 0, i32 5
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %89)
  %91 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %92 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %91, i32 0, i32 5
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @devm_regulator_bulk_get(i32* %86, i32 %90, %struct.TYPE_6__* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %84
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %323

103:                                              ; preds = %84
  %104 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %105 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %106)
  %108 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %109 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %108, i32 0, i32 5
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @regulator_bulk_enable(i32 %107, %struct.TYPE_6__* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %103
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %323

120:                                              ; preds = %103
  %121 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %122 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.rt5668_platform_data, %struct.rt5668_platform_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @gpio_is_valid(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %120
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %131 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.rt5668_platform_data, %struct.rt5668_platform_data* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %135 = call i64 @devm_gpio_request_one(i32* %129, i32 %133, i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %127
  br label %142

142:                                              ; preds = %141, %120
  %143 = call i32 @usleep_range(i32 300000, i32 350000)
  %144 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %145 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RT5668_I2C_MODE, align 4
  %148 = call i32 @regmap_write(i32 %146, i32 %147, i32 1)
  %149 = call i32 @usleep_range(i32 10000, i32 15000)
  %150 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %151 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @RT5668_DEVICE_ID, align 4
  %154 = call i32 @regmap_read(i32 %152, i32 %153, i32* %10)
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @DEVICE_ID, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %142
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @ENODEV, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %323

163:                                              ; preds = %142
  %164 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %165 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @rt5668_reset(i32 %166)
  %168 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %169 = call i32 @rt5668_calibrate(%struct.rt5668_priv* %168)
  %170 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %171 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @RT5668_DEPOP_1, align 4
  %174 = call i32 @regmap_write(i32 %172, i32 %173, i32 0)
  %175 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %176 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.rt5668_platform_data, %struct.rt5668_platform_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @RT5668_DMIC1_NULL, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %246

181:                                              ; preds = %163
  %182 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %183 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.rt5668_platform_data, %struct.rt5668_platform_data* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %216 [
    i32 129, label %186
    i32 128, label %201
  ]

186:                                              ; preds = %181
  %187 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %188 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @RT5668_DMIC_CTRL_1, align 4
  %191 = load i32, i32* @RT5668_DMIC_1_DP_MASK, align 4
  %192 = load i32, i32* @RT5668_DMIC_1_DP_GPIO2, align 4
  %193 = call i32 @regmap_update_bits(i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %195 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @RT5668_GPIO_CTRL_1, align 4
  %198 = load i32, i32* @RT5668_GP2_PIN_MASK, align 4
  %199 = load i32, i32* @RT5668_GP2_PIN_DMIC_SDA, align 4
  %200 = call i32 @regmap_update_bits(i32 %196, i32 %197, i32 %198, i32 %199)
  br label %220

201:                                              ; preds = %181
  %202 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %203 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @RT5668_DMIC_CTRL_1, align 4
  %206 = load i32, i32* @RT5668_DMIC_1_DP_MASK, align 4
  %207 = load i32, i32* @RT5668_DMIC_1_DP_GPIO5, align 4
  %208 = call i32 @regmap_update_bits(i32 %204, i32 %205, i32 %206, i32 %207)
  %209 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %210 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @RT5668_GPIO_CTRL_1, align 4
  %213 = load i32, i32* @RT5668_GP5_PIN_MASK, align 4
  %214 = load i32, i32* @RT5668_GP5_PIN_DMIC_SDA, align 4
  %215 = call i32 @regmap_update_bits(i32 %211, i32 %212, i32 %213, i32 %214)
  br label %220

216:                                              ; preds = %181
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 0
  %219 = call i32 @dev_dbg(i32* %218, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %220

220:                                              ; preds = %216, %201, %186
  %221 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %222 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.rt5668_platform_data, %struct.rt5668_platform_data* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  switch i32 %224, label %241 [
    i32 131, label %225
    i32 130, label %233
  ]

225:                                              ; preds = %220
  %226 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %227 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @RT5668_GPIO_CTRL_1, align 4
  %230 = load i32, i32* @RT5668_GP1_PIN_MASK, align 4
  %231 = load i32, i32* @RT5668_GP1_PIN_DMIC_CLK, align 4
  %232 = call i32 @regmap_update_bits(i32 %228, i32 %229, i32 %230, i32 %231)
  br label %245

233:                                              ; preds = %220
  %234 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %235 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @RT5668_GPIO_CTRL_1, align 4
  %238 = load i32, i32* @RT5668_GP3_PIN_MASK, align 4
  %239 = load i32, i32* @RT5668_GP3_PIN_DMIC_CLK, align 4
  %240 = call i32 @regmap_update_bits(i32 %236, i32 %237, i32 %238, i32 %239)
  br label %245

241:                                              ; preds = %220
  %242 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %243 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %242, i32 0, i32 0
  %244 = call i32 @dev_dbg(i32* %243, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %245

245:                                              ; preds = %241, %233, %225
  br label %246

246:                                              ; preds = %245, %163
  %247 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %248 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @RT5668_PWR_ANLG_1, align 4
  %251 = load i32, i32* @RT5668_LDO1_DVO_MASK, align 4
  %252 = load i32, i32* @RT5668_HP_DRIVER_MASK, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @RT5668_LDO1_DVO_14, align 4
  %255 = load i32, i32* @RT5668_HP_DRIVER_5X, align 4
  %256 = or i32 %254, %255
  %257 = call i32 @regmap_update_bits(i32 %249, i32 %250, i32 %253, i32 %256)
  %258 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %259 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @RT5668_MICBIAS_2, align 4
  %262 = call i32 @regmap_write(i32 %260, i32 %261, i32 896)
  %263 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %264 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @RT5668_GPIO_CTRL_1, align 4
  %267 = load i32, i32* @RT5668_GP4_PIN_MASK, align 4
  %268 = load i32, i32* @RT5668_GP5_PIN_MASK, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @RT5668_GP4_PIN_ADCDAT1, align 4
  %271 = load i32, i32* @RT5668_GP5_PIN_DACDAT1, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @regmap_update_bits(i32 %265, i32 %266, i32 %269, i32 %272)
  %274 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %275 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @RT5668_TEST_MODE_CTRL_1, align 4
  %278 = call i32 @regmap_write(i32 %276, i32 %277, i32 0)
  %279 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %280 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %279, i32 0, i32 2
  %281 = load i32, i32* @rt5668_jack_detect_handler, align 4
  %282 = call i32 @INIT_DELAYED_WORK(i32* %280, i32 %281)
  %283 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %284 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %283, i32 0, i32 1
  %285 = load i32, i32* @rt5668_jd_check_handler, align 4
  %286 = call i32 @INIT_DELAYED_WORK(i32* %284, i32 %285)
  %287 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %288 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %287, i32 0, i32 0
  %289 = call i32 @mutex_init(i32* %288)
  %290 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %291 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %316

294:                                              ; preds = %246
  %295 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %296 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %295, i32 0, i32 0
  %297 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %298 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load i32, i32* @rt5668_irq, align 4
  %301 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %302 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @IRQF_ONESHOT, align 4
  %305 = or i32 %303, %304
  %306 = load %struct.rt5668_priv*, %struct.rt5668_priv** %7, align 8
  %307 = call i32 @devm_request_threaded_irq(i32* %296, i64 %299, i32* null, i32 %300, i32 %305, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.rt5668_priv* %306)
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %294
  %311 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %312 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %311, i32 0, i32 0
  %313 = load i32, i32* %9, align 4
  %314 = call i32 (i32*, i8*, ...) @dev_err(i32* %312, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %313)
  br label %315

315:                                              ; preds = %310, %294
  br label %316

316:                                              ; preds = %315, %246
  %317 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %318 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %317, i32 0, i32 0
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5668_dai, align 8
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt5668_dai, align 8
  %321 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %320)
  %322 = call i32 @devm_snd_soc_register_component(i32* %318, i32* @soc_component_dev_rt5668, %struct.TYPE_6__* %319, i32 %321)
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %316, %158, %114, %97, %50, %20
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local %struct.rt5668_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.rt5668_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5668_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rt5668_parse_dt(%struct.rt5668_priv*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i64 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rt5668_reset(i32) #1

declare dso_local i32 @rt5668_calibrate(%struct.rt5668_priv*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.rt5668_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
