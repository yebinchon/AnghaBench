; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.nau8824 = type { i32, i32, i64, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nau8824_regmap_config = common dso_local global i32 0, align 4
@NAU8824_REG_I2C_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to read device id from the NAU8824: %d\0A\00", align 1
@nau8824_component_driver = common dso_local global i32 0, align 4
@nau8824_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nau8824_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nau8824*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.nau8824* @dev_get_platdata(%struct.device* %12)
  store %struct.nau8824* %13, %struct.nau8824** %7, align 8
  %14 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %15 = icmp ne %struct.nau8824* %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nau8824* @devm_kzalloc(%struct.device* %17, i32 24, i32 %18)
  store %struct.nau8824* %19, %struct.nau8824** %7, align 8
  %20 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %21 = icmp ne %struct.nau8824* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %95

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %28 = call i32 @nau8824_read_device_properties(%struct.device* %26, %struct.nau8824* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %95

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %37 = call i32 @i2c_set_clientdata(%struct.i2c_client* %35, %struct.nau8824* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %38, i32* @nau8824_regmap_config)
  %40 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %41 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %43 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %49 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %95

52:                                               ; preds = %34
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %55 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %54, i32 0, i32 3
  store %struct.device* %53, %struct.device** %55, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %60 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %62 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %61, i32 0, i32 1
  %63 = call i32 @sema_init(i32* %62, i32 1)
  %64 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %65 = call i32 @nau8824_print_device_properties(%struct.nau8824* %64)
  %66 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %67 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @NAU8824_REG_I2C_DEVICE_ID, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %9)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %52
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %95

78:                                               ; preds = %52
  %79 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %80 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @nau8824_reset_chip(i32 %81)
  %83 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %84 = call i32 @nau8824_init_regs(%struct.nau8824* %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load %struct.nau8824*, %struct.nau8824** %7, align 8
  %91 = call i32 @nau8824_setup_irq(%struct.nau8824* %90)
  br label %92

92:                                               ; preds = %89, %78
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = call i32 @devm_snd_soc_register_component(%struct.device* %93, i32* @nau8824_component_driver, i32* @nau8824_dai, i32 1)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %73, %47, %31, %22
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.nau8824* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.nau8824* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @nau8824_read_device_properties(%struct.device*, %struct.nau8824*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.nau8824*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @nau8824_print_device_properties(%struct.nau8824*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @nau8824_reset_chip(i32) #1

declare dso_local i32 @nau8824_init_regs(%struct.nau8824*) #1

declare dso_local i32 @nau8824_setup_irq(%struct.nau8824*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
