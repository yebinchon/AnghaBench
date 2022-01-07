; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8822.c_nau8822_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.nau8822 = type { i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nau8822_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@NAU8822_REG_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@soc_component_dev_nau8822 = common dso_local global i32 0, align 4
@nau8822_dai = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register CODEC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nau8822_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8822_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nau8822*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.nau8822* @dev_get_platdata(%struct.device* %11)
  store %struct.nau8822* %12, %struct.nau8822** %7, align 8
  %13 = load %struct.nau8822*, %struct.nau8822** %7, align 8
  %14 = icmp ne %struct.nau8822* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nau8822* @devm_kzalloc(%struct.device* %16, i32 16, i32 %17)
  store %struct.nau8822* %18, %struct.nau8822** %7, align 8
  %19 = load %struct.nau8822*, %struct.nau8822** %7, align 8
  %20 = icmp eq %struct.nau8822* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.nau8822*, %struct.nau8822** %7, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.nau8822* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %29, i32* @nau8822_regmap_config)
  %31 = load %struct.nau8822*, %struct.nau8822** %7, align 8
  %32 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nau8822*, %struct.nau8822** %7, align 8
  %34 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load %struct.nau8822*, %struct.nau8822** %7, align 8
  %40 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %77

48:                                               ; preds = %25
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load %struct.nau8822*, %struct.nau8822** %7, align 8
  %51 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %50, i32 0, i32 1
  store %struct.device* %49, %struct.device** %51, align 8
  %52 = load %struct.nau8822*, %struct.nau8822** %7, align 8
  %53 = getelementptr inbounds %struct.nau8822, %struct.nau8822* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NAU8822_REG_RESET, align 4
  %56 = call i32 @regmap_write(i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %48
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 @devm_snd_soc_register_component(%struct.device* %66, i32* @soc_component_dev_nau8822, i32* @nau8822_dai, i32 1)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %70, %59, %38, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.nau8822* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.nau8822* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.nau8822*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
