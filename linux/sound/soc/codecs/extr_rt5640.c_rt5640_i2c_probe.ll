; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rt5640_priv = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rt5640_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"RT5640 LDO1_EN\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to request LDO1_EN %d: %d\0A\00", align 1
@RT5640_VENDOR_ID2 = common dso_local global i32 0, align 4
@RT5640_DEVICE_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Device with ID register %#x is not rt5640/39\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5640_RESET = common dso_local global i32 0, align 4
@init_list = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@RT5640_DUMMY1 = common dso_local global i32 0, align 4
@RT5640_MCLK_DET = common dso_local global i32 0, align 4
@rt5640_button_press_work = common dso_local global i32 0, align 4
@rt5640_jack_work = common dso_local global i32 0, align 4
@rt5640_cancel_work = common dso_local global i32 0, align 4
@rt5640_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"rt5640\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to reguest IRQ %d: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@soc_component_dev_rt5640 = common dso_local global i32 0, align 4
@rt5640_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5640_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5640_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rt5640_priv* @devm_kzalloc(%struct.TYPE_8__* %10, i32 24, i32 %11)
  store %struct.rt5640_priv* %12, %struct.rt5640_priv** %6, align 8
  %13 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %14 = icmp eq %struct.rt5640_priv* null, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %199

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.rt5640_priv* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rt5640_parse_dt(%struct.rt5640_priv* %28, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %199

38:                                               ; preds = %27
  br label %44

39:                                               ; preds = %18
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %43 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %38
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %45, i32* @rt5640_regmap)
  %47 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %48 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %50 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %56 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @dev_err(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %199

64:                                               ; preds = %44
  %65 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %66 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @gpio_is_valid(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %74 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %77 = call i32 @devm_gpio_request_one(%struct.TYPE_8__* %72, i32 %75, i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %70
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %84 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @dev_err(%struct.TYPE_8__* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %199

89:                                               ; preds = %70
  %90 = call i32 @msleep(i32 400)
  br label %91

91:                                               ; preds = %89, %64
  %92 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %93 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RT5640_VENDOR_ID2, align 4
  %96 = call i32 @regmap_read(i32 %94, i32 %95, i32* %8)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @RT5640_DEVICE_ID, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @dev_err(%struct.TYPE_8__* %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %199

107:                                              ; preds = %91
  %108 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %109 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RT5640_RESET, align 4
  %112 = call i32 @regmap_write(i32 %110, i32 %111, i32 0)
  %113 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %114 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @init_list, align 4
  %117 = load i32, i32* @init_list, align 4
  %118 = call i32 @ARRAY_SIZE(i32 %117)
  %119 = call i32 @regmap_register_patch(i32 %115, i32 %116, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %107
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @dev_warn(%struct.TYPE_8__* %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %122, %107
  %128 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %129 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RT5640_DUMMY1, align 4
  %132 = load i32, i32* @RT5640_MCLK_DET, align 4
  %133 = load i32, i32* @RT5640_MCLK_DET, align 4
  %134 = call i32 @regmap_update_bits(i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %136 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %135, i32 0, i32 0
  store i32 1, i32* %136, align 4
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %141 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %143 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %142, i32 0, i32 3
  %144 = load i32, i32* @rt5640_button_press_work, align 4
  %145 = call i32 @INIT_DELAYED_WORK(i32* %143, i32 %144)
  %146 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %147 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %146, i32 0, i32 2
  %148 = load i32, i32* @rt5640_jack_work, align 4
  %149 = call i32 @INIT_WORK(i32* %147, i32 %148)
  %150 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %151 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %150, i32 0, i32 0
  %152 = load i32, i32* @rt5640_cancel_work, align 4
  %153 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %154 = call i32 @devm_add_action_or_reset(%struct.TYPE_8__* %151, i32 %152, %struct.rt5640_priv* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %127
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %199

159:                                              ; preds = %127
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %163 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @rt5640_irq, align 4
  %166 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %167 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @IRQF_ONESHOT, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %172 = call i32 @devm_request_irq(%struct.TYPE_8__* %161, i32 %164, i32 %165, i32 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.rt5640_priv* %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %159
  %176 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %177 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @disable_irq(i32 %178)
  br label %192

180:                                              ; preds = %159
  %181 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %182 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %181, i32 0, i32 0
  %183 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %184 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @dev_warn(%struct.TYPE_8__* %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %185, i32 %186)
  %188 = load i32, i32* @ENXIO, align 4
  %189 = sub nsw i32 0, %188
  %190 = load %struct.rt5640_priv*, %struct.rt5640_priv** %6, align 8
  %191 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %180, %175
  %193 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %194 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %193, i32 0, i32 0
  %195 = load i32, i32* @rt5640_dai, align 4
  %196 = load i32, i32* @rt5640_dai, align 4
  %197 = call i32 @ARRAY_SIZE(i32 %196)
  %198 = call i32 @devm_snd_soc_register_component(%struct.TYPE_8__* %194, i32* @soc_component_dev_rt5640, i32 %195, i32 %197)
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %192, %157, %100, %80, %54, %36, %15
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.rt5640_priv* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5640_priv*) #1

declare dso_local i32 @rt5640_parse_dt(%struct.rt5640_priv*, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32, ...) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_8__*, i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i32, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_8__*, i32, %struct.rt5640_priv*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_8__*, i32, i32, i32, i8*, %struct.rt5640_priv*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
