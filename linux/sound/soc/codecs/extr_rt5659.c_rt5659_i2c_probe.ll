; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.rt5659_platform_data = type { i32, i32, i32, i64, i64, i64 }
%struct.rt5659_priv = type { i32*, i32, %struct.rt5659_platform_data, i32*, i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ldo1-en\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Request ldo1-en GPIO failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@rt5659_regmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RT5659_DEVICE_ID = common dso_local global i32 0, align 4
@DEVICE_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Device with ID register %x is not rt5659\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5659_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RT5659_IN1_IN2 = common dso_local global i32 0, align 4
@RT5659_IN1_DF_MASK = common dso_local global i32 0, align 4
@RT5659_IN3_IN4 = common dso_local global i32 0, align 4
@RT5659_IN3_DF_MASK = common dso_local global i32 0, align 4
@RT5659_IN4_DF_MASK = common dso_local global i32 0, align 4
@RT5659_DMIC1_NULL = common dso_local global i32 0, align 4
@RT5659_DMIC2_NULL = common dso_local global i32 0, align 4
@RT5659_GPIO_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_GP2_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_GP2_PIN_DMIC1_SCL = common dso_local global i32 0, align 4
@RT5659_DMIC_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_DMIC_1_DP_MASK = common dso_local global i32 0, align 4
@RT5659_DMIC_1_DP_IN2N = common dso_local global i32 0, align 4
@RT5659_GPIO_CTRL_3 = common dso_local global i32 0, align 4
@RT5659_I2S2_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_I2S2_PIN_GPIO = common dso_local global i32 0, align 4
@RT5659_DMIC_1_DP_GPIO5 = common dso_local global i32 0, align 4
@RT5659_GP5_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_GP5_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@RT5659_DMIC_1_DP_GPIO9 = common dso_local global i32 0, align 4
@RT5659_GP9_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_GP9_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@RT5659_DMIC_1_DP_GPIO11 = common dso_local global i32 0, align 4
@RT5659_GP11_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_GP11_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"no DMIC1\0A\00", align 1
@RT5659_DMIC_2_DP_MASK = common dso_local global i32 0, align 4
@RT5659_DMIC_2_DP_IN2P = common dso_local global i32 0, align 4
@RT5659_DMIC_2_DP_GPIO6 = common dso_local global i32 0, align 4
@RT5659_GP6_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_GP6_PIN_DMIC2_SDA = common dso_local global i32 0, align 4
@RT5659_DMIC_2_DP_GPIO10 = common dso_local global i32 0, align 4
@RT5659_GP10_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_GP10_PIN_DMIC2_SDA = common dso_local global i32 0, align 4
@RT5659_DMIC_2_DP_GPIO12 = common dso_local global i32 0, align 4
@RT5659_GP12_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_GP12_PIN_DMIC2_SDA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"no DMIC2\0A\00", align 1
@RT5659_GP2_PIN_GPIO2 = common dso_local global i32 0, align 4
@RT5659_GP5_PIN_GPIO5 = common dso_local global i32 0, align 4
@RT5659_GP9_PIN_GPIO9 = common dso_local global i32 0, align 4
@RT5659_GP11_PIN_GPIO11 = common dso_local global i32 0, align 4
@RT5659_GP6_PIN_GPIO6 = common dso_local global i32 0, align 4
@RT5659_GP10_PIN_GPIO10 = common dso_local global i32 0, align 4
@RT5659_GP12_PIN_GPIO12 = common dso_local global i32 0, align 4
@RT5659_EJD_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_RC_CLK_CTRL = common dso_local global i32 0, align 4
@RT5659_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5659_PWR_MB = common dso_local global i32 0, align 4
@RT5659_PWR_ANLG_2 = common dso_local global i32 0, align 4
@RT5659_IRQ_CTRL_2 = common dso_local global i32 0, align 4
@rt5659_jack_detect_work = common dso_local global i32 0, align 4
@RT5659_JD_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_IRQ_CTRL_1 = common dso_local global i32 0, align 4
@rt5659_jack_detect_intel_hd_header = common dso_local global i32 0, align 4
@rt5659_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"rt5659\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to reguest IRQ: %d\0A\00", align 1
@RT5659_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5659_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@soc_component_dev_rt5659 = common dso_local global i32 0, align 4
@rt5659_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5659_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5659_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5659_platform_data*, align 8
  %7 = alloca %struct.rt5659_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.rt5659_platform_data* @dev_get_platdata(i32* %11)
  store %struct.rt5659_platform_data* %12, %struct.rt5659_platform_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rt5659_priv* @devm_kzalloc(i32* %14, i32 80, i32 %15)
  store %struct.rt5659_priv* %16, %struct.rt5659_priv** %7, align 8
  %17 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %18 = icmp eq %struct.rt5659_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %487

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.rt5659_priv* %24)
  %26 = load %struct.rt5659_platform_data*, %struct.rt5659_platform_data** %6, align 8
  %27 = icmp ne %struct.rt5659_platform_data* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %29, i32 0, i32 2
  %31 = load %struct.rt5659_platform_data*, %struct.rt5659_platform_data** %6, align 8
  %32 = bitcast %struct.rt5659_platform_data* %30 to i8*
  %33 = bitcast %struct.rt5659_platform_data* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 40, i1 false)
  br label %39

34:                                               ; preds = %22
  %35 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @rt5659_parse_dt(%struct.rt5659_priv* %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %43 = call i8* @devm_gpiod_get_optional(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %46 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %48 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %39
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %60 = call i8* @devm_gpiod_get_optional(i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %62 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = call i32 @msleep(i32 300)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = call i32* @devm_regmap_init_i2c(%struct.i2c_client* %64, i32* @rt5659_regmap)
  %66 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %67 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %69 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @IS_ERR(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %56
  %74 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %75 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @PTR_ERR(i32* %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %487

83:                                               ; preds = %56
  %84 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %85 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @RT5659_DEVICE_ID, align 4
  %88 = call i32 @regmap_read(i32* %86, i32 %87, i32* %9)
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @DEVICE_ID, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %487

99:                                               ; preds = %83
  %100 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %101 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @RT5659_RESET, align 4
  %104 = call i32 @regmap_write(i32* %102, i32 %103, i32 0)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = call i32* @devm_clk_get(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %109 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %108, i32 0, i32 3
  store i32* %107, i32** %109, align 8
  %110 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %111 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %99
  %116 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %117 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @PTR_ERR(i32* %118)
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %125 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @PTR_ERR(i32* %126)
  store i32 %127, i32* %3, align 4
  br label %487

128:                                              ; preds = %115
  %129 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %130 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %129, i32 0, i32 3
  store i32* null, i32** %130, align 8
  br label %131

131:                                              ; preds = %128, %99
  %132 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %133 = call i32 @rt5659_calibrate(%struct.rt5659_priv* %132)
  %134 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %135 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.rt5659_platform_data, %struct.rt5659_platform_data* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %141 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* @RT5659_IN1_IN2, align 4
  %144 = load i32, i32* @RT5659_IN1_DF_MASK, align 4
  %145 = load i32, i32* @RT5659_IN1_DF_MASK, align 4
  %146 = call i32 @regmap_update_bits(i32* %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %131
  %148 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %149 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.rt5659_platform_data, %struct.rt5659_platform_data* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %155 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @RT5659_IN3_IN4, align 4
  %158 = load i32, i32* @RT5659_IN3_DF_MASK, align 4
  %159 = load i32, i32* @RT5659_IN3_DF_MASK, align 4
  %160 = call i32 @regmap_update_bits(i32* %156, i32 %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %153, %147
  %162 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %163 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.rt5659_platform_data, %struct.rt5659_platform_data* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %169 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @RT5659_IN3_IN4, align 4
  %172 = load i32, i32* @RT5659_IN4_DF_MASK, align 4
  %173 = load i32, i32* @RT5659_IN4_DF_MASK, align 4
  %174 = call i32 @regmap_update_bits(i32* %170, i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %167, %161
  %176 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %177 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.rt5659_platform_data, %struct.rt5659_platform_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @RT5659_DMIC1_NULL, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %175
  %183 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %184 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.rt5659_platform_data, %struct.rt5659_platform_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @RT5659_DMIC2_NULL, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %328

189:                                              ; preds = %182, %175
  %190 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %191 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %194 = load i32, i32* @RT5659_GP2_PIN_MASK, align 4
  %195 = load i32, i32* @RT5659_GP2_PIN_DMIC1_SCL, align 4
  %196 = call i32 @regmap_update_bits(i32* %192, i32 %193, i32 %194, i32 %195)
  %197 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %198 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.rt5659_platform_data, %struct.rt5659_platform_data* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  switch i32 %200, label %261 [
    i32 134, label %201
    i32 136, label %209
    i32 135, label %231
    i32 137, label %246
  ]

201:                                              ; preds = %189
  %202 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %203 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %206 = load i32, i32* @RT5659_DMIC_1_DP_MASK, align 4
  %207 = load i32, i32* @RT5659_DMIC_1_DP_IN2N, align 4
  %208 = call i32 @regmap_update_bits(i32* %204, i32 %205, i32 %206, i32 %207)
  br label %265

209:                                              ; preds = %189
  %210 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %211 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* @RT5659_GPIO_CTRL_3, align 4
  %214 = load i32, i32* @RT5659_I2S2_PIN_MASK, align 4
  %215 = load i32, i32* @RT5659_I2S2_PIN_GPIO, align 4
  %216 = call i32 @regmap_update_bits(i32* %212, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %218 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %221 = load i32, i32* @RT5659_DMIC_1_DP_MASK, align 4
  %222 = load i32, i32* @RT5659_DMIC_1_DP_GPIO5, align 4
  %223 = call i32 @regmap_update_bits(i32* %219, i32 %220, i32 %221, i32 %222)
  %224 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %225 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %228 = load i32, i32* @RT5659_GP5_PIN_MASK, align 4
  %229 = load i32, i32* @RT5659_GP5_PIN_DMIC1_SDA, align 4
  %230 = call i32 @regmap_update_bits(i32* %226, i32 %227, i32 %228, i32 %229)
  br label %265

231:                                              ; preds = %189
  %232 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %233 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %236 = load i32, i32* @RT5659_DMIC_1_DP_MASK, align 4
  %237 = load i32, i32* @RT5659_DMIC_1_DP_GPIO9, align 4
  %238 = call i32 @regmap_update_bits(i32* %234, i32 %235, i32 %236, i32 %237)
  %239 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %240 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %243 = load i32, i32* @RT5659_GP9_PIN_MASK, align 4
  %244 = load i32, i32* @RT5659_GP9_PIN_DMIC1_SDA, align 4
  %245 = call i32 @regmap_update_bits(i32* %241, i32 %242, i32 %243, i32 %244)
  br label %265

246:                                              ; preds = %189
  %247 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %248 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %251 = load i32, i32* @RT5659_DMIC_1_DP_MASK, align 4
  %252 = load i32, i32* @RT5659_DMIC_1_DP_GPIO11, align 4
  %253 = call i32 @regmap_update_bits(i32* %249, i32 %250, i32 %251, i32 %252)
  %254 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %255 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %258 = load i32, i32* @RT5659_GP11_PIN_MASK, align 4
  %259 = load i32, i32* @RT5659_GP11_PIN_DMIC1_SDA, align 4
  %260 = call i32 @regmap_update_bits(i32* %256, i32 %257, i32 %258, i32 %259)
  br label %265

261:                                              ; preds = %189
  %262 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %263 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %262, i32 0, i32 0
  %264 = call i32 @dev_dbg(i32* %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %265

265:                                              ; preds = %261, %246, %231, %209, %201
  %266 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %267 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.rt5659_platform_data, %struct.rt5659_platform_data* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  switch i32 %269, label %323 [
    i32 130, label %270
    i32 131, label %278
    i32 133, label %293
    i32 132, label %308
  ]

270:                                              ; preds = %265
  %271 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %272 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %275 = load i32, i32* @RT5659_DMIC_2_DP_MASK, align 4
  %276 = load i32, i32* @RT5659_DMIC_2_DP_IN2P, align 4
  %277 = call i32 @regmap_update_bits(i32* %273, i32 %274, i32 %275, i32 %276)
  br label %327

278:                                              ; preds = %265
  %279 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %280 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %283 = load i32, i32* @RT5659_DMIC_2_DP_MASK, align 4
  %284 = load i32, i32* @RT5659_DMIC_2_DP_GPIO6, align 4
  %285 = call i32 @regmap_update_bits(i32* %281, i32 %282, i32 %283, i32 %284)
  %286 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %287 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %290 = load i32, i32* @RT5659_GP6_PIN_MASK, align 4
  %291 = load i32, i32* @RT5659_GP6_PIN_DMIC2_SDA, align 4
  %292 = call i32 @regmap_update_bits(i32* %288, i32 %289, i32 %290, i32 %291)
  br label %327

293:                                              ; preds = %265
  %294 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %295 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %298 = load i32, i32* @RT5659_DMIC_2_DP_MASK, align 4
  %299 = load i32, i32* @RT5659_DMIC_2_DP_GPIO10, align 4
  %300 = call i32 @regmap_update_bits(i32* %296, i32 %297, i32 %298, i32 %299)
  %301 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %302 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %305 = load i32, i32* @RT5659_GP10_PIN_MASK, align 4
  %306 = load i32, i32* @RT5659_GP10_PIN_DMIC2_SDA, align 4
  %307 = call i32 @regmap_update_bits(i32* %303, i32 %304, i32 %305, i32 %306)
  br label %327

308:                                              ; preds = %265
  %309 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %310 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %313 = load i32, i32* @RT5659_DMIC_2_DP_MASK, align 4
  %314 = load i32, i32* @RT5659_DMIC_2_DP_GPIO12, align 4
  %315 = call i32 @regmap_update_bits(i32* %311, i32 %312, i32 %313, i32 %314)
  %316 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %317 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %320 = load i32, i32* @RT5659_GP12_PIN_MASK, align 4
  %321 = load i32, i32* @RT5659_GP12_PIN_DMIC2_SDA, align 4
  %322 = call i32 @regmap_update_bits(i32* %318, i32 %319, i32 %320, i32 %321)
  br label %327

323:                                              ; preds = %265
  %324 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %325 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %324, i32 0, i32 0
  %326 = call i32 @dev_dbg(i32* %325, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %327

327:                                              ; preds = %323, %308, %293, %278, %270
  br label %371

328:                                              ; preds = %182
  %329 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %330 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %333 = load i32, i32* @RT5659_GP2_PIN_MASK, align 4
  %334 = load i32, i32* @RT5659_GP5_PIN_MASK, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @RT5659_GP9_PIN_MASK, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @RT5659_GP11_PIN_MASK, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* @RT5659_GP6_PIN_MASK, align 4
  %341 = or i32 %339, %340
  %342 = load i32, i32* @RT5659_GP10_PIN_MASK, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @RT5659_GP12_PIN_MASK, align 4
  %345 = or i32 %343, %344
  %346 = load i32, i32* @RT5659_GP2_PIN_GPIO2, align 4
  %347 = load i32, i32* @RT5659_GP5_PIN_GPIO5, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* @RT5659_GP9_PIN_GPIO9, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @RT5659_GP11_PIN_GPIO11, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* @RT5659_GP6_PIN_GPIO6, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* @RT5659_GP10_PIN_GPIO10, align 4
  %356 = or i32 %354, %355
  %357 = load i32, i32* @RT5659_GP12_PIN_GPIO12, align 4
  %358 = or i32 %356, %357
  %359 = call i32 @regmap_update_bits(i32* %331, i32 %332, i32 %345, i32 %358)
  %360 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %361 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* @RT5659_DMIC_CTRL_1, align 4
  %364 = load i32, i32* @RT5659_DMIC_1_DP_MASK, align 4
  %365 = load i32, i32* @RT5659_DMIC_2_DP_MASK, align 4
  %366 = or i32 %364, %365
  %367 = load i32, i32* @RT5659_DMIC_1_DP_IN2N, align 4
  %368 = load i32, i32* @RT5659_DMIC_2_DP_IN2P, align 4
  %369 = or i32 %367, %368
  %370 = call i32 @regmap_update_bits(i32* %362, i32 %363, i32 %366, i32 %369)
  br label %371

371:                                              ; preds = %328, %327
  %372 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %373 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.rt5659_platform_data, %struct.rt5659_platform_data* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  switch i32 %375, label %445 [
    i32 129, label %376
    i32 128, label %413
  ]

376:                                              ; preds = %371
  %377 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %378 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* @RT5659_EJD_CTRL_1, align 4
  %381 = call i32 @regmap_write(i32* %379, i32 %380, i32 43136)
  %382 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %383 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* @RT5659_RC_CLK_CTRL, align 4
  %386 = call i32 @regmap_write(i32* %384, i32 %385, i32 36864)
  %387 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %388 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  %390 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %391 = call i32 @regmap_write(i32* %389, i32 %390, i32 51200)
  %392 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %393 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* @RT5659_PWR_ANLG_1, align 4
  %396 = load i32, i32* @RT5659_PWR_MB, align 4
  %397 = load i32, i32* @RT5659_PWR_MB, align 4
  %398 = call i32 @regmap_update_bits(i32* %394, i32 %395, i32 %396, i32 %397)
  %399 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %400 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %399, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* @RT5659_PWR_ANLG_2, align 4
  %403 = call i32 @regmap_write(i32* %401, i32 %402, i32 1)
  %404 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %405 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* @RT5659_IRQ_CTRL_2, align 4
  %408 = call i32 @regmap_write(i32* %406, i32 %407, i32 64)
  %409 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %410 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %409, i32 0, i32 1
  %411 = load i32, i32* @rt5659_jack_detect_work, align 4
  %412 = call i32 @INIT_DELAYED_WORK(i32* %410, i32 %411)
  br label %446

413:                                              ; preds = %371
  %414 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %415 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %414, i32 0, i32 0
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* @RT5659_GPIO_CTRL_3, align 4
  %418 = call i32 @regmap_write(i32* %416, i32 %417, i32 32768)
  %419 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %420 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* @RT5659_RC_CLK_CTRL, align 4
  %423 = call i32 @regmap_write(i32* %421, i32 %422, i32 2304)
  %424 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %425 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %424, i32 0, i32 0
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* @RT5659_EJD_CTRL_1, align 4
  %428 = call i32 @regmap_write(i32* %426, i32 %427, i32 28864)
  %429 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %430 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %429, i32 0, i32 0
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* @RT5659_JD_CTRL_1, align 4
  %433 = call i32 @regmap_write(i32* %431, i32 %432, i32 8192)
  %434 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %435 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* @RT5659_IRQ_CTRL_1, align 4
  %438 = call i32 @regmap_write(i32* %436, i32 %437, i32 64)
  %439 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %440 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %439, i32 0, i32 1
  %441 = load i32, i32* @rt5659_jack_detect_intel_hd_header, align 4
  %442 = call i32 @INIT_DELAYED_WORK(i32* %440, i32 %441)
  %443 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %444 = call i32 @rt5659_intel_hd_header_probe_setup(%struct.rt5659_priv* %443)
  br label %446

445:                                              ; preds = %371
  br label %446

446:                                              ; preds = %445, %413, %376
  %447 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %448 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %480

451:                                              ; preds = %446
  %452 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %453 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %452, i32 0, i32 0
  %454 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %455 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = load i32, i32* @rt5659_irq, align 4
  %458 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %459 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %460 = or i32 %458, %459
  %461 = load i32, i32* @IRQF_ONESHOT, align 4
  %462 = or i32 %460, %461
  %463 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %464 = call i32 @devm_request_threaded_irq(i32* %453, i64 %456, i32* null, i32 %457, i32 %462, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.rt5659_priv* %463)
  store i32 %464, i32* %8, align 4
  %465 = load i32, i32* %8, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %451
  %468 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %469 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %468, i32 0, i32 0
  %470 = load i32, i32* %8, align 4
  %471 = call i32 @dev_err(i32* %469, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %470)
  br label %472

472:                                              ; preds = %467, %451
  %473 = load %struct.rt5659_priv*, %struct.rt5659_priv** %7, align 8
  %474 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %473, i32 0, i32 0
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* @RT5659_GPIO_CTRL_1, align 4
  %477 = load i32, i32* @RT5659_GP1_PIN_MASK, align 4
  %478 = load i32, i32* @RT5659_GP1_PIN_IRQ, align 4
  %479 = call i32 @regmap_update_bits(i32* %475, i32 %476, i32 %477, i32 %478)
  br label %480

480:                                              ; preds = %472, %446
  %481 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %482 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %481, i32 0, i32 0
  %483 = load i32, i32* @rt5659_dai, align 4
  %484 = load i32, i32* @rt5659_dai, align 4
  %485 = call i32 @ARRAY_SIZE(i32 %484)
  %486 = call i32 @devm_snd_soc_register_component(i32* %482, i32* @soc_component_dev_rt5659, i32 %483, i32 %485)
  store i32 %486, i32* %3, align 4
  br label %487

487:                                              ; preds = %480, %123, %92, %73, %19
  %488 = load i32, i32* %3, align 4
  ret i32 %488
}

declare dso_local %struct.rt5659_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.rt5659_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5659_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rt5659_parse_dt(%struct.rt5659_priv*, i32*) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32*, i32, i32*) #1

declare dso_local i32 @regmap_write(i32*, i32, i32) #1

declare dso_local i32* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @rt5659_calibrate(%struct.rt5659_priv*) #1

declare dso_local i32 @regmap_update_bits(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @rt5659_intel_hd_header_probe_setup(%struct.rt5659_priv*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.rt5659_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
