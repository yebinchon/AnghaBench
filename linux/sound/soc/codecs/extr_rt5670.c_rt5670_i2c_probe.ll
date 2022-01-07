; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rt5670_platform_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rt5670_priv = type { i32, %struct.rt5670_platform_data, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dmi_platform_intel_quirks = common dso_local global i32 0, align 4
@quirk_override = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Overriding quirk 0x%x => 0x%x\0A\00", align 1
@rt5670_quirk = common dso_local global i32 0, align 4
@RT5670_DEV_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"quirk dev_gpio\0A\00", align 1
@RT5670_IN2_DIFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"quirk IN2_DIFF\0A\00", align 1
@RT5670_DMIC_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"quirk DMIC enabled\0A\00", align 1
@RT5670_DMIC1_IN2P = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"quirk DMIC1 on IN2P pin\0A\00", align 1
@RT5670_DMIC1_GPIO6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"quirk DMIC1 on GPIO6 pin\0A\00", align 1
@RT5670_DMIC1_GPIO7 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"quirk DMIC1 on GPIO7 pin\0A\00", align 1
@RT5670_DMIC2_INR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"quirk DMIC2 on INR pin\0A\00", align 1
@RT5670_DMIC2_GPIO8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"quirk DMIC2 on GPIO8 pin\0A\00", align 1
@RT5670_DMIC3_GPIO5 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"quirk DMIC3 on GPIO5 pin\0A\00", align 1
@RT5670_JD_MODE1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"quirk JD mode 1\0A\00", align 1
@RT5670_JD_MODE2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"quirk JD mode 2\0A\00", align 1
@RT5670_JD_MODE3 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"quirk JD mode 3\0A\00", align 1
@rt5670_regmap = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RT5670_VENDOR_ID2 = common dso_local global i32 0, align 4
@RT5670_DEVICE_ID = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [46 x i8] c"Device with ID register %#x is not rt5670/72\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5670_RESET = common dso_local global i32 0, align 4
@RT5670_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5670_PWR_HP_L = common dso_local global i32 0, align 4
@RT5670_PWR_HP_R = common dso_local global i32 0, align 4
@RT5670_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5670_VENDOR_ID = common dso_local global i32 0, align 4
@RT5670_GPIO_CTRL3 = common dso_local global i32 0, align 4
@init_list = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@RT5670_DIG_MISC = common dso_local global i32 0, align 4
@RT5670_MCLK_DET = common dso_local global i32 0, align 4
@RT5670_IN2 = common dso_local global i32 0, align 4
@RT5670_IN_DF2 = common dso_local global i32 0, align 4
@RT5670_IL_CMD = common dso_local global i32 0, align 4
@RT5670_IL_CMD2 = common dso_local global i32 0, align 4
@RT5670_IL_CMD3 = common dso_local global i32 0, align 4
@RT5670_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5670_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5670_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5670_GPIO_CTRL2 = common dso_local global i32 0, align 4
@RT5670_GP1_PF_MASK = common dso_local global i32 0, align 4
@RT5670_GP1_PF_OUT = common dso_local global i32 0, align 4
@RT5670_GLB_CLK = common dso_local global i32 0, align 4
@RT5670_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5670_SCLK_SRC_RCCLK = common dso_local global i32 0, align 4
@RT5670_SCLK_S_RCCLK = common dso_local global i32 0, align 4
@RT5670_PWR_MB = common dso_local global i32 0, align 4
@RT5670_PWR_ANLG2 = common dso_local global i32 0, align 4
@RT5670_PWR_JD1 = common dso_local global i32 0, align 4
@RT5670_IRQ_CTRL1 = common dso_local global i32 0, align 4
@RT5670_JD1_1_EN_MASK = common dso_local global i32 0, align 4
@RT5670_JD1_1_EN = common dso_local global i32 0, align 4
@RT5670_JD_CTRL3 = common dso_local global i32 0, align 4
@RT5670_JD_TRI_CBJ_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_JD_TRI_HPO_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_JD_CBJ_JD1_1 = common dso_local global i32 0, align 4
@RT5670_JD_HPO_JD1_1 = common dso_local global i32 0, align 4
@RT5670_A_JD_CTRL1 = common dso_local global i32 0, align 4
@RT5670_JD1_MODE_MASK = common dso_local global i32 0, align 4
@RT5670_JD1_MODE_0 = common dso_local global i32 0, align 4
@RT5670_JD1_MODE_1 = common dso_local global i32 0, align 4
@RT5670_JD1_MODE_2 = common dso_local global i32 0, align 4
@RT5670_GP2_PIN_MASK = common dso_local global i32 0, align 4
@RT5670_GP2_PIN_DMIC1_SCL = common dso_local global i32 0, align 4
@RT5670_DMIC_CTRL1 = common dso_local global i32 0, align 4
@RT5670_DMIC_1_DP_MASK = common dso_local global i32 0, align 4
@RT5670_DMIC_1_DP_IN2P = common dso_local global i32 0, align 4
@RT5670_DMIC_1_DP_GPIO6 = common dso_local global i32 0, align 4
@RT5670_GP6_PIN_MASK = common dso_local global i32 0, align 4
@RT5670_GP6_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@RT5670_DMIC_1_DP_GPIO7 = common dso_local global i32 0, align 4
@RT5670_GP7_PIN_MASK = common dso_local global i32 0, align 4
@RT5670_GP7_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@RT5670_DMIC_2_DP_MASK = common dso_local global i32 0, align 4
@RT5670_DMIC_2_DP_IN3N = common dso_local global i32 0, align 4
@RT5670_DMIC_2_DP_GPIO8 = common dso_local global i32 0, align 4
@RT5670_GP8_PIN_MASK = common dso_local global i32 0, align 4
@RT5670_GP8_PIN_DMIC2_SDA = common dso_local global i32 0, align 4
@RT5670_DMIC_CTRL2 = common dso_local global i32 0, align 4
@RT5670_DMIC_3_DP_MASK = common dso_local global i32 0, align 4
@RT5670_DMIC_3_DP_GPIO5 = common dso_local global i32 0, align 4
@RT5670_GP5_PIN_MASK = common dso_local global i32 0, align 4
@RT5670_GP5_PIN_DMIC3_SDA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"Always use GPIO5 as DMIC3 data pin\0A\00", align 1
@soc_component_dev_rt5670 = common dso_local global i32 0, align 4
@rt5670_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5670_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5670_platform_data*, align 8
  %7 = alloca %struct.rt5670_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.rt5670_platform_data* @dev_get_platdata(i32* %11)
  store %struct.rt5670_platform_data* %12, %struct.rt5670_platform_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rt5670_priv* @devm_kzalloc(i32* %14, i32 48, i32 %15)
  store %struct.rt5670_priv* %16, %struct.rt5670_priv** %7, align 8
  %17 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %18 = icmp eq %struct.rt5670_priv* null, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %558

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.rt5670_priv* %24)
  %26 = load %struct.rt5670_platform_data*, %struct.rt5670_platform_data** %6, align 8
  %27 = icmp ne %struct.rt5670_platform_data* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %29, i32 0, i32 1
  %31 = load %struct.rt5670_platform_data*, %struct.rt5670_platform_data** %6, align 8
  %32 = bitcast %struct.rt5670_platform_data* %30 to i8*
  %33 = bitcast %struct.rt5670_platform_data* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 28, i1 false)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @dmi_platform_intel_quirks, align 4
  %36 = call i32 @dmi_check_system(i32 %35)
  %37 = load i32, i32* @quirk_override, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* @rt5670_quirk, align 4
  %43 = load i32, i32* @quirk_override, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_info(i32* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @quirk_override, align 4
  store i32 %45, i32* @rt5670_quirk, align 4
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* @rt5670_quirk, align 4
  %48 = load i32, i32* @RT5670_DEV_GPIO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %53 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* @rt5670_quirk, align 4
  %60 = load i32, i32* @RT5670_IN2_DIFF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %65 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @dev_info(i32* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* @rt5670_quirk, align 4
  %72 = load i32, i32* @RT5670_DMIC_EN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %77 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %77, i32 0, i32 2
  store i32 1, i32* %78, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 (i32*, i8*, ...) @dev_info(i32* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* @rt5670_quirk, align 4
  %84 = load i32, i32* @RT5670_DMIC1_IN2P, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %89, i32 0, i32 3
  store i32 129, i32* %90, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32 (i32*, i8*, ...) @dev_info(i32* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %87, %82
  %95 = load i32, i32* @rt5670_quirk, align 4
  %96 = load i32, i32* @RT5670_DMIC1_GPIO6, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %101 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %101, i32 0, i32 3
  store i32 133, i32* %102, align 4
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = call i32 (i32*, i8*, ...) @dev_info(i32* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %99, %94
  %107 = load i32, i32* @rt5670_quirk, align 4
  %108 = load i32, i32* @RT5670_DMIC1_GPIO7, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %113 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %113, i32 0, i32 3
  store i32 132, i32* %114, align 4
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_info(i32* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %111, %106
  %119 = load i32, i32* @rt5670_quirk, align 4
  %120 = load i32, i32* @RT5670_DMIC2_INR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %125 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %125, i32 0, i32 4
  store i32 128, i32* %126, align 4
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = call i32 (i32*, i8*, ...) @dev_info(i32* %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %130

130:                                              ; preds = %123, %118
  %131 = load i32, i32* @rt5670_quirk, align 4
  %132 = load i32, i32* @RT5670_DMIC2_GPIO8, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %137 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %137, i32 0, i32 4
  store i32 131, i32* %138, align 4
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = call i32 (i32*, i8*, ...) @dev_info(i32* %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %142

142:                                              ; preds = %135, %130
  %143 = load i32, i32* @rt5670_quirk, align 4
  %144 = load i32, i32* @RT5670_DMIC3_GPIO5, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %149 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %149, i32 0, i32 5
  store i32 134, i32* %150, align 4
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = call i32 (i32*, i8*, ...) @dev_info(i32* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %154

154:                                              ; preds = %147, %142
  %155 = load i32, i32* @rt5670_quirk, align 4
  %156 = load i32, i32* @RT5670_JD_MODE1, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %161 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %161, i32 0, i32 6
  store i32 1, i32* %162, align 4
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = call i32 (i32*, i8*, ...) @dev_info(i32* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %159, %154
  %167 = load i32, i32* @rt5670_quirk, align 4
  %168 = load i32, i32* @RT5670_JD_MODE2, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %173 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %173, i32 0, i32 6
  store i32 2, i32* %174, align 4
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 0
  %177 = call i32 (i32*, i8*, ...) @dev_info(i32* %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %178

178:                                              ; preds = %171, %166
  %179 = load i32, i32* @rt5670_quirk, align 4
  %180 = load i32, i32* @RT5670_JD_MODE3, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %185 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %185, i32 0, i32 6
  store i32 3, i32* %186, align 4
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %187, i32 0, i32 0
  %189 = call i32 (i32*, i8*, ...) @dev_info(i32* %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %190

190:                                              ; preds = %183, %178
  %191 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %192 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %191, i32* @rt5670_regmap)
  %193 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %194 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %196 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @IS_ERR(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %190
  %201 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %202 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @PTR_ERR(i32 %203)
  store i32 %204, i32* %8, align 4
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %205, i32 0, i32 0
  %207 = load i32, i32* %8, align 4
  %208 = call i32 (i32*, i8*, ...) @dev_err(i32* %206, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %3, align 4
  br label %558

210:                                              ; preds = %190
  %211 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %212 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @RT5670_VENDOR_ID2, align 4
  %215 = call i32 @regmap_read(i32 %213, i32 %214, i32* %9)
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @RT5670_DEVICE_ID, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %210
  %220 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %221 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %220, i32 0, i32 0
  %222 = load i32, i32* %9, align 4
  %223 = call i32 (i32*, i8*, ...) @dev_err(i32* %221, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* @ENODEV, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %558

226:                                              ; preds = %210
  %227 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %228 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @RT5670_RESET, align 4
  %231 = call i32 @regmap_write(i32 %229, i32 %230, i32 0)
  %232 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %233 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %236 = load i32, i32* @RT5670_PWR_HP_L, align 4
  %237 = load i32, i32* @RT5670_PWR_HP_R, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @RT5670_PWR_VREF2, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @RT5670_PWR_VREF2, align 4
  %242 = call i32 @regmap_update_bits(i32 %234, i32 %235, i32 %240, i32 %241)
  %243 = call i32 @msleep(i32 100)
  %244 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %245 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @RT5670_RESET, align 4
  %248 = call i32 @regmap_write(i32 %246, i32 %247, i32 0)
  %249 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %250 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @RT5670_VENDOR_ID, align 4
  %253 = call i32 @regmap_read(i32 %251, i32 %252, i32* %9)
  %254 = load i32, i32* %9, align 4
  %255 = icmp uge i32 %254, 4
  br i1 %255, label %256, label %262

256:                                              ; preds = %226
  %257 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %258 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @RT5670_GPIO_CTRL3, align 4
  %261 = call i32 @regmap_write(i32 %259, i32 %260, i32 2432)
  br label %268

262:                                              ; preds = %226
  %263 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %264 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @RT5670_GPIO_CTRL3, align 4
  %267 = call i32 @regmap_write(i32 %265, i32 %266, i32 3328)
  br label %268

268:                                              ; preds = %262, %256
  %269 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %270 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @init_list, align 4
  %273 = load i32, i32* @init_list, align 4
  %274 = call i32 @ARRAY_SIZE(i32 %273)
  %275 = call i32 @regmap_register_patch(i32 %271, i32 %272, i32 %274)
  store i32 %275, i32* %8, align 4
  %276 = load i32, i32* %8, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %268
  %279 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %280 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %279, i32 0, i32 0
  %281 = load i32, i32* %8, align 4
  %282 = call i32 @dev_warn(i32* %280, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %278, %268
  %284 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %285 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @RT5670_DIG_MISC, align 4
  %288 = load i32, i32* @RT5670_MCLK_DET, align 4
  %289 = load i32, i32* @RT5670_MCLK_DET, align 4
  %290 = call i32 @regmap_update_bits(i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %292 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %304

296:                                              ; preds = %283
  %297 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %298 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @RT5670_IN2, align 4
  %301 = load i32, i32* @RT5670_IN_DF2, align 4
  %302 = load i32, i32* @RT5670_IN_DF2, align 4
  %303 = call i32 @regmap_update_bits(i32 %299, i32 %300, i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %296, %283
  %305 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %306 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %340

310:                                              ; preds = %304
  %311 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %312 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @RT5670_IL_CMD, align 4
  %315 = call i32 @regmap_write(i32 %313, i32 %314, i32 0)
  %316 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %317 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @RT5670_IL_CMD2, align 4
  %320 = call i32 @regmap_write(i32 %318, i32 %319, i32 16)
  %321 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %322 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @RT5670_IL_CMD3, align 4
  %325 = call i32 @regmap_write(i32 %323, i32 %324, i32 20)
  %326 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %327 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @RT5670_GPIO_CTRL1, align 4
  %330 = load i32, i32* @RT5670_GP1_PIN_MASK, align 4
  %331 = load i32, i32* @RT5670_GP1_PIN_IRQ, align 4
  %332 = call i32 @regmap_update_bits(i32 %328, i32 %329, i32 %330, i32 %331)
  %333 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %334 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @RT5670_GPIO_CTRL2, align 4
  %337 = load i32, i32* @RT5670_GP1_PF_MASK, align 4
  %338 = load i32, i32* @RT5670_GP1_PF_OUT, align 4
  %339 = call i32 @regmap_update_bits(i32 %335, i32 %336, i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %310, %304
  %341 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %342 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %342, i32 0, i32 6
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %421

346:                                              ; preds = %340
  %347 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %348 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @RT5670_GLB_CLK, align 4
  %351 = load i32, i32* @RT5670_SCLK_SRC_MASK, align 4
  %352 = load i32, i32* @RT5670_SCLK_SRC_RCCLK, align 4
  %353 = call i32 @regmap_update_bits(i32 %349, i32 %350, i32 %351, i32 %352)
  %354 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %355 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %354, i32 0, i32 3
  store i64 0, i64* %355, align 8
  %356 = load i32, i32* @RT5670_SCLK_S_RCCLK, align 4
  %357 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %358 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %357, i32 0, i32 2
  store i32 %356, i32* %358, align 8
  %359 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %360 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %363 = load i32, i32* @RT5670_PWR_MB, align 4
  %364 = load i32, i32* @RT5670_PWR_MB, align 4
  %365 = call i32 @regmap_update_bits(i32 %361, i32 %362, i32 %363, i32 %364)
  %366 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %367 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @RT5670_PWR_ANLG2, align 4
  %370 = load i32, i32* @RT5670_PWR_JD1, align 4
  %371 = load i32, i32* @RT5670_PWR_JD1, align 4
  %372 = call i32 @regmap_update_bits(i32 %368, i32 %369, i32 %370, i32 %371)
  %373 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %374 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @RT5670_IRQ_CTRL1, align 4
  %377 = load i32, i32* @RT5670_JD1_1_EN_MASK, align 4
  %378 = load i32, i32* @RT5670_JD1_1_EN, align 4
  %379 = call i32 @regmap_update_bits(i32 %375, i32 %376, i32 %377, i32 %378)
  %380 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %381 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @RT5670_JD_CTRL3, align 4
  %384 = load i32, i32* @RT5670_JD_TRI_CBJ_SEL_MASK, align 4
  %385 = load i32, i32* @RT5670_JD_TRI_HPO_SEL_MASK, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @RT5670_JD_CBJ_JD1_1, align 4
  %388 = load i32, i32* @RT5670_JD_HPO_JD1_1, align 4
  %389 = or i32 %387, %388
  %390 = call i32 @regmap_update_bits(i32 %382, i32 %383, i32 %386, i32 %389)
  %391 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %392 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %392, i32 0, i32 6
  %394 = load i32, i32* %393, align 4
  switch i32 %394, label %419 [
    i32 1, label %395
    i32 2, label %403
    i32 3, label %411
  ]

395:                                              ; preds = %346
  %396 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %397 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @RT5670_A_JD_CTRL1, align 4
  %400 = load i32, i32* @RT5670_JD1_MODE_MASK, align 4
  %401 = load i32, i32* @RT5670_JD1_MODE_0, align 4
  %402 = call i32 @regmap_update_bits(i32 %398, i32 %399, i32 %400, i32 %401)
  br label %420

403:                                              ; preds = %346
  %404 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %405 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @RT5670_A_JD_CTRL1, align 4
  %408 = load i32, i32* @RT5670_JD1_MODE_MASK, align 4
  %409 = load i32, i32* @RT5670_JD1_MODE_1, align 4
  %410 = call i32 @regmap_update_bits(i32 %406, i32 %407, i32 %408, i32 %409)
  br label %420

411:                                              ; preds = %346
  %412 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %413 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @RT5670_A_JD_CTRL1, align 4
  %416 = load i32, i32* @RT5670_JD1_MODE_MASK, align 4
  %417 = load i32, i32* @RT5670_JD1_MODE_2, align 4
  %418 = call i32 @regmap_update_bits(i32 %414, i32 %415, i32 %416, i32 %417)
  br label %420

419:                                              ; preds = %346
  br label %420

420:                                              ; preds = %419, %411, %403, %395
  br label %421

421:                                              ; preds = %420, %340
  %422 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %423 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %533

427:                                              ; preds = %421
  %428 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %429 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @RT5670_GPIO_CTRL1, align 4
  %432 = load i32, i32* @RT5670_GP2_PIN_MASK, align 4
  %433 = load i32, i32* @RT5670_GP2_PIN_DMIC1_SCL, align 4
  %434 = call i32 @regmap_update_bits(i32 %430, i32 %431, i32 %432, i32 %433)
  %435 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %436 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  switch i32 %438, label %477 [
    i32 129, label %439
    i32 133, label %447
    i32 132, label %462
  ]

439:                                              ; preds = %427
  %440 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %441 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = load i32, i32* @RT5670_DMIC_CTRL1, align 4
  %444 = load i32, i32* @RT5670_DMIC_1_DP_MASK, align 4
  %445 = load i32, i32* @RT5670_DMIC_1_DP_IN2P, align 4
  %446 = call i32 @regmap_update_bits(i32 %442, i32 %443, i32 %444, i32 %445)
  br label %478

447:                                              ; preds = %427
  %448 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %449 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* @RT5670_DMIC_CTRL1, align 4
  %452 = load i32, i32* @RT5670_DMIC_1_DP_MASK, align 4
  %453 = load i32, i32* @RT5670_DMIC_1_DP_GPIO6, align 4
  %454 = call i32 @regmap_update_bits(i32 %450, i32 %451, i32 %452, i32 %453)
  %455 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %456 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @RT5670_GPIO_CTRL1, align 4
  %459 = load i32, i32* @RT5670_GP6_PIN_MASK, align 4
  %460 = load i32, i32* @RT5670_GP6_PIN_DMIC1_SDA, align 4
  %461 = call i32 @regmap_update_bits(i32 %457, i32 %458, i32 %459, i32 %460)
  br label %478

462:                                              ; preds = %427
  %463 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %464 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @RT5670_DMIC_CTRL1, align 4
  %467 = load i32, i32* @RT5670_DMIC_1_DP_MASK, align 4
  %468 = load i32, i32* @RT5670_DMIC_1_DP_GPIO7, align 4
  %469 = call i32 @regmap_update_bits(i32 %465, i32 %466, i32 %467, i32 %468)
  %470 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %471 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @RT5670_GPIO_CTRL1, align 4
  %474 = load i32, i32* @RT5670_GP7_PIN_MASK, align 4
  %475 = load i32, i32* @RT5670_GP7_PIN_DMIC1_SDA, align 4
  %476 = call i32 @regmap_update_bits(i32 %472, i32 %473, i32 %474, i32 %475)
  br label %478

477:                                              ; preds = %427
  br label %478

478:                                              ; preds = %477, %462, %447, %439
  %479 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %480 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 4
  switch i32 %482, label %506 [
    i32 128, label %483
    i32 131, label %491
  ]

483:                                              ; preds = %478
  %484 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %485 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @RT5670_DMIC_CTRL1, align 4
  %488 = load i32, i32* @RT5670_DMIC_2_DP_MASK, align 4
  %489 = load i32, i32* @RT5670_DMIC_2_DP_IN3N, align 4
  %490 = call i32 @regmap_update_bits(i32 %486, i32 %487, i32 %488, i32 %489)
  br label %507

491:                                              ; preds = %478
  %492 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %493 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @RT5670_DMIC_CTRL1, align 4
  %496 = load i32, i32* @RT5670_DMIC_2_DP_MASK, align 4
  %497 = load i32, i32* @RT5670_DMIC_2_DP_GPIO8, align 4
  %498 = call i32 @regmap_update_bits(i32 %494, i32 %495, i32 %496, i32 %497)
  %499 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %500 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @RT5670_GPIO_CTRL1, align 4
  %503 = load i32, i32* @RT5670_GP8_PIN_MASK, align 4
  %504 = load i32, i32* @RT5670_GP8_PIN_DMIC2_SDA, align 4
  %505 = call i32 @regmap_update_bits(i32 %501, i32 %502, i32 %503, i32 %504)
  br label %507

506:                                              ; preds = %478
  br label %507

507:                                              ; preds = %506, %491, %483
  %508 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %509 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.rt5670_platform_data, %struct.rt5670_platform_data* %509, i32 0, i32 5
  %511 = load i32, i32* %510, align 4
  switch i32 %511, label %531 [
    i32 134, label %512
    i32 130, label %527
    i32 135, label %527
  ]

512:                                              ; preds = %507
  %513 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %514 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* @RT5670_DMIC_CTRL2, align 4
  %517 = load i32, i32* @RT5670_DMIC_3_DP_MASK, align 4
  %518 = load i32, i32* @RT5670_DMIC_3_DP_GPIO5, align 4
  %519 = call i32 @regmap_update_bits(i32 %515, i32 %516, i32 %517, i32 %518)
  %520 = load %struct.rt5670_priv*, %struct.rt5670_priv** %7, align 8
  %521 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @RT5670_GPIO_CTRL1, align 4
  %524 = load i32, i32* @RT5670_GP5_PIN_MASK, align 4
  %525 = load i32, i32* @RT5670_GP5_PIN_DMIC3_SDA, align 4
  %526 = call i32 @regmap_update_bits(i32 %522, i32 %523, i32 %524, i32 %525)
  br label %532

527:                                              ; preds = %507, %507
  %528 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %529 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %528, i32 0, i32 0
  %530 = call i32 (i32*, i8*, ...) @dev_err(i32* %529, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  br label %532

531:                                              ; preds = %507
  br label %532

532:                                              ; preds = %531, %527, %512
  br label %533

533:                                              ; preds = %532, %421
  %534 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %535 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %534, i32 0, i32 0
  %536 = call i32 @pm_runtime_enable(i32* %535)
  %537 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %538 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %537, i32 0, i32 0
  %539 = call i32 @pm_request_idle(i32* %538)
  %540 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %541 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %540, i32 0, i32 0
  %542 = load i32, i32* @rt5670_dai, align 4
  %543 = load i32, i32* @rt5670_dai, align 4
  %544 = call i32 @ARRAY_SIZE(i32 %543)
  %545 = call i32 @devm_snd_soc_register_component(i32* %541, i32* @soc_component_dev_rt5670, i32 %542, i32 %544)
  store i32 %545, i32* %8, align 4
  %546 = load i32, i32* %8, align 4
  %547 = icmp slt i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %533
  br label %553

549:                                              ; preds = %533
  %550 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %551 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %550, i32 0, i32 0
  %552 = call i32 @pm_runtime_put(i32* %551)
  store i32 0, i32* %3, align 4
  br label %558

553:                                              ; preds = %548
  %554 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %555 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %554, i32 0, i32 0
  %556 = call i32 @pm_runtime_disable(i32* %555)
  %557 = load i32, i32* %8, align 4
  store i32 %557, i32* %3, align 4
  br label %558

558:                                              ; preds = %553, %549, %219, %200, %19
  %559 = load i32, i32* %3, align 4
  ret i32 %559
}

declare dso_local %struct.rt5670_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.rt5670_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5670_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_request_idle(i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
