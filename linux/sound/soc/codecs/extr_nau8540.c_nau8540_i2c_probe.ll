; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.nau8540 = type { i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nau8540_regmap_config = common dso_local global i32 0, align 4
@NAU8540_REG_I2C_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to read device id from the NAU85L40: %d\0A\00", align 1
@nau8540_component_driver = common dso_local global i32 0, align 4
@nau8540_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nau8540_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8540_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nau8540*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.nau8540* @dev_get_platdata(%struct.device* %12)
  store %struct.nau8540* %13, %struct.nau8540** %7, align 8
  %14 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %15 = icmp ne %struct.nau8540* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nau8540* @devm_kzalloc(%struct.device* %17, i32 16, i32 %18)
  store %struct.nau8540* %19, %struct.nau8540** %7, align 8
  %20 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %21 = icmp ne %struct.nau8540* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %29 = call i32 @i2c_set_clientdata(%struct.i2c_client* %27, %struct.nau8540* %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %30, i32* @nau8540_regmap_config)
  %32 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %33 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %35 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %41 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %26
  %45 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %46 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NAU8540_REG_I2C_DEVICE_ID, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %9)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %44
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %60 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %59, i32 0, i32 1
  store %struct.device* %58, %struct.device** %60, align 8
  %61 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %62 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @nau8540_reset_chip(i32 %63)
  %65 = load %struct.nau8540*, %struct.nau8540** %7, align 8
  %66 = call i32 @nau8540_init_regs(%struct.nau8540* %65)
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @devm_snd_soc_register_component(%struct.device* %67, i32* @nau8540_component_driver, i32* @nau8540_dai, i32 1)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %52, %39, %22
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.nau8540* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.nau8540* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.nau8540*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @nau8540_reset_chip(i32) #1

declare dso_local i32 @nau8540_init_regs(%struct.nau8540*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
