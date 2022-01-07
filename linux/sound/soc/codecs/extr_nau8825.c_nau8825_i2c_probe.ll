; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i64 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.nau8825 = type { i32, i32, i32, i32, i32, i32, i64, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nau8825_regmap_config = common dso_local global i32 0, align 4
@NAU8825_XTALK_DONE = common dso_local global i32 0, align 4
@nau8825_xtalk_work = common dso_local global i32 0, align 4
@NAU8825_REG_I2C_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to read device id from the NAU8825: %d\0A\00", align 1
@NAU8825_SOFTWARE_ID_MASK = common dso_local global i32 0, align 4
@NAU8825_SOFTWARE_ID_NAU8825 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Not a NAU8825 chip\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@nau8825_component_driver = common dso_local global i32 0, align 4
@nau8825_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nau8825_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nau8825*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.nau8825* @dev_get_platdata(%struct.device* %13)
  store %struct.nau8825* %14, %struct.nau8825** %7, align 8
  %15 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %16 = icmp ne %struct.nau8825* %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.nau8825* @devm_kzalloc(%struct.device* %18, i32 40, i32 %19)
  store %struct.nau8825* %20, %struct.nau8825** %7, align 8
  %21 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %22 = icmp ne %struct.nau8825* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %119

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %29 = call i32 @nau8825_read_device_properties(%struct.device* %27, %struct.nau8825* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %119

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %38 = call i32 @i2c_set_clientdata(%struct.i2c_client* %36, %struct.nau8825* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %39, i32* @nau8825_regmap_config)
  %41 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %42 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %44 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %50 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %119

53:                                               ; preds = %35
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %56 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %55, i32 0, i32 7
  store %struct.device* %54, %struct.device** %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %61 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %60, i32 0, i32 6
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @NAU8825_XTALK_DONE, align 4
  %63 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %64 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %66 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %68 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %70 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %69, i32 0, i32 4
  %71 = call i32 @sema_init(i32* %70, i32 1)
  %72 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %73 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %72, i32 0, i32 3
  %74 = load i32, i32* @nau8825_xtalk_work, align 4
  %75 = call i32 @INIT_WORK(i32* %73, i32 %74)
  %76 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %77 = call i32 @nau8825_print_device_properties(%struct.nau8825* %76)
  %78 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %79 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @nau8825_reset_chip(i32 %80)
  %82 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %83 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NAU8825_REG_I2C_DEVICE_ID, align 4
  %86 = call i32 @regmap_read(i32 %84, i32 %85, i32* %9)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %53
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %119

94:                                               ; preds = %53
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @NAU8825_SOFTWARE_ID_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @NAU8825_SOFTWARE_ID_NAU8825, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %119

105:                                              ; preds = %94
  %106 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %107 = call i32 @nau8825_init_regs(%struct.nau8825* %106)
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.nau8825*, %struct.nau8825** %7, align 8
  %114 = call i32 @nau8825_setup_irq(%struct.nau8825* %113)
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = call i32 @devm_snd_soc_register_component(%struct.device* %117, i32* @nau8825_component_driver, i32* @nau8825_dai, i32 1)
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %100, %89, %48, %32, %23
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.nau8825* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.nau8825* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @nau8825_read_device_properties(%struct.device*, %struct.nau8825*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.nau8825*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @nau8825_print_device_properties(%struct.nau8825*) #1

declare dso_local i32 @nau8825_reset_chip(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @nau8825_init_regs(%struct.nau8825*) #1

declare dso_local i32 @nau8825_setup_irq(%struct.nau8825*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
