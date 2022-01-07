; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5645_platform_data = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.dmi_system_id = type { %struct.rt5645_platform_data*, i32 }
%struct.rt5645_priv = type { i64, i32, %struct.TYPE_10__*, %struct.i2c_client*, i32, i32, i32, %struct.regmap*, %struct.rt5645_platform_data, %struct.regmap* }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dmi_platform_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Detected %s platform\0A\00", align 1
@jd_mode3_platform_data = common dso_local global %struct.rt5645_platform_data zeroinitializer, align 8
@quirk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"hp-detect\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to initialize gpiod\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@rt5645_supply_names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@temp_regmap = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to allocate temp register map: %d\0A\00", align 1
@TIME_TO_POWER_MS = common dso_local global i32 0, align 4
@RT5645_VENDOR_ID2 = common dso_local global i32 0, align 4
@rt5645_regmap = common dso_local global i32 0, align 4
@CODEC_TYPE_RT5645 = common dso_local global i64 0, align 8
@rt5650_regmap = common dso_local global i32 0, align 4
@CODEC_TYPE_RT5650 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"Device with ID register %#x is not rt5645 or rt5650\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RT5645_RESET = common dso_local global i32 0, align 4
@RT5645_VENDOR_ID = common dso_local global i32 0, align 4
@RT5645_AD_DA_MIXER = common dso_local global i32 0, align 4
@init_list = common dso_local global %struct.TYPE_10__* null, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@rt5650_init_list = common dso_local global %struct.TYPE_10__* null, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"Apply rt5650 patch failed: %d\0A\00", align 1
@RT5645_CLSD_OUT_CTRL = common dso_local global i32 0, align 4
@RT5645_IN2_CTRL = common dso_local global i32 0, align 4
@RT5645_IN_DF2 = common dso_local global i32 0, align 4
@RT5645_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5645_GP2_PIN_MASK = common dso_local global i32 0, align 4
@RT5645_GP2_PIN_DMIC1_SCL = common dso_local global i32 0, align 4
@RT5645_DMIC_CTRL1 = common dso_local global i32 0, align 4
@RT5645_DMIC_1_DP_MASK = common dso_local global i32 0, align 4
@RT5645_DMIC_1_DP_IN2N = common dso_local global i32 0, align 4
@RT5645_I2S2_DAC_PIN_MASK = common dso_local global i32 0, align 4
@RT5645_I2S2_DAC_PIN_GPIO = common dso_local global i32 0, align 4
@RT5645_DMIC_1_DP_GPIO5 = common dso_local global i32 0, align 4
@RT5645_GP5_PIN_MASK = common dso_local global i32 0, align 4
@RT5645_GP5_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@RT5645_DMIC_1_DP_GPIO11 = common dso_local global i32 0, align 4
@RT5645_GP11_PIN_MASK = common dso_local global i32 0, align 4
@RT5645_GP11_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@RT5645_DMIC_2_DP_MASK = common dso_local global i32 0, align 4
@RT5645_DMIC_2_DP_IN2P = common dso_local global i32 0, align 4
@RT5645_DMIC_2_DP_GPIO6 = common dso_local global i32 0, align 4
@RT5645_GP6_PIN_MASK = common dso_local global i32 0, align 4
@RT5645_GP6_PIN_DMIC2_SDA = common dso_local global i32 0, align 4
@RT5645_DMIC_2_DP_GPIO10 = common dso_local global i32 0, align 4
@RT5645_GP10_PIN_MASK = common dso_local global i32 0, align 4
@RT5645_GP10_PIN_DMIC2_SDA = common dso_local global i32 0, align 4
@RT5645_DMIC_2_DP_GPIO12 = common dso_local global i32 0, align 4
@RT5645_GP12_PIN_MASK = common dso_local global i32 0, align 4
@RT5645_GP12_PIN_DMIC2_SDA = common dso_local global i32 0, align 4
@RT5645_GEN_CTRL3 = common dso_local global i32 0, align 4
@RT5645_IRQ_CLK_GATE_CTRL = common dso_local global i32 0, align 4
@RT5645_MICBIAS = common dso_local global i32 0, align 4
@RT5645_IRQ_CLK_INT = common dso_local global i32 0, align 4
@RT5645_IRQ_CTRL2 = common dso_local global i32 0, align 4
@RT5645_IRQ_JD_1_1_EN = common dso_local global i32 0, align 4
@RT5645_JD_PSV_MODE = common dso_local global i32 0, align 4
@RT5645_HPO_MIXER = common dso_local global i32 0, align 4
@RT5645_IRQ_PSV_MODE = common dso_local global i32 0, align 4
@RT5645_MIC2_OVCD_EN = common dso_local global i32 0, align 4
@RT5645_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5645_A_JD_CTRL1 = common dso_local global i32 0, align 4
@RT5645_JD1_MODE_MASK = common dso_local global i32 0, align 4
@RT5645_JD1_MODE_0 = common dso_local global i32 0, align 4
@RT5645_JD1_MODE_1 = common dso_local global i32 0, align 4
@RT5645_JD1_MODE_2 = common dso_local global i32 0, align 4
@RT5645_JD_1_1_MASK = common dso_local global i32 0, align 4
@RT5645_JD_1_1_INV = common dso_local global i32 0, align 4
@RT5645_ADDA_CLK1 = common dso_local global i32 0, align 4
@RT5645_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5645_I2S_PD1_2 = common dso_local global i32 0, align 4
@rt5645_btn_check_callback = common dso_local global i32 0, align 4
@rt5645_jack_detect_work = common dso_local global i32 0, align 4
@rt5645_rcclock_work = common dso_local global i32 0, align 4
@rt5645_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"rt5645\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed to reguest IRQ: %d\0A\00", align 1
@soc_component_dev_rt5645 = common dso_local global i32 0, align 4
@rt5645_dai = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5645_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5645_platform_data*, align 8
  %7 = alloca %struct.dmi_system_id*, align 8
  %8 = alloca %struct.rt5645_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.regmap*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = call %struct.rt5645_platform_data* @dev_get_platdata(i32* %14)
  store %struct.rt5645_platform_data* %15, %struct.rt5645_platform_data** %6, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.rt5645_priv* @devm_kzalloc(i32* %17, i32 104, i32 %18)
  store %struct.rt5645_priv* %19, %struct.rt5645_priv** %8, align 8
  %20 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %21 = icmp eq %struct.rt5645_priv* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %656

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %28 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %27, i32 0, i32 3
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.rt5645_priv* %30)
  %32 = load i32, i32* @dmi_platform_data, align 4
  %33 = call %struct.dmi_system_id* @dmi_first_match(i32 %32)
  store %struct.dmi_system_id* %33, %struct.dmi_system_id** %7, align 8
  %34 = load %struct.dmi_system_id*, %struct.dmi_system_id** %7, align 8
  %35 = icmp ne %struct.dmi_system_id* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load %struct.dmi_system_id*, %struct.dmi_system_id** %7, align 8
  %40 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32*, i8*, ...) @dev_info(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.dmi_system_id*, %struct.dmi_system_id** %7, align 8
  %44 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %43, i32 0, i32 0
  %45 = load %struct.rt5645_platform_data*, %struct.rt5645_platform_data** %44, align 8
  store %struct.rt5645_platform_data* %45, %struct.rt5645_platform_data** %6, align 8
  br label %46

46:                                               ; preds = %36, %25
  %47 = load %struct.rt5645_platform_data*, %struct.rt5645_platform_data** %6, align 8
  %48 = icmp ne %struct.rt5645_platform_data* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %51 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %50, i32 0, i32 8
  %52 = load %struct.rt5645_platform_data*, %struct.rt5645_platform_data** %6, align 8
  %53 = bitcast %struct.rt5645_platform_data* %51 to i8*
  %54 = bitcast %struct.rt5645_platform_data* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 40, i1 false)
  br label %70

55:                                               ; preds = %46
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = call i64 @rt5645_check_dp(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 1
  %64 = call i32 @rt5645_parse_dt(%struct.rt5645_priv* %61, i32* %63)
  br label %69

65:                                               ; preds = %55
  %66 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %67 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %66, i32 0, i32 8
  %68 = bitcast %struct.rt5645_platform_data* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 bitcast (%struct.rt5645_platform_data* @jd_mode3_platform_data to i8*), i64 40, i1 false)
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %49
  %71 = load i32, i32* @quirk, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %104

73:                                               ; preds = %70
  %74 = load i32, i32* @quirk, align 4
  %75 = call i64 @QUIRK_IN2_DIFF(i32 %74)
  %76 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %77 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %77, i32 0, i32 5
  store i64 %75, i64* %78, align 8
  %79 = load i32, i32* @quirk, align 4
  %80 = call i64 @QUIRK_LEVEL_IRQ(i32 %79)
  %81 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %82 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %82, i32 0, i32 3
  store i64 %80, i64* %83, align 8
  %84 = load i32, i32* @quirk, align 4
  %85 = call i64 @QUIRK_INV_JD1_1(i32 %84)
  %86 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %87 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %87, i32 0, i32 4
  store i64 %85, i64* %88, align 8
  %89 = load i32, i32* @quirk, align 4
  %90 = call i32 @QUIRK_JD_MODE(i32 %89)
  %91 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %92 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @quirk, align 4
  %95 = call i32 @QUIRK_DMIC1_DATA_PIN(i32 %94)
  %96 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %97 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @quirk, align 4
  %100 = call i32 @QUIRK_DMIC2_DATA_PIN(i32 %99)
  %101 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %102 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %73, %70
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 1
  %107 = load i32, i32* @GPIOD_IN, align 4
  %108 = call %struct.regmap* @devm_gpiod_get_optional(i32* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %110 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %109, i32 0, i32 9
  store %struct.regmap* %108, %struct.regmap** %110, align 8
  %111 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %112 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %111, i32 0, i32 9
  %113 = load %struct.regmap*, %struct.regmap** %112, align 8
  %114 = call i64 @IS_ERR(%struct.regmap* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %104
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 1
  %119 = call i32 (i32*, i8*, ...) @dev_info(i32* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %121 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %120, i32 0, i32 9
  %122 = load %struct.regmap*, %struct.regmap** %121, align 8
  %123 = call i32 @PTR_ERR(%struct.regmap* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @ENOENT, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %116
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %656

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %104
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %152, %131
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %135 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %134, i32 0, i32 2
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %136)
  %138 = icmp slt i32 %133, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %132
  %140 = load i32*, i32** @rt5645_supply_names, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %146 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %145, i32 0, i32 2
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 4
  br label %152

152:                                              ; preds = %139
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %132

155:                                              ; preds = %132
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %159 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %160)
  %162 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %163 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %162, i32 0, i32 2
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = call i32 @devm_regulator_bulk_get(i32* %157, i32 %161, %struct.TYPE_10__* %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %155
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 1
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %3, align 4
  br label %656

174:                                              ; preds = %155
  %175 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %176 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %175, i32 0, i32 2
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %177)
  %179 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %180 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %179, i32 0, i32 2
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = call i32 @regulator_bulk_enable(i32 %178, %struct.TYPE_10__* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %174
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 1
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @dev_err(i32* %187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %3, align 4
  br label %656

191:                                              ; preds = %174
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %192, i32* @temp_regmap)
  %194 = bitcast i8* %193 to %struct.regmap*
  store %struct.regmap* %194, %struct.regmap** %12, align 8
  %195 = load %struct.regmap*, %struct.regmap** %12, align 8
  %196 = call i64 @IS_ERR(%struct.regmap* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %191
  %199 = load %struct.regmap*, %struct.regmap** %12, align 8
  %200 = call i32 @PTR_ERR(%struct.regmap* %199)
  store i32 %200, i32* %9, align 4
  %201 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %202 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %201, i32 0, i32 1
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @dev_err(i32* %202, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %3, align 4
  br label %656

206:                                              ; preds = %191
  %207 = load i32, i32* @TIME_TO_POWER_MS, align 4
  %208 = call i32 @msleep(i32 %207)
  %209 = load %struct.regmap*, %struct.regmap** %12, align 8
  %210 = load i32, i32* @RT5645_VENDOR_ID2, align 4
  %211 = call i32 @regmap_read(%struct.regmap* %209, i32 %210, i32* %11)
  %212 = load i32, i32* %11, align 4
  switch i32 %212, label %231 [
    i32 136, label %213
    i32 128, label %222
  ]

213:                                              ; preds = %206
  %214 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %215 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %214, i32* @rt5645_regmap)
  %216 = bitcast i8* %215 to %struct.regmap*
  %217 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %218 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %217, i32 0, i32 7
  store %struct.regmap* %216, %struct.regmap** %218, align 8
  %219 = load i64, i64* @CODEC_TYPE_RT5645, align 8
  %220 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %221 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  br label %238

222:                                              ; preds = %206
  %223 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %224 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %223, i32* @rt5650_regmap)
  %225 = bitcast i8* %224 to %struct.regmap*
  %226 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %227 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %226, i32 0, i32 7
  store %struct.regmap* %225, %struct.regmap** %227, align 8
  %228 = load i64, i64* @CODEC_TYPE_RT5650, align 8
  %229 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %230 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  br label %238

231:                                              ; preds = %206
  %232 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %233 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %232, i32 0, i32 1
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @dev_err(i32* %233, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* @ENODEV, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %9, align 4
  br label %646

238:                                              ; preds = %222, %213
  %239 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %240 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %239, i32 0, i32 7
  %241 = load %struct.regmap*, %struct.regmap** %240, align 8
  %242 = call i64 @IS_ERR(%struct.regmap* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %238
  %245 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %246 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %245, i32 0, i32 7
  %247 = load %struct.regmap*, %struct.regmap** %246, align 8
  %248 = call i32 @PTR_ERR(%struct.regmap* %247)
  store i32 %248, i32* %9, align 4
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %249, i32 0, i32 1
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @dev_err(i32* %250, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* %9, align 4
  store i32 %253, i32* %3, align 4
  br label %656

254:                                              ; preds = %238
  %255 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %256 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %255, i32 0, i32 7
  %257 = load %struct.regmap*, %struct.regmap** %256, align 8
  %258 = load i32, i32* @RT5645_RESET, align 4
  %259 = call i32 @regmap_write(%struct.regmap* %257, i32 %258, i32 0)
  %260 = load %struct.regmap*, %struct.regmap** %12, align 8
  %261 = load i32, i32* @RT5645_VENDOR_ID, align 4
  %262 = call i32 @regmap_read(%struct.regmap* %260, i32 %261, i32* %11)
  %263 = load i32, i32* %11, align 4
  %264 = and i32 %263, 255
  %265 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %266 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 8
  %267 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %268 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %267, i32 0, i32 7
  %269 = load %struct.regmap*, %struct.regmap** %268, align 8
  %270 = load i32, i32* @RT5645_AD_DA_MIXER, align 4
  %271 = call i32 @regmap_write(%struct.regmap* %269, i32 %270, i32 32896)
  %272 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %273 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %272, i32 0, i32 7
  %274 = load %struct.regmap*, %struct.regmap** %273, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** @init_list, align 8
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** @init_list, align 8
  %277 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %276)
  %278 = call i32 @regmap_register_patch(%struct.regmap* %274, %struct.TYPE_10__* %275, i32 %277)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %254
  %282 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %283 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %282, i32 0, i32 1
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @dev_warn(i32* %283, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %284)
  br label %286

286:                                              ; preds = %281, %254
  %287 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %288 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @CODEC_TYPE_RT5650, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %308

292:                                              ; preds = %286
  %293 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %294 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %293, i32 0, i32 7
  %295 = load %struct.regmap*, %struct.regmap** %294, align 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rt5650_init_list, align 8
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rt5650_init_list, align 8
  %298 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %297)
  %299 = call i32 @regmap_register_patch(%struct.regmap* %295, %struct.TYPE_10__* %296, i32 %298)
  store i32 %299, i32* %9, align 4
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %292
  %303 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %304 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %303, i32 0, i32 1
  %305 = load i32, i32* %9, align 4
  %306 = call i32 @dev_warn(i32* %304, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %305)
  br label %307

307:                                              ; preds = %302, %292
  br label %308

308:                                              ; preds = %307, %286
  %309 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %310 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %309, i32 0, i32 7
  %311 = load %struct.regmap*, %struct.regmap** %310, align 8
  %312 = load i32, i32* @RT5645_CLSD_OUT_CTRL, align 4
  %313 = call i32 @regmap_update_bits(%struct.regmap* %311, i32 %312, i32 192, i32 192)
  %314 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %315 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %314, i32 0, i32 8
  %316 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %308
  %320 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %321 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %320, i32 0, i32 7
  %322 = load %struct.regmap*, %struct.regmap** %321, align 8
  %323 = load i32, i32* @RT5645_IN2_CTRL, align 4
  %324 = load i32, i32* @RT5645_IN_DF2, align 4
  %325 = load i32, i32* @RT5645_IN_DF2, align 4
  %326 = call i32 @regmap_update_bits(%struct.regmap* %322, i32 %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %319, %308
  %328 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %329 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %328, i32 0, i32 8
  %330 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %339, label %333

333:                                              ; preds = %327
  %334 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %335 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %334, i32 0, i32 8
  %336 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %333, %327
  %340 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %341 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %340, i32 0, i32 7
  %342 = load %struct.regmap*, %struct.regmap** %341, align 8
  %343 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %344 = load i32, i32* @RT5645_GP2_PIN_MASK, align 4
  %345 = load i32, i32* @RT5645_GP2_PIN_DMIC1_SCL, align 4
  %346 = call i32 @regmap_update_bits(%struct.regmap* %342, i32 %343, i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %339, %333
  %348 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %349 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %348, i32 0, i32 8
  %350 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  switch i32 %351, label %397 [
    i32 130, label %352
    i32 132, label %360
    i32 134, label %382
  ]

352:                                              ; preds = %347
  %353 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %354 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %353, i32 0, i32 7
  %355 = load %struct.regmap*, %struct.regmap** %354, align 8
  %356 = load i32, i32* @RT5645_DMIC_CTRL1, align 4
  %357 = load i32, i32* @RT5645_DMIC_1_DP_MASK, align 4
  %358 = load i32, i32* @RT5645_DMIC_1_DP_IN2N, align 4
  %359 = call i32 @regmap_update_bits(%struct.regmap* %355, i32 %356, i32 %357, i32 %358)
  br label %398

360:                                              ; preds = %347
  %361 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %362 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %361, i32 0, i32 7
  %363 = load %struct.regmap*, %struct.regmap** %362, align 8
  %364 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %365 = load i32, i32* @RT5645_I2S2_DAC_PIN_MASK, align 4
  %366 = load i32, i32* @RT5645_I2S2_DAC_PIN_GPIO, align 4
  %367 = call i32 @regmap_update_bits(%struct.regmap* %363, i32 %364, i32 %365, i32 %366)
  %368 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %369 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %368, i32 0, i32 7
  %370 = load %struct.regmap*, %struct.regmap** %369, align 8
  %371 = load i32, i32* @RT5645_DMIC_CTRL1, align 4
  %372 = load i32, i32* @RT5645_DMIC_1_DP_MASK, align 4
  %373 = load i32, i32* @RT5645_DMIC_1_DP_GPIO5, align 4
  %374 = call i32 @regmap_update_bits(%struct.regmap* %370, i32 %371, i32 %372, i32 %373)
  %375 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %376 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %375, i32 0, i32 7
  %377 = load %struct.regmap*, %struct.regmap** %376, align 8
  %378 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %379 = load i32, i32* @RT5645_GP5_PIN_MASK, align 4
  %380 = load i32, i32* @RT5645_GP5_PIN_DMIC1_SDA, align 4
  %381 = call i32 @regmap_update_bits(%struct.regmap* %377, i32 %378, i32 %379, i32 %380)
  br label %398

382:                                              ; preds = %347
  %383 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %384 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %383, i32 0, i32 7
  %385 = load %struct.regmap*, %struct.regmap** %384, align 8
  %386 = load i32, i32* @RT5645_DMIC_CTRL1, align 4
  %387 = load i32, i32* @RT5645_DMIC_1_DP_MASK, align 4
  %388 = load i32, i32* @RT5645_DMIC_1_DP_GPIO11, align 4
  %389 = call i32 @regmap_update_bits(%struct.regmap* %385, i32 %386, i32 %387, i32 %388)
  %390 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %391 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %390, i32 0, i32 7
  %392 = load %struct.regmap*, %struct.regmap** %391, align 8
  %393 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %394 = load i32, i32* @RT5645_GP11_PIN_MASK, align 4
  %395 = load i32, i32* @RT5645_GP11_PIN_DMIC1_SDA, align 4
  %396 = call i32 @regmap_update_bits(%struct.regmap* %392, i32 %393, i32 %394, i32 %395)
  br label %398

397:                                              ; preds = %347
  br label %398

398:                                              ; preds = %397, %382, %360, %352
  %399 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %400 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %399, i32 0, i32 8
  %401 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  switch i32 %402, label %456 [
    i32 129, label %403
    i32 131, label %411
    i32 135, label %426
    i32 133, label %441
  ]

403:                                              ; preds = %398
  %404 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %405 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %404, i32 0, i32 7
  %406 = load %struct.regmap*, %struct.regmap** %405, align 8
  %407 = load i32, i32* @RT5645_DMIC_CTRL1, align 4
  %408 = load i32, i32* @RT5645_DMIC_2_DP_MASK, align 4
  %409 = load i32, i32* @RT5645_DMIC_2_DP_IN2P, align 4
  %410 = call i32 @regmap_update_bits(%struct.regmap* %406, i32 %407, i32 %408, i32 %409)
  br label %457

411:                                              ; preds = %398
  %412 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %413 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %412, i32 0, i32 7
  %414 = load %struct.regmap*, %struct.regmap** %413, align 8
  %415 = load i32, i32* @RT5645_DMIC_CTRL1, align 4
  %416 = load i32, i32* @RT5645_DMIC_2_DP_MASK, align 4
  %417 = load i32, i32* @RT5645_DMIC_2_DP_GPIO6, align 4
  %418 = call i32 @regmap_update_bits(%struct.regmap* %414, i32 %415, i32 %416, i32 %417)
  %419 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %420 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %419, i32 0, i32 7
  %421 = load %struct.regmap*, %struct.regmap** %420, align 8
  %422 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %423 = load i32, i32* @RT5645_GP6_PIN_MASK, align 4
  %424 = load i32, i32* @RT5645_GP6_PIN_DMIC2_SDA, align 4
  %425 = call i32 @regmap_update_bits(%struct.regmap* %421, i32 %422, i32 %423, i32 %424)
  br label %457

426:                                              ; preds = %398
  %427 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %428 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %427, i32 0, i32 7
  %429 = load %struct.regmap*, %struct.regmap** %428, align 8
  %430 = load i32, i32* @RT5645_DMIC_CTRL1, align 4
  %431 = load i32, i32* @RT5645_DMIC_2_DP_MASK, align 4
  %432 = load i32, i32* @RT5645_DMIC_2_DP_GPIO10, align 4
  %433 = call i32 @regmap_update_bits(%struct.regmap* %429, i32 %430, i32 %431, i32 %432)
  %434 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %435 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %434, i32 0, i32 7
  %436 = load %struct.regmap*, %struct.regmap** %435, align 8
  %437 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %438 = load i32, i32* @RT5645_GP10_PIN_MASK, align 4
  %439 = load i32, i32* @RT5645_GP10_PIN_DMIC2_SDA, align 4
  %440 = call i32 @regmap_update_bits(%struct.regmap* %436, i32 %437, i32 %438, i32 %439)
  br label %457

441:                                              ; preds = %398
  %442 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %443 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %442, i32 0, i32 7
  %444 = load %struct.regmap*, %struct.regmap** %443, align 8
  %445 = load i32, i32* @RT5645_DMIC_CTRL1, align 4
  %446 = load i32, i32* @RT5645_DMIC_2_DP_MASK, align 4
  %447 = load i32, i32* @RT5645_DMIC_2_DP_GPIO12, align 4
  %448 = call i32 @regmap_update_bits(%struct.regmap* %444, i32 %445, i32 %446, i32 %447)
  %449 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %450 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %449, i32 0, i32 7
  %451 = load %struct.regmap*, %struct.regmap** %450, align 8
  %452 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %453 = load i32, i32* @RT5645_GP12_PIN_MASK, align 4
  %454 = load i32, i32* @RT5645_GP12_PIN_DMIC2_SDA, align 4
  %455 = call i32 @regmap_update_bits(%struct.regmap* %451, i32 %452, i32 %453, i32 %454)
  br label %457

456:                                              ; preds = %398
  br label %457

457:                                              ; preds = %456, %441, %426, %411, %403
  %458 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %459 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %458, i32 0, i32 8
  %460 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %557

463:                                              ; preds = %457
  %464 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %465 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %464, i32 0, i32 7
  %466 = load %struct.regmap*, %struct.regmap** %465, align 8
  %467 = load i32, i32* @RT5645_GEN_CTRL3, align 4
  %468 = load i32, i32* @RT5645_IRQ_CLK_GATE_CTRL, align 4
  %469 = load i32, i32* @RT5645_IRQ_CLK_GATE_CTRL, align 4
  %470 = call i32 @regmap_update_bits(%struct.regmap* %466, i32 %467, i32 %468, i32 %469)
  %471 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %472 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %471, i32 0, i32 7
  %473 = load %struct.regmap*, %struct.regmap** %472, align 8
  %474 = load i32, i32* @RT5645_MICBIAS, align 4
  %475 = load i32, i32* @RT5645_IRQ_CLK_INT, align 4
  %476 = load i32, i32* @RT5645_IRQ_CLK_INT, align 4
  %477 = call i32 @regmap_update_bits(%struct.regmap* %473, i32 %474, i32 %475, i32 %476)
  %478 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %479 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %478, i32 0, i32 7
  %480 = load %struct.regmap*, %struct.regmap** %479, align 8
  %481 = load i32, i32* @RT5645_IRQ_CTRL2, align 4
  %482 = load i32, i32* @RT5645_IRQ_JD_1_1_EN, align 4
  %483 = load i32, i32* @RT5645_IRQ_JD_1_1_EN, align 4
  %484 = call i32 @regmap_update_bits(%struct.regmap* %480, i32 %481, i32 %482, i32 %483)
  %485 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %486 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %485, i32 0, i32 7
  %487 = load %struct.regmap*, %struct.regmap** %486, align 8
  %488 = load i32, i32* @RT5645_GEN_CTRL3, align 4
  %489 = load i32, i32* @RT5645_JD_PSV_MODE, align 4
  %490 = load i32, i32* @RT5645_JD_PSV_MODE, align 4
  %491 = call i32 @regmap_update_bits(%struct.regmap* %487, i32 %488, i32 %489, i32 %490)
  %492 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %493 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %492, i32 0, i32 7
  %494 = load %struct.regmap*, %struct.regmap** %493, align 8
  %495 = load i32, i32* @RT5645_HPO_MIXER, align 4
  %496 = load i32, i32* @RT5645_IRQ_PSV_MODE, align 4
  %497 = load i32, i32* @RT5645_IRQ_PSV_MODE, align 4
  %498 = call i32 @regmap_update_bits(%struct.regmap* %494, i32 %495, i32 %496, i32 %497)
  %499 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %500 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %499, i32 0, i32 7
  %501 = load %struct.regmap*, %struct.regmap** %500, align 8
  %502 = load i32, i32* @RT5645_MICBIAS, align 4
  %503 = load i32, i32* @RT5645_MIC2_OVCD_EN, align 4
  %504 = load i32, i32* @RT5645_MIC2_OVCD_EN, align 4
  %505 = call i32 @regmap_update_bits(%struct.regmap* %501, i32 %502, i32 %503, i32 %504)
  %506 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %507 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %506, i32 0, i32 7
  %508 = load %struct.regmap*, %struct.regmap** %507, align 8
  %509 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %510 = load i32, i32* @RT5645_GP1_PIN_IRQ, align 4
  %511 = load i32, i32* @RT5645_GP1_PIN_IRQ, align 4
  %512 = call i32 @regmap_update_bits(%struct.regmap* %508, i32 %509, i32 %510, i32 %511)
  %513 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %514 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %513, i32 0, i32 8
  %515 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  switch i32 %516, label %541 [
    i32 1, label %517
    i32 2, label %525
    i32 3, label %533
  ]

517:                                              ; preds = %463
  %518 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %519 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %518, i32 0, i32 7
  %520 = load %struct.regmap*, %struct.regmap** %519, align 8
  %521 = load i32, i32* @RT5645_A_JD_CTRL1, align 4
  %522 = load i32, i32* @RT5645_JD1_MODE_MASK, align 4
  %523 = load i32, i32* @RT5645_JD1_MODE_0, align 4
  %524 = call i32 @regmap_update_bits(%struct.regmap* %520, i32 %521, i32 %522, i32 %523)
  br label %542

525:                                              ; preds = %463
  %526 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %527 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %526, i32 0, i32 7
  %528 = load %struct.regmap*, %struct.regmap** %527, align 8
  %529 = load i32, i32* @RT5645_A_JD_CTRL1, align 4
  %530 = load i32, i32* @RT5645_JD1_MODE_MASK, align 4
  %531 = load i32, i32* @RT5645_JD1_MODE_1, align 4
  %532 = call i32 @regmap_update_bits(%struct.regmap* %528, i32 %529, i32 %530, i32 %531)
  br label %542

533:                                              ; preds = %463
  %534 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %535 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %534, i32 0, i32 7
  %536 = load %struct.regmap*, %struct.regmap** %535, align 8
  %537 = load i32, i32* @RT5645_A_JD_CTRL1, align 4
  %538 = load i32, i32* @RT5645_JD1_MODE_MASK, align 4
  %539 = load i32, i32* @RT5645_JD1_MODE_2, align 4
  %540 = call i32 @regmap_update_bits(%struct.regmap* %536, i32 %537, i32 %538, i32 %539)
  br label %542

541:                                              ; preds = %463
  br label %542

542:                                              ; preds = %541, %533, %525, %517
  %543 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %544 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %543, i32 0, i32 8
  %545 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %544, i32 0, i32 4
  %546 = load i64, i64* %545, align 8
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %556

548:                                              ; preds = %542
  %549 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %550 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %549, i32 0, i32 7
  %551 = load %struct.regmap*, %struct.regmap** %550, align 8
  %552 = load i32, i32* @RT5645_IRQ_CTRL2, align 4
  %553 = load i32, i32* @RT5645_JD_1_1_MASK, align 4
  %554 = load i32, i32* @RT5645_JD_1_1_INV, align 4
  %555 = call i32 @regmap_update_bits(%struct.regmap* %551, i32 %552, i32 %553, i32 %554)
  br label %556

556:                                              ; preds = %548, %542
  br label %557

557:                                              ; preds = %556, %457
  %558 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %559 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %558, i32 0, i32 7
  %560 = load %struct.regmap*, %struct.regmap** %559, align 8
  %561 = load i32, i32* @RT5645_ADDA_CLK1, align 4
  %562 = load i32, i32* @RT5645_I2S_PD1_MASK, align 4
  %563 = load i32, i32* @RT5645_I2S_PD1_2, align 4
  %564 = call i32 @regmap_update_bits(%struct.regmap* %560, i32 %561, i32 %562, i32 %563)
  %565 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %566 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %565, i32 0, i32 8
  %567 = getelementptr inbounds %struct.rt5645_platform_data, %struct.rt5645_platform_data* %566, i32 0, i32 3
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %578

570:                                              ; preds = %557
  %571 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %572 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %571, i32 0, i32 7
  %573 = load %struct.regmap*, %struct.regmap** %572, align 8
  %574 = load i32, i32* @RT5645_IRQ_CTRL2, align 4
  %575 = load i32, i32* @RT5645_JD_1_1_MASK, align 4
  %576 = load i32, i32* @RT5645_JD_1_1_INV, align 4
  %577 = call i32 @regmap_update_bits(%struct.regmap* %573, i32 %574, i32 %575, i32 %576)
  br label %578

578:                                              ; preds = %570, %557
  %579 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %580 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %579, i32 0, i32 6
  %581 = load i32, i32* @rt5645_btn_check_callback, align 4
  %582 = call i32 @timer_setup(i32* %580, i32 %581, i32 0)
  %583 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %584 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %583, i32 0, i32 5
  %585 = load i32, i32* @rt5645_jack_detect_work, align 4
  %586 = call i32 @INIT_DELAYED_WORK(i32* %584, i32 %585)
  %587 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %588 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %587, i32 0, i32 4
  %589 = load i32, i32* @rt5645_rcclock_work, align 4
  %590 = call i32 @INIT_DELAYED_WORK(i32* %588, i32 %589)
  %591 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %592 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %591, i32 0, i32 3
  %593 = load %struct.i2c_client*, %struct.i2c_client** %592, align 8
  %594 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %593, i32 0, i32 0
  %595 = load i64, i64* %594, align 8
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %619

597:                                              ; preds = %578
  %598 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %599 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %598, i32 0, i32 3
  %600 = load %struct.i2c_client*, %struct.i2c_client** %599, align 8
  %601 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = load i32, i32* @rt5645_irq, align 4
  %604 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %605 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %606 = or i32 %604, %605
  %607 = load i32, i32* @IRQF_ONESHOT, align 4
  %608 = or i32 %606, %607
  %609 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %610 = call i32 @request_threaded_irq(i64 %602, i32* null, i32 %603, i32 %608, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %struct.rt5645_priv* %609)
  store i32 %610, i32* %9, align 4
  %611 = load i32, i32* %9, align 4
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %618

613:                                              ; preds = %597
  %614 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %615 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %614, i32 0, i32 1
  %616 = load i32, i32* %9, align 4
  %617 = call i32 @dev_err(i32* %615, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %616)
  br label %646

618:                                              ; preds = %597
  br label %619

619:                                              ; preds = %618, %578
  %620 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %621 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %620, i32 0, i32 1
  %622 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rt5645_dai, align 8
  %623 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rt5645_dai, align 8
  %624 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %623)
  %625 = call i32 @devm_snd_soc_register_component(i32* %621, i32* @soc_component_dev_rt5645, %struct.TYPE_10__* %622, i32 %624)
  store i32 %625, i32* %9, align 4
  %626 = load i32, i32* %9, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %619
  br label %630

629:                                              ; preds = %619
  store i32 0, i32* %3, align 4
  br label %656

630:                                              ; preds = %628
  %631 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %632 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %631, i32 0, i32 3
  %633 = load %struct.i2c_client*, %struct.i2c_client** %632, align 8
  %634 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %645

637:                                              ; preds = %630
  %638 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %639 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %638, i32 0, i32 3
  %640 = load %struct.i2c_client*, %struct.i2c_client** %639, align 8
  %641 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %640, i32 0, i32 0
  %642 = load i64, i64* %641, align 8
  %643 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %644 = call i32 @free_irq(i64 %642, %struct.rt5645_priv* %643)
  br label %645

645:                                              ; preds = %637, %630
  br label %646

646:                                              ; preds = %645, %613, %231
  %647 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %648 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %647, i32 0, i32 2
  %649 = load %struct.TYPE_10__*, %struct.TYPE_10__** %648, align 8
  %650 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %649)
  %651 = load %struct.rt5645_priv*, %struct.rt5645_priv** %8, align 8
  %652 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %651, i32 0, i32 2
  %653 = load %struct.TYPE_10__*, %struct.TYPE_10__** %652, align 8
  %654 = call i32 @regulator_bulk_disable(i32 %650, %struct.TYPE_10__* %653)
  %655 = load i32, i32* %9, align 4
  store i32 %655, i32* %3, align 4
  br label %656

656:                                              ; preds = %646, %629, %244, %198, %185, %168, %128, %22
  %657 = load i32, i32* %3, align 4
  ret i32 %657
}

declare dso_local %struct.rt5645_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.rt5645_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5645_priv*) #1

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @rt5645_check_dp(i32*) #1

declare dso_local i32 @rt5645_parse_dt(%struct.rt5645_priv*, i32*) #1

declare dso_local i64 @QUIRK_IN2_DIFF(i32) #1

declare dso_local i64 @QUIRK_LEVEL_IRQ(i32) #1

declare dso_local i64 @QUIRK_INV_JD1_1(i32) #1

declare dso_local i32 @QUIRK_JD_MODE(i32) #1

declare dso_local i32 @QUIRK_DMIC1_DATA_PIN(i32) #1

declare dso_local i32 @QUIRK_DMIC2_DATA_PIN(i32) #1

declare dso_local %struct.regmap* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_10__*) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_register_patch(%struct.regmap*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i8*, %struct.rt5645_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.rt5645_priv*) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
