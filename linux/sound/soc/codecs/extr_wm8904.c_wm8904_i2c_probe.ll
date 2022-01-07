; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.i2c_device_id = type { i32 }
%struct.wm8904_priv = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to get MCLK\0A\00", align 1
@wm8904_regmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@wm8904_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@wm8904_supply_names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8904_SW_RESET_AND_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to read ID register: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Device is not a WM8904, ID is %x\0A\00", align 1
@WM8904_REVISION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to read device revision: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"revision %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@WM8904_ADC_DIGITAL_VOLUME_LEFT = common dso_local global i64 0, align 8
@WM8904_ADC_VU = common dso_local global i32 0, align 4
@WM8904_ADC_DIGITAL_VOLUME_RIGHT = common dso_local global i64 0, align 8
@WM8904_DAC_DIGITAL_VOLUME_LEFT = common dso_local global i64 0, align 8
@WM8904_DAC_VU = common dso_local global i32 0, align 4
@WM8904_DAC_DIGITAL_VOLUME_RIGHT = common dso_local global i64 0, align 8
@WM8904_ANALOGUE_OUT1_LEFT = common dso_local global i64 0, align 8
@WM8904_HPOUT_VU = common dso_local global i32 0, align 4
@WM8904_HPOUTLZC = common dso_local global i32 0, align 4
@WM8904_ANALOGUE_OUT1_RIGHT = common dso_local global i64 0, align 8
@WM8904_HPOUTRZC = common dso_local global i32 0, align 4
@WM8904_ANALOGUE_OUT2_LEFT = common dso_local global i64 0, align 8
@WM8904_LINEOUT_VU = common dso_local global i32 0, align 4
@WM8904_LINEOUTLZC = common dso_local global i32 0, align 4
@WM8904_ANALOGUE_OUT2_RIGHT = common dso_local global i64 0, align 8
@WM8904_LINEOUTRZC = common dso_local global i32 0, align 4
@WM8904_CLOCK_RATES_0 = common dso_local global i64 0, align 8
@WM8904_SR_MODE = common dso_local global i32 0, align 4
@WM8904_GPIO_REGS = common dso_local global i32 0, align 4
@WM8904_GPIO_CONTROL_1 = common dso_local global i64 0, align 8
@WM8904_MIC_REGS = common dso_local global i32 0, align 4
@WM8904_MIC_BIAS_CONTROL_0 = common dso_local global i64 0, align 8
@WM8904_CLASS_W_0 = common dso_local global i64 0, align 8
@WM8904_CP_DYN_PWR = common dso_local global i32 0, align 4
@WM8904_BIAS_CONTROL_0 = common dso_local global i64 0, align 8
@WM8904_POBCTRL = common dso_local global i32 0, align 4
@soc_component_dev_wm8904 = common dso_local global i32 0, align 4
@wm8904_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8904_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8904_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.of_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wm8904_priv* @devm_kzalloc(%struct.TYPE_14__* %12, i32 40, i32 %13)
  store %struct.wm8904_priv* %14, %struct.wm8904_priv** %6, align 8
  %15 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %16 = icmp eq %struct.wm8904_priv* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %406

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @devm_clk_get(%struct.TYPE_14__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %25 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %27 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %33 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %406

40:                                               ; preds = %20
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %41, i32* @wm8904_regmap)
  %43 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %44 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %46 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %52 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %406

60:                                               ; preds = %40
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load i32, i32* @wm8904_of_match, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call %struct.of_device_id* @of_match_node(i32 %67, i64 %71)
  store %struct.of_device_id* %72, %struct.of_device_id** %10, align 8
  %73 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %74 = icmp eq %struct.of_device_id* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %406

78:                                               ; preds = %66
  %79 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %80 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %91

85:                                               ; preds = %60
  %86 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %90 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %94 = call i32 @i2c_set_clientdata(%struct.i2c_client* %92, %struct.wm8904_priv* %93)
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %100 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %99, i32 0, i32 3
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %100, align 8
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %121, %91
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %104 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %105)
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %101
  %109 = load i32*, i32** @wm8904_supply_names, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %115 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %114, i32 0, i32 1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %108
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %101

124:                                              ; preds = %101
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %128 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %129)
  %131 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %132 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %131, i32 0, i32 1
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = call i32 @devm_regulator_bulk_get(%struct.TYPE_14__* %126, i32 %130, %struct.TYPE_13__* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %406

143:                                              ; preds = %124
  %144 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %145 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %144, i32 0, i32 1
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %146)
  %148 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %149 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %148, i32 0, i32 1
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = call i32 @regulator_bulk_enable(i32 %147, %struct.TYPE_13__* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %143
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %406

160:                                              ; preds = %143
  %161 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %162 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @WM8904_SW_RESET_AND_ID, align 4
  %165 = call i32 @regmap_read(i32 %163, i32 %164, i32* %7)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %160
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  br label %396

173:                                              ; preds = %160
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 35076
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 0
  %179 = load i32, i32* %7, align 4
  %180 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %178, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %8, align 4
  br label %396

183:                                              ; preds = %173
  %184 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %185 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @WM8904_REVISION, align 4
  %188 = call i32 @regmap_read(i32 %186, i32 %187, i32* %7)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %183
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %194)
  br label %396

196:                                              ; preds = %183
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 0
  %199 = load i32, i32* %7, align 4
  %200 = add i32 %199, 65
  %201 = call i32 @dev_info(%struct.TYPE_14__* %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %200)
  %202 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %203 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @WM8904_SW_RESET_AND_ID, align 4
  %206 = call i32 @regmap_write(i32 %204, i32 %205, i32 0)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %196
  %210 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %211 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %210, i32 0, i32 0
  %212 = load i32, i32* %8, align 4
  %213 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %212)
  br label %396

214:                                              ; preds = %196
  %215 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %216 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i64, i64* @WM8904_ADC_DIGITAL_VOLUME_LEFT, align 8
  %219 = load i32, i32* @WM8904_ADC_VU, align 4
  %220 = load i32, i32* @WM8904_ADC_VU, align 4
  %221 = call i32 @regmap_update_bits(i32 %217, i64 %218, i32 %219, i32 %220)
  %222 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %223 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i64, i64* @WM8904_ADC_DIGITAL_VOLUME_RIGHT, align 8
  %226 = load i32, i32* @WM8904_ADC_VU, align 4
  %227 = load i32, i32* @WM8904_ADC_VU, align 4
  %228 = call i32 @regmap_update_bits(i32 %224, i64 %225, i32 %226, i32 %227)
  %229 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %230 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i64, i64* @WM8904_DAC_DIGITAL_VOLUME_LEFT, align 8
  %233 = load i32, i32* @WM8904_DAC_VU, align 4
  %234 = load i32, i32* @WM8904_DAC_VU, align 4
  %235 = call i32 @regmap_update_bits(i32 %231, i64 %232, i32 %233, i32 %234)
  %236 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %237 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i64, i64* @WM8904_DAC_DIGITAL_VOLUME_RIGHT, align 8
  %240 = load i32, i32* @WM8904_DAC_VU, align 4
  %241 = load i32, i32* @WM8904_DAC_VU, align 4
  %242 = call i32 @regmap_update_bits(i32 %238, i64 %239, i32 %240, i32 %241)
  %243 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %244 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i64, i64* @WM8904_ANALOGUE_OUT1_LEFT, align 8
  %247 = load i32, i32* @WM8904_HPOUT_VU, align 4
  %248 = load i32, i32* @WM8904_HPOUTLZC, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @WM8904_HPOUT_VU, align 4
  %251 = load i32, i32* @WM8904_HPOUTLZC, align 4
  %252 = or i32 %250, %251
  %253 = call i32 @regmap_update_bits(i32 %245, i64 %246, i32 %249, i32 %252)
  %254 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %255 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i64, i64* @WM8904_ANALOGUE_OUT1_RIGHT, align 8
  %258 = load i32, i32* @WM8904_HPOUT_VU, align 4
  %259 = load i32, i32* @WM8904_HPOUTRZC, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @WM8904_HPOUT_VU, align 4
  %262 = load i32, i32* @WM8904_HPOUTRZC, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @regmap_update_bits(i32 %256, i64 %257, i32 %260, i32 %263)
  %265 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %266 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load i64, i64* @WM8904_ANALOGUE_OUT2_LEFT, align 8
  %269 = load i32, i32* @WM8904_LINEOUT_VU, align 4
  %270 = load i32, i32* @WM8904_LINEOUTLZC, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @WM8904_LINEOUT_VU, align 4
  %273 = load i32, i32* @WM8904_LINEOUTLZC, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @regmap_update_bits(i32 %267, i64 %268, i32 %271, i32 %274)
  %276 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %277 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load i64, i64* @WM8904_ANALOGUE_OUT2_RIGHT, align 8
  %280 = load i32, i32* @WM8904_LINEOUT_VU, align 4
  %281 = load i32, i32* @WM8904_LINEOUTRZC, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @WM8904_LINEOUT_VU, align 4
  %284 = load i32, i32* @WM8904_LINEOUTRZC, align 4
  %285 = or i32 %283, %284
  %286 = call i32 @regmap_update_bits(i32 %278, i64 %279, i32 %282, i32 %285)
  %287 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %288 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load i64, i64* @WM8904_CLOCK_RATES_0, align 8
  %291 = load i32, i32* @WM8904_SR_MODE, align 4
  %292 = call i32 @regmap_update_bits(i32 %289, i64 %290, i32 %291, i32 0)
  %293 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %294 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %293, i32 0, i32 3
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = icmp ne %struct.TYPE_12__* %295, null
  br i1 %296, label %297, label %362

297:                                              ; preds = %214
  store i32 0, i32* %9, align 4
  br label %298

298:                                              ; preds = %332, %297
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* @WM8904_GPIO_REGS, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %335

302:                                              ; preds = %298
  %303 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %304 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %303, i32 0, i32 3
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %302
  br label %332

314:                                              ; preds = %302
  %315 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %316 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load i64, i64* @WM8904_GPIO_CONTROL_1, align 8
  %319 = load i32, i32* %9, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %318, %320
  %322 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %323 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %322, i32 0, i32 3
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @regmap_update_bits(i32 %317, i64 %321, i32 65535, i32 %330)
  br label %332

332:                                              ; preds = %314, %313
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %9, align 4
  br label %298

335:                                              ; preds = %298
  store i32 0, i32* %9, align 4
  br label %336

336:                                              ; preds = %358, %335
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* @WM8904_MIC_REGS, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %361

340:                                              ; preds = %336
  %341 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %342 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i64, i64* @WM8904_MIC_BIAS_CONTROL_0, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = add nsw i64 %344, %346
  %348 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %349 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %348, i32 0, i32 3
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @regmap_update_bits(i32 %343, i64 %347, i32 65535, i32 %356)
  br label %358

358:                                              ; preds = %340
  %359 = load i32, i32* %9, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %9, align 4
  br label %336

361:                                              ; preds = %336
  br label %362

362:                                              ; preds = %361, %214
  %363 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %364 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load i64, i64* @WM8904_CLASS_W_0, align 8
  %367 = load i32, i32* @WM8904_CP_DYN_PWR, align 4
  %368 = load i32, i32* @WM8904_CP_DYN_PWR, align 4
  %369 = call i32 @regmap_update_bits(i32 %365, i64 %366, i32 %367, i32 %368)
  %370 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %371 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = load i64, i64* @WM8904_BIAS_CONTROL_0, align 8
  %374 = load i32, i32* @WM8904_POBCTRL, align 4
  %375 = call i32 @regmap_update_bits(i32 %372, i64 %373, i32 %374, i32 0)
  %376 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %377 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @regcache_cache_only(i32 %378, i32 1)
  %380 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %381 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %380, i32 0, i32 1
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %381, align 8
  %383 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %382)
  %384 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %385 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %384, i32 0, i32 1
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %385, align 8
  %387 = call i32 @regulator_bulk_disable(i32 %383, %struct.TYPE_13__* %386)
  %388 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %389 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %388, i32 0, i32 0
  %390 = call i32 @devm_snd_soc_register_component(%struct.TYPE_14__* %389, i32* @soc_component_dev_wm8904, i32* @wm8904_dai, i32 1)
  store i32 %390, i32* %8, align 4
  %391 = load i32, i32* %8, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %362
  %394 = load i32, i32* %8, align 4
  store i32 %394, i32* %3, align 4
  br label %406

395:                                              ; preds = %362
  store i32 0, i32* %3, align 4
  br label %406

396:                                              ; preds = %209, %191, %176, %168
  %397 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %398 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %397, i32 0, i32 1
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** %398, align 8
  %400 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %399)
  %401 = load %struct.wm8904_priv*, %struct.wm8904_priv** %6, align 8
  %402 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %401, i32 0, i32 1
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %402, align 8
  %404 = call i32 @regulator_bulk_disable(i32 %400, %struct.TYPE_13__* %403)
  %405 = load i32, i32* %8, align 4
  store i32 %405, i32* %3, align 4
  br label %406

406:                                              ; preds = %396, %395, %393, %154, %137, %75, %50, %31, %17
  %407 = load i32, i32* %3, align 4
  ret i32 %407
}

declare dso_local %struct.wm8904_priv* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i64) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8904_priv*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_14__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_14__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
