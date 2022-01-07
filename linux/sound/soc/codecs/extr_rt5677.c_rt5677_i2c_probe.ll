; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.rt5677_priv = type { i32, i8*, %struct.TYPE_12__, i8*, i8*, i8*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.of_device_id = type { i64 }
%struct.acpi_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt5677_of_match = common dso_local global i32 0, align 4
@rt5677_acpi_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"realtek,pow-ldo2\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request POW_LDO2: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"realtek,reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to request RESET: %d\0A\00", align 1
@rt5677_regmap_physical = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@rt5677_regmap = common dso_local global i32 0, align 4
@RT5677_VENDOR_ID2 = common dso_local global i32 0, align 4
@RT5677_DEVICE_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Device with ID register %#x is not rt5677\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5677_RESET = common dso_local global i32 0, align 4
@init_list = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@RT5677_IN1 = common dso_local global i32 0, align 4
@RT5677_IN_DF1 = common dso_local global i32 0, align 4
@RT5677_IN_DF2 = common dso_local global i32 0, align 4
@RT5677_LOUT1 = common dso_local global i32 0, align 4
@RT5677_LOUT1_L_DF = common dso_local global i32 0, align 4
@RT5677_LOUT2_L_DF = common dso_local global i32 0, align 4
@RT5677_LOUT3_L_DF = common dso_local global i32 0, align 4
@RT5677_DMIC_CLK2 = common dso_local global i64 0, align 8
@RT5677_GEN_CTRL2 = common dso_local global i32 0, align 4
@RT5677_GPIO5_FUNC_MASK = common dso_local global i32 0, align 4
@RT5677_GPIO5_FUNC_DMIC = common dso_local global i32 0, align 4
@RT5677_GPIO_CTRL2 = common dso_local global i32 0, align 4
@RT5677_GPIO5_DIR_MASK = common dso_local global i32 0, align 4
@RT5677_GPIO5_DIR_OUT = common dso_local global i32 0, align 4
@RT5677_MICBIAS = common dso_local global i32 0, align 4
@RT5677_MICBIAS1_CTRL_VDD_MASK = common dso_local global i32 0, align 4
@RT5677_MICBIAS1_CTRL_VDD_3_3V = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to initialize irq: %d\0A\00", align 1
@soc_component_dev_rt5677 = common dso_local global i32 0, align 4
@rt5677_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rt5677_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.rt5677_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.acpi_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rt5677_priv* @devm_kzalloc(%struct.TYPE_13__* %10, i32 104, i32 %11)
  store %struct.rt5677_priv* %12, %struct.rt5677_priv** %4, align 8
  %13 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %14 = icmp eq %struct.rt5677_priv* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %333

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %22 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %21, i32 0, i32 6
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %22, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.rt5677_priv* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %18
  %32 = load i32, i32* @rt5677_of_match, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call %struct.of_device_id* @of_match_device(i32 %32, %struct.TYPE_13__* %34)
  store %struct.of_device_id* %35, %struct.of_device_id** %7, align 8
  %36 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %37 = icmp ne %struct.of_device_id* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %40 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %44 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %38, %31
  br label %70

46:                                               ; preds = %18
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i64 @ACPI_HANDLE(%struct.TYPE_13__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i32, i32* @rt5677_acpi_match, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call %struct.acpi_device_id* @acpi_match_device(i32 %52, %struct.TYPE_13__* %54)
  store %struct.acpi_device_id* %55, %struct.acpi_device_id** %8, align 8
  %56 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %57 = icmp ne %struct.acpi_device_id* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %60 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %64 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %51
  br label %69

66:                                               ; preds = %46
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %333

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %45
  %71 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %72 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = call i32 @rt5677_read_device_properties(%struct.rt5677_priv* %71, %struct.TYPE_13__* %73)
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %78 = call i8* @devm_gpiod_get_optional(%struct.TYPE_13__* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %80 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %82 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @IS_ERR(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %70
  %87 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %88 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  store i32 %90, i32* %5, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @dev_err(%struct.TYPE_13__* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %333

96:                                               ; preds = %70
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %100 = call i8* @devm_gpiod_get_optional(%struct.TYPE_13__* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %102 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %104 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %96
  %109 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %110 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @PTR_ERR(i8* %111)
  store i32 %112, i32* %5, align 4
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @dev_err(%struct.TYPE_13__* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %333

118:                                              ; preds = %96
  %119 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %120 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %119, i32 0, i32 5
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %125 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123, %118
  %129 = call i32 @msleep(i32 10)
  br label %130

130:                                              ; preds = %128, %123
  %131 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %132 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %131, i32* @rt5677_regmap_physical)
  %133 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %134 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %136 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %135, i32 0, i32 3
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @IS_ERR(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %130
  %141 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %142 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @PTR_ERR(i8* %143)
  store i32 %144, i32* %5, align 4
  %145 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @dev_err(%struct.TYPE_13__* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %333

150:                                              ; preds = %130
  %151 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %154 = call i8* @devm_regmap_init(%struct.TYPE_13__* %152, i32* null, %struct.i2c_client* %153, i32* @rt5677_regmap)
  %155 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %156 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %158 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @IS_ERR(i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %150
  %163 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %164 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @PTR_ERR(i8* %165)
  store i32 %166, i32* %5, align 4
  %167 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 0
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @dev_err(%struct.TYPE_13__* %168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %2, align 4
  br label %333

172:                                              ; preds = %150
  %173 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %174 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* @RT5677_VENDOR_ID2, align 4
  %177 = call i32 @regmap_read(i8* %175, i32 %176, i32* %6)
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @RT5677_DEVICE_ID, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %172
  %182 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @dev_err(%struct.TYPE_13__* %183, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @ENODEV, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %2, align 4
  br label %333

188:                                              ; preds = %172
  %189 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %190 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* @RT5677_RESET, align 4
  %193 = call i32 @regmap_write(i8* %191, i32 %192, i32 4332)
  %194 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %195 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* @init_list, align 4
  %198 = load i32, i32* @init_list, align 4
  %199 = call i32 @ARRAY_SIZE(i32 %198)
  %200 = call i32 @regmap_register_patch(i8* %196, i32 %197, i32 %199)
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %188
  %204 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %205 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %204, i32 0, i32 0
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @dev_warn(%struct.TYPE_13__* %205, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %203, %188
  %209 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %210 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %216 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* @RT5677_IN1, align 4
  %219 = load i32, i32* @RT5677_IN_DF1, align 4
  %220 = load i32, i32* @RT5677_IN_DF1, align 4
  %221 = call i32 @regmap_update_bits(i8* %217, i32 %218, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %214, %208
  %223 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %224 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %222
  %229 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %230 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* @RT5677_IN1, align 4
  %233 = load i32, i32* @RT5677_IN_DF2, align 4
  %234 = load i32, i32* @RT5677_IN_DF2, align 4
  %235 = call i32 @regmap_update_bits(i8* %231, i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %228, %222
  %237 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %238 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %236
  %243 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %244 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i32, i32* @RT5677_LOUT1, align 4
  %247 = load i32, i32* @RT5677_LOUT1_L_DF, align 4
  %248 = load i32, i32* @RT5677_LOUT1_L_DF, align 4
  %249 = call i32 @regmap_update_bits(i8* %245, i32 %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %242, %236
  %251 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %252 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %250
  %257 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %258 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = load i32, i32* @RT5677_LOUT1, align 4
  %261 = load i32, i32* @RT5677_LOUT2_L_DF, align 4
  %262 = load i32, i32* @RT5677_LOUT2_L_DF, align 4
  %263 = call i32 @regmap_update_bits(i8* %259, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %256, %250
  %265 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %266 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %264
  %271 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %272 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* @RT5677_LOUT1, align 4
  %275 = load i32, i32* @RT5677_LOUT3_L_DF, align 4
  %276 = load i32, i32* @RT5677_LOUT3_L_DF, align 4
  %277 = call i32 @regmap_update_bits(i8* %273, i32 %274, i32 %275, i32 %276)
  br label %278

278:                                              ; preds = %270, %264
  %279 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %280 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @RT5677_DMIC_CLK2, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %300

285:                                              ; preds = %278
  %286 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %287 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = load i32, i32* @RT5677_GEN_CTRL2, align 4
  %290 = load i32, i32* @RT5677_GPIO5_FUNC_MASK, align 4
  %291 = load i32, i32* @RT5677_GPIO5_FUNC_DMIC, align 4
  %292 = call i32 @regmap_update_bits(i8* %288, i32 %289, i32 %290, i32 %291)
  %293 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %294 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = load i32, i32* @RT5677_GPIO_CTRL2, align 4
  %297 = load i32, i32* @RT5677_GPIO5_DIR_MASK, align 4
  %298 = load i32, i32* @RT5677_GPIO5_DIR_OUT, align 4
  %299 = call i32 @regmap_update_bits(i8* %295, i32 %296, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %285, %278
  %301 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %302 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %300
  %307 = load %struct.rt5677_priv*, %struct.rt5677_priv** %4, align 8
  %308 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = load i32, i32* @RT5677_MICBIAS, align 4
  %311 = load i32, i32* @RT5677_MICBIAS1_CTRL_VDD_MASK, align 4
  %312 = load i32, i32* @RT5677_MICBIAS1_CTRL_VDD_3_3V, align 4
  %313 = call i32 @regmap_update_bits(i8* %309, i32 %310, i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %306, %300
  %315 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %316 = call i32 @rt5677_init_gpio(%struct.i2c_client* %315)
  %317 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %318 = call i32 @rt5677_init_irq(%struct.i2c_client* %317)
  store i32 %318, i32* %5, align 4
  %319 = load i32, i32* %5, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %314
  %322 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %323 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %322, i32 0, i32 0
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @dev_err(%struct.TYPE_13__* %323, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %321, %314
  %327 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %328 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %327, i32 0, i32 0
  %329 = load i32, i32* @rt5677_dai, align 4
  %330 = load i32, i32* @rt5677_dai, align 4
  %331 = call i32 @ARRAY_SIZE(i32 %330)
  %332 = call i32 @devm_snd_soc_register_component(%struct.TYPE_13__* %328, i32* @soc_component_dev_rt5677, i32 %329, i32 %331)
  store i32 %332, i32* %2, align 4
  br label %333

333:                                              ; preds = %326, %181, %162, %140, %108, %86, %66, %15
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local %struct.rt5677_priv* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5677_priv*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @ACPI_HANDLE(%struct.TYPE_13__*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @rt5677_read_device_properties(%struct.rt5677_priv*, %struct.TYPE_13__*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i8* @devm_regmap_init(%struct.TYPE_13__*, i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @regmap_read(i8*, i32, i32*) #1

declare dso_local i32 @regmap_write(i8*, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @rt5677_init_gpio(%struct.i2c_client*) #1

declare dso_local i32 @rt5677_init_irq(%struct.i2c_client*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_13__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
