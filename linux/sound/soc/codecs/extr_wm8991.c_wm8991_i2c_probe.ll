; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8991.c_wm8991_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8991.c_wm8991_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8991_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8991_regmap = common dso_local global i32 0, align 4
@WM8991_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read device ID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Device with ID %x is not a WM8991\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@WM8991_AUDIO_INTERFACE_4 = common dso_local global i32 0, align 4
@WM8991_ALRCGPIO1 = common dso_local global i32 0, align 4
@WM8991_GPIO1_GPIO2 = common dso_local global i32 0, align 4
@WM8991_GPIO1_SEL_MASK = common dso_local global i32 0, align 4
@WM8991_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8991_VREF_ENA = common dso_local global i32 0, align 4
@WM8991_VMID_MODE_MASK = common dso_local global i32 0, align 4
@WM8991_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8991_OPCLK_ENA = common dso_local global i32 0, align 4
@WM8991_DAC_CTRL = common dso_local global i32 0, align 4
@WM8991_LEFT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8991_RIGHT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@soc_component_dev_wm8991 = common dso_local global i32 0, align 4
@wm8991_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8991_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8991_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8991_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wm8991_priv* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  store %struct.wm8991_priv* %12, %struct.wm8991_priv** %6, align 8
  %13 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %14 = icmp ne %struct.wm8991_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %125

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @wm8991_regmap)
  %21 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %24 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %30 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %125

33:                                               ; preds = %18
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.wm8991_priv* %35)
  %37 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %38 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WM8991_RESET, align 4
  %41 = call i32 @regmap_read(i32 %39, i32 %40, i32* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %125

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 35217
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %125

60:                                               ; preds = %50
  %61 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WM8991_RESET, align 4
  %65 = call i32 @regmap_write(i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %125

74:                                               ; preds = %60
  %75 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %76 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WM8991_AUDIO_INTERFACE_4, align 4
  %79 = load i32, i32* @WM8991_ALRCGPIO1, align 4
  %80 = load i32, i32* @WM8991_ALRCGPIO1, align 4
  %81 = call i32 @regmap_update_bits(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %83 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WM8991_GPIO1_GPIO2, align 4
  %86 = load i32, i32* @WM8991_GPIO1_SEL_MASK, align 4
  %87 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %86, i32 1)
  %88 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %89 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @WM8991_POWER_MANAGEMENT_1, align 4
  %92 = load i32, i32* @WM8991_VREF_ENA, align 4
  %93 = load i32, i32* @WM8991_VMID_MODE_MASK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @WM8991_VREF_ENA, align 4
  %96 = load i32, i32* @WM8991_VMID_MODE_MASK, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %94, i32 %97)
  %99 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %100 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @WM8991_POWER_MANAGEMENT_2, align 4
  %103 = load i32, i32* @WM8991_OPCLK_ENA, align 4
  %104 = load i32, i32* @WM8991_OPCLK_ENA, align 4
  %105 = call i32 @regmap_update_bits(i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %107 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @WM8991_DAC_CTRL, align 4
  %110 = call i32 @regmap_write(i32 %108, i32 %109, i32 0)
  %111 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %112 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @WM8991_LEFT_OUTPUT_VOLUME, align 4
  %115 = call i32 @regmap_write(i32 %113, i32 %114, i32 336)
  %116 = load %struct.wm8991_priv*, %struct.wm8991_priv** %6, align 8
  %117 = getelementptr inbounds %struct.wm8991_priv, %struct.wm8991_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @WM8991_RIGHT_OUTPUT_VOLUME, align 4
  %120 = call i32 @regmap_write(i32 %118, i32 %119, i32 336)
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = call i32 @devm_snd_soc_register_component(i32* %122, i32* @soc_component_dev_wm8991, i32* @wm8991_dai, i32 1)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %74, %68, %53, %44, %28, %15
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.wm8991_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8991_priv*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
