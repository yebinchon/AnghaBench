; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4104.c_ak4104_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4104.c_ak4104_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.ak4104_private = type { %struct.gpio_desc*, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to get Vdd regulator: %d\0A\00", align 1
@ak4104_regmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@AK4104_REG_RESERVED = common dso_local global i32 0, align 4
@AK4104_RESERVED_VAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@soc_component_device_ak4104 = common dso_local global i32 0, align 4
@ak4104_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ak4104_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4104_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ak4104_private*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  store i32 8, i32* %9, align 4
  %10 = load i32, i32* @SPI_MODE_0, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = call i32 @spi_setup(%struct.spi_device* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %108

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ak4104_private* @devm_kzalloc(i32* %21, i32 16, i32 %22)
  store %struct.ak4104_private* %23, %struct.ak4104_private** %4, align 8
  %24 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %25 = icmp eq %struct.ak4104_private* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %108

29:                                               ; preds = %19
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 1
  %32 = call %struct.gpio_desc* @devm_regulator_get(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %34 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %33, i32 0, i32 1
  store %struct.gpio_desc* %32, %struct.gpio_desc** %34, align 8
  %35 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %36 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %35, i32 0, i32 1
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %36, align 8
  %38 = call i64 @IS_ERR(%struct.gpio_desc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %42 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %41, i32 0, i32 1
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %42, align 8
  %44 = call i32 @PTR_ERR(%struct.gpio_desc* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 1
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %108

50:                                               ; preds = %29
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = call %struct.gpio_desc* @devm_regmap_init_spi(%struct.spi_device* %51, i32* @ak4104_regmap)
  %53 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %54 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %53, i32 0, i32 0
  store %struct.gpio_desc* %52, %struct.gpio_desc** %54, align 8
  %55 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %56 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %55, i32 0, i32 0
  %57 = load %struct.gpio_desc*, %struct.gpio_desc** %56, align 8
  %58 = call i64 @IS_ERR(%struct.gpio_desc* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %62 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %61, i32 0, i32 0
  %63 = load %struct.gpio_desc*, %struct.gpio_desc** %62, align 8
  %64 = call i32 @PTR_ERR(%struct.gpio_desc* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %108

66:                                               ; preds = %50
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 1
  %69 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %70 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store %struct.gpio_desc* %70, %struct.gpio_desc** %5, align 8
  %71 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %72 = call i64 @IS_ERR(%struct.gpio_desc* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %76 = call i32 @PTR_ERR(%struct.gpio_desc* %75)
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EPROBE_DEFER, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %108

83:                                               ; preds = %74, %66
  %84 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %85 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %84, i32 0, i32 0
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %85, align 8
  %87 = load i32, i32* @AK4104_REG_RESERVED, align 4
  %88 = call i32 @regmap_read(%struct.gpio_desc* %86, i32 %87, i32* %6)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %108

93:                                               ; preds = %83
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @AK4104_RESERVED_VAL, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %108

100:                                              ; preds = %93
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %103 = call i32 @spi_set_drvdata(%struct.spi_device* %101, %struct.ak4104_private* %102)
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 1
  %106 = call i32 @devm_snd_soc_register_component(i32* %105, i32* @soc_component_device_ak4104, i32* @ak4104_dai, i32 1)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %100, %97, %91, %80, %60, %40, %26, %17
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.ak4104_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.gpio_desc* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.gpio_desc* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(%struct.gpio_desc*, i32, i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ak4104_private*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
