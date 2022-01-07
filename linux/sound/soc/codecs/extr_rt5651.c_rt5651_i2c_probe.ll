; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.rt5651_priv = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt5651_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RT5651_DEVICE_ID = common dso_local global i32 0, align 4
@RT5651_DEVICE_ID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Device with ID register %#x is not rt5651\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5651_RESET = common dso_local global i32 0, align 4
@init_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@rt5651_button_press_work = common dso_local global i32 0, align 4
@rt5651_jack_detect_work = common dso_local global i32 0, align 4
@rt5651_cancel_work = common dso_local global i32 0, align 4
@rt5651_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"rt5651\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to reguest IRQ %d: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@soc_component_dev_rt5651 = common dso_local global i32 0, align 4
@rt5651_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5651_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5651_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5651_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rt5651_priv* @devm_kzalloc(i32* %10, i32 20, i32 %11)
  store %struct.rt5651_priv* %12, %struct.rt5651_priv** %6, align 8
  %13 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %14 = icmp eq %struct.rt5651_priv* null, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %148

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.rt5651_priv* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @rt5651_regmap)
  %24 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %25 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %27 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %33 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %148

41:                                               ; preds = %18
  %42 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %43 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RT5651_DEVICE_ID, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %7)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %148

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @RT5651_DEVICE_ID_VALUE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %148

62:                                               ; preds = %51
  %63 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %64 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RT5651_RESET, align 4
  %67 = call i32 @regmap_write(i32 %65, i32 %66, i32 0)
  %68 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %69 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @init_list, align 4
  %72 = load i32, i32* @init_list, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = call i32 @regmap_register_patch(i32 %70, i32 %71, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %62
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %87 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %89 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %91 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %90, i32 0, i32 3
  %92 = load i32, i32* @rt5651_button_press_work, align 4
  %93 = call i32 @INIT_DELAYED_WORK(i32* %91, i32 %92)
  %94 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %95 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %94, i32 0, i32 2
  %96 = load i32, i32* @rt5651_jack_detect_work, align 4
  %97 = call i32 @INIT_WORK(i32* %95, i32 %96)
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* @rt5651_cancel_work, align 4
  %101 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %102 = call i32 @devm_add_action_or_reset(i32* %99, i32 %100, %struct.rt5651_priv* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %82
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %148

107:                                              ; preds = %82
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %111 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @rt5651_irq, align 4
  %114 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %115 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @IRQF_ONESHOT, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %120 = call i32 @devm_request_irq(i32* %109, i32 %112, i32 %113, i32 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.rt5651_priv* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %107
  %124 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %125 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @disable_irq(i32 %126)
  br label %140

128:                                              ; preds = %107
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %132 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* @ENXIO, align 4
  %137 = sub nsw i32 0, %136
  %138 = load %struct.rt5651_priv*, %struct.rt5651_priv** %6, align 8
  %139 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %128, %123
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load i32, i32* @rt5651_dai, align 4
  %144 = load i32, i32* @rt5651_dai, align 4
  %145 = call i32 @ARRAY_SIZE(i32 %144)
  %146 = call i32 @devm_snd_soc_register_component(i32* %142, i32* @soc_component_dev_rt5651, i32 %143, i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %140, %105, %55, %49, %31, %15
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.rt5651_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5651_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.rt5651_priv*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.rt5651_priv*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
