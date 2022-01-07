; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5682_platform_data = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.rt5682_priv = type { i32, i32, i32, %struct.rt5682_platform_data, i32, %struct.TYPE_8__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2s_default_platform_data = common dso_local global %struct.rt5682_platform_data zeroinitializer, align 4
@rt5682_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@rt5682_supply_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"rt5682\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Fail gpio_request gpio_ldo\0A\00", align 1
@RT5682_I2C_MODE = common dso_local global i32 0, align 4
@RT5682_DEVICE_ID = common dso_local global i32 0, align 4
@DEVICE_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Device with ID register %x is not rt5682\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@patch_list = common dso_local global %struct.TYPE_8__* null, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@RT5682_DEPOP_1 = common dso_local global i32 0, align 4
@RT5682_DMIC1_NULL = common dso_local global i32 0, align 4
@RT5682_DMIC_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_DMIC_1_DP_MASK = common dso_local global i32 0, align 4
@RT5682_DMIC_1_DP_GPIO2 = common dso_local global i32 0, align 4
@RT5682_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_GP2_PIN_MASK = common dso_local global i32 0, align 4
@RT5682_GP2_PIN_DMIC_SDA = common dso_local global i32 0, align 4
@RT5682_DMIC_1_DP_GPIO5 = common dso_local global i32 0, align 4
@RT5682_GP5_PIN_MASK = common dso_local global i32 0, align 4
@RT5682_GP5_PIN_DMIC_SDA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"invalid DMIC_DAT pin\0A\00", align 1
@RT5682_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5682_GP1_PIN_DMIC_CLK = common dso_local global i32 0, align 4
@RT5682_GP3_PIN_MASK = common dso_local global i32 0, align 4
@RT5682_GP3_PIN_DMIC_CLK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid DMIC_CLK pin\0A\00", align 1
@RT5682_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5682_LDO1_DVO_MASK = common dso_local global i32 0, align 4
@RT5682_HP_DRIVER_MASK = common dso_local global i32 0, align 4
@RT5682_LDO1_DVO_12 = common dso_local global i32 0, align 4
@RT5682_HP_DRIVER_5X = common dso_local global i32 0, align 4
@RT5682_MICBIAS_2 = common dso_local global i32 0, align 4
@RT5682_GP4_PIN_MASK = common dso_local global i32 0, align 4
@RT5682_GP4_PIN_ADCDAT1 = common dso_local global i32 0, align 4
@RT5682_GP5_PIN_DACDAT1 = common dso_local global i32 0, align 4
@RT5682_TEST_MODE_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_BIAS_CUR_CTRL_8 = common dso_local global i32 0, align 4
@RT5682_HPA_CP_BIAS_CTRL_MASK = common dso_local global i32 0, align 4
@RT5682_HPA_CP_BIAS_3UA = common dso_local global i32 0, align 4
@RT5682_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5682_CP_CLK_HP_MASK = common dso_local global i32 0, align 4
@RT5682_CP_CLK_HP_300KHZ = common dso_local global i32 0, align 4
@rt5682_jack_detect_handler = common dso_local global i32 0, align 4
@rt5682_jd_check_handler = common dso_local global i32 0, align 4
@rt5682_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to reguest IRQ: %d\0A\00", align 1
@soc_component_dev_rt5682 = common dso_local global i32 0, align 4
@rt5682_dai = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5682_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5682_platform_data*, align 8
  %7 = alloca %struct.rt5682_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.rt5682_platform_data* @dev_get_platdata(i32* %12)
  store %struct.rt5682_platform_data* %13, %struct.rt5682_platform_data** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rt5682_priv* @devm_kzalloc(i32* %15, i32 40, i32 %16)
  store %struct.rt5682_priv* %17, %struct.rt5682_priv** %7, align 8
  %18 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %19 = icmp eq %struct.rt5682_priv* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %355

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %26 = call i32 @i2c_set_clientdata(%struct.i2c_client* %24, %struct.rt5682_priv* %25)
  %27 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %28 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %27, i32 0, i32 3
  %29 = bitcast %struct.rt5682_platform_data* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.rt5682_platform_data* @i2s_default_platform_data to i8*), i64 12, i1 false)
  %30 = load %struct.rt5682_platform_data*, %struct.rt5682_platform_data** %6, align 8
  %31 = icmp ne %struct.rt5682_platform_data* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %34 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %33, i32 0, i32 3
  %35 = load %struct.rt5682_platform_data*, %struct.rt5682_platform_data** %6, align 8
  %36 = bitcast %struct.rt5682_platform_data* %34 to i8*
  %37 = bitcast %struct.rt5682_platform_data* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  br label %43

38:                                               ; preds = %23
  %39 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = call i32 @rt5682_parse_dt(%struct.rt5682_priv* %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %44, i32* @rt5682_regmap)
  %46 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %47 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %49 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %55 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %355

63:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %84, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %67 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %66, i32 0, i32 5
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %68)
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %64
  %72 = load i32*, i32** @rt5682_supply_names, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %78 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %77, i32 0, i32 5
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %91 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %90, i32 0, i32 5
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %92)
  %94 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %95 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %94, i32 0, i32 5
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = call i32 @devm_regulator_bulk_get(i32* %89, i32 %93, %struct.TYPE_8__* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %87
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %355

106:                                              ; preds = %87
  %107 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %108 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %107, i32 0, i32 5
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %109)
  %111 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %112 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %111, i32 0, i32 5
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = call i32 @regulator_bulk_enable(i32 %110, %struct.TYPE_8__* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %355

123:                                              ; preds = %106
  %124 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %125 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.rt5682_platform_data, %struct.rt5682_platform_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @gpio_is_valid(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %123
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 0
  %133 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %134 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.rt5682_platform_data, %struct.rt5682_platform_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %138 = call i64 @devm_gpio_request_one(i32* %132, i32 %136, i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %130
  br label %145

145:                                              ; preds = %144, %123
  %146 = call i32 @usleep_range(i32 300000, i32 350000)
  %147 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %148 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @RT5682_I2C_MODE, align 4
  %151 = call i32 @regmap_write(i32 %149, i32 %150, i32 1)
  %152 = call i32 @usleep_range(i32 10000, i32 15000)
  %153 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %154 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @RT5682_DEVICE_ID, align 4
  %157 = call i32 @regmap_read(i32 %155, i32 %156, i32* %10)
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @DEVICE_ID, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %145
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @ENODEV, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %355

166:                                              ; preds = %145
  %167 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %168 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @rt5682_reset(i32 %169)
  %171 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %172 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %171, i32 0, i32 4
  %173 = call i32 @mutex_init(i32* %172)
  %174 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %175 = call i32 @rt5682_calibrate(%struct.rt5682_priv* %174)
  %176 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %177 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patch_list, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** @patch_list, align 8
  %181 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %180)
  %182 = call i32 @regmap_multi_reg_write(i32 %178, %struct.TYPE_8__* %179, i32 %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %166
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 0
  %188 = load i32, i32* %9, align 4
  %189 = call i32 (i32*, i8*, ...) @dev_warn(i32* %187, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %185, %166
  %191 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %192 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @RT5682_DEPOP_1, align 4
  %195 = call i32 @regmap_write(i32 %193, i32 %194, i32 0)
  %196 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %197 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.rt5682_platform_data, %struct.rt5682_platform_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @RT5682_DMIC1_NULL, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %267

202:                                              ; preds = %190
  %203 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %204 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.rt5682_platform_data, %struct.rt5682_platform_data* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  switch i32 %206, label %237 [
    i32 129, label %207
    i32 128, label %222
  ]

207:                                              ; preds = %202
  %208 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %209 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @RT5682_DMIC_CTRL_1, align 4
  %212 = load i32, i32* @RT5682_DMIC_1_DP_MASK, align 4
  %213 = load i32, i32* @RT5682_DMIC_1_DP_GPIO2, align 4
  %214 = call i32 @regmap_update_bits(i32 %210, i32 %211, i32 %212, i32 %213)
  %215 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %216 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @RT5682_GPIO_CTRL_1, align 4
  %219 = load i32, i32* @RT5682_GP2_PIN_MASK, align 4
  %220 = load i32, i32* @RT5682_GP2_PIN_DMIC_SDA, align 4
  %221 = call i32 @regmap_update_bits(i32 %217, i32 %218, i32 %219, i32 %220)
  br label %241

222:                                              ; preds = %202
  %223 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %224 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @RT5682_DMIC_CTRL_1, align 4
  %227 = load i32, i32* @RT5682_DMIC_1_DP_MASK, align 4
  %228 = load i32, i32* @RT5682_DMIC_1_DP_GPIO5, align 4
  %229 = call i32 @regmap_update_bits(i32 %225, i32 %226, i32 %227, i32 %228)
  %230 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %231 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @RT5682_GPIO_CTRL_1, align 4
  %234 = load i32, i32* @RT5682_GP5_PIN_MASK, align 4
  %235 = load i32, i32* @RT5682_GP5_PIN_DMIC_SDA, align 4
  %236 = call i32 @regmap_update_bits(i32 %232, i32 %233, i32 %234, i32 %235)
  br label %241

237:                                              ; preds = %202
  %238 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %239 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %238, i32 0, i32 0
  %240 = call i32 (i32*, i8*, ...) @dev_warn(i32* %239, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %241

241:                                              ; preds = %237, %222, %207
  %242 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %243 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.rt5682_platform_data, %struct.rt5682_platform_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  switch i32 %245, label %262 [
    i32 131, label %246
    i32 130, label %254
  ]

246:                                              ; preds = %241
  %247 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %248 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @RT5682_GPIO_CTRL_1, align 4
  %251 = load i32, i32* @RT5682_GP1_PIN_MASK, align 4
  %252 = load i32, i32* @RT5682_GP1_PIN_DMIC_CLK, align 4
  %253 = call i32 @regmap_update_bits(i32 %249, i32 %250, i32 %251, i32 %252)
  br label %266

254:                                              ; preds = %241
  %255 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %256 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @RT5682_GPIO_CTRL_1, align 4
  %259 = load i32, i32* @RT5682_GP3_PIN_MASK, align 4
  %260 = load i32, i32* @RT5682_GP3_PIN_DMIC_CLK, align 4
  %261 = call i32 @regmap_update_bits(i32 %257, i32 %258, i32 %259, i32 %260)
  br label %266

262:                                              ; preds = %241
  %263 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %264 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %263, i32 0, i32 0
  %265 = call i32 (i32*, i8*, ...) @dev_warn(i32* %264, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %266

266:                                              ; preds = %262, %254, %246
  br label %267

267:                                              ; preds = %266, %190
  %268 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %269 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %272 = load i32, i32* @RT5682_LDO1_DVO_MASK, align 4
  %273 = load i32, i32* @RT5682_HP_DRIVER_MASK, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @RT5682_LDO1_DVO_12, align 4
  %276 = load i32, i32* @RT5682_HP_DRIVER_5X, align 4
  %277 = or i32 %275, %276
  %278 = call i32 @regmap_update_bits(i32 %270, i32 %271, i32 %274, i32 %277)
  %279 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %280 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @RT5682_MICBIAS_2, align 4
  %283 = call i32 @regmap_write(i32 %281, i32 %282, i32 896)
  %284 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %285 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @RT5682_GPIO_CTRL_1, align 4
  %288 = load i32, i32* @RT5682_GP4_PIN_MASK, align 4
  %289 = load i32, i32* @RT5682_GP5_PIN_MASK, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @RT5682_GP4_PIN_ADCDAT1, align 4
  %292 = load i32, i32* @RT5682_GP5_PIN_DACDAT1, align 4
  %293 = or i32 %291, %292
  %294 = call i32 @regmap_update_bits(i32 %286, i32 %287, i32 %290, i32 %293)
  %295 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %296 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @RT5682_TEST_MODE_CTRL_1, align 4
  %299 = call i32 @regmap_write(i32 %297, i32 %298, i32 0)
  %300 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %301 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @RT5682_BIAS_CUR_CTRL_8, align 4
  %304 = load i32, i32* @RT5682_HPA_CP_BIAS_CTRL_MASK, align 4
  %305 = load i32, i32* @RT5682_HPA_CP_BIAS_3UA, align 4
  %306 = call i32 @regmap_update_bits(i32 %302, i32 %303, i32 %304, i32 %305)
  %307 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %308 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @RT5682_CHARGE_PUMP_1, align 4
  %311 = load i32, i32* @RT5682_CP_CLK_HP_MASK, align 4
  %312 = load i32, i32* @RT5682_CP_CLK_HP_300KHZ, align 4
  %313 = call i32 @regmap_update_bits(i32 %309, i32 %310, i32 %311, i32 %312)
  %314 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %315 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %314, i32 0, i32 1
  %316 = load i32, i32* @rt5682_jack_detect_handler, align 4
  %317 = call i32 @INIT_DELAYED_WORK(i32* %315, i32 %316)
  %318 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %319 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %318, i32 0, i32 0
  %320 = load i32, i32* @rt5682_jd_check_handler, align 4
  %321 = call i32 @INIT_DELAYED_WORK(i32* %319, i32 %320)
  %322 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %323 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %348

326:                                              ; preds = %267
  %327 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %328 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %327, i32 0, i32 0
  %329 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %330 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* @rt5682_irq, align 4
  %333 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %334 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @IRQF_ONESHOT, align 4
  %337 = or i32 %335, %336
  %338 = load %struct.rt5682_priv*, %struct.rt5682_priv** %7, align 8
  %339 = call i32 @devm_request_threaded_irq(i32* %328, i64 %331, i32* null, i32 %332, i32 %337, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.rt5682_priv* %338)
  store i32 %339, i32* %9, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %326
  %343 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %344 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %343, i32 0, i32 0
  %345 = load i32, i32* %9, align 4
  %346 = call i32 (i32*, i8*, ...) @dev_err(i32* %344, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %342, %326
  br label %348

348:                                              ; preds = %347, %267
  %349 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %350 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %349, i32 0, i32 0
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rt5682_dai, align 8
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rt5682_dai, align 8
  %353 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %352)
  %354 = call i32 @devm_snd_soc_register_component(i32* %350, i32* @soc_component_dev_rt5682, %struct.TYPE_8__* %351, i32 %353)
  store i32 %354, i32* %3, align 4
  br label %355

355:                                              ; preds = %348, %161, %117, %100, %53, %20
  %356 = load i32, i32* %3, align 4
  ret i32 %356
}

declare dso_local %struct.rt5682_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.rt5682_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5682_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rt5682_parse_dt(%struct.rt5682_priv*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i64 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rt5682_reset(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rt5682_calibrate(%struct.rt5682_priv*) #1

declare dso_local i32 @regmap_multi_reg_write(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.rt5682_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
