; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.nau8810 = type { i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nau8810_regmap_config = common dso_local global i32 0, align 4
@NAU8810_REG_RESET = common dso_local global i32 0, align 4
@nau8810_component_driver = common dso_local global i32 0, align 4
@nau8810_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nau8810_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nau8810*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = call %struct.nau8810* @dev_get_platdata(%struct.device* %10)
  store %struct.nau8810* %11, %struct.nau8810** %7, align 8
  %12 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %13 = icmp ne %struct.nau8810* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.nau8810* @devm_kzalloc(%struct.device* %15, i32 16, i32 %16)
  store %struct.nau8810* %17, %struct.nau8810** %7, align 8
  %18 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %19 = icmp ne %struct.nau8810* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, %struct.nau8810* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %28, i32* @nau8810_regmap_config)
  %30 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %31 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %33 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %39 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %24
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %45 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %44, i32 0, i32 1
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %47 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NAU8810_REG_RESET, align 4
  %50 = call i32 @regmap_write(i32 %48, i32 %49, i32 0)
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @devm_snd_soc_register_component(%struct.device* %51, i32* @nau8810_component_driver, i32* @nau8810_dai, i32 1)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %42, %37, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.nau8810* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.nau8810* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.nau8810*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
