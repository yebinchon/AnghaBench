; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98090.c_max98090_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max98090_priv = type { i32, i32, i32, i32 }
%struct.acpi_device_id = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"max98090_i2c_probe\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"No driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"maxim,dmic-freq\00", align 1
@MAX98090_DEFAULT_DMIC_FREQ = common dso_local global i32 0, align 4
@max98090_regmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@max98090_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"max98090_interrupt\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1
@soc_component_dev_max98090 = common dso_local global i32 0, align 4
@max98090_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max98090_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98090_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max98090_priv*, align 8
  %7 = alloca %struct.acpi_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.max98090_priv* @devm_kzalloc(%struct.TYPE_9__* %12, i32 16, i32 %13)
  store %struct.max98090_priv* %14, %struct.max98090_priv** %6, align 8
  %15 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %16 = icmp eq %struct.max98090_priv* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %129

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i64 @ACPI_HANDLE(%struct.TYPE_9__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call %struct.acpi_device_id* @acpi_match_device(i32 %31, %struct.TYPE_9__* %33)
  store %struct.acpi_device_id* %34, %struct.acpi_device_id** %7, align 8
  %35 = load %struct.acpi_device_id*, %struct.acpi_device_id** %7, align 8
  %36 = icmp ne %struct.acpi_device_id* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %25
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %129

43:                                               ; preds = %25
  %44 = load %struct.acpi_device_id*, %struct.acpi_device_id** %7, align 8
  %45 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %55

47:                                               ; preds = %20
  %48 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %49 = icmp ne %struct.i2c_device_id* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %58 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %61 = call i32 @i2c_set_clientdata(%struct.i2c_client* %59, %struct.max98090_priv* %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %67 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %73 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %72, i32 0, i32 1
  %74 = call i32 @of_property_read_u32(i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %55
  %78 = load i32, i32* @MAX98090_DEFAULT_DMIC_FREQ, align 4
  %79 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %80 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %55
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %82, i32* @max98090_regmap)
  %84 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %85 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %87 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %81
  %92 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %93 = getelementptr inbounds %struct.max98090_priv, %struct.max98090_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %127

100:                                              ; preds = %81
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @max98090_interrupt, align 4
  %107 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %108 = load i32, i32* @IRQF_ONESHOT, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.max98090_priv*, %struct.max98090_priv** %6, align 8
  %111 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %102, i32 %105, i32* null, i32 %106, i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), %struct.max98090_priv* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %100
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %129

120:                                              ; preds = %100
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = load i32, i32* @max98090_dai, align 4
  %124 = load i32, i32* @max98090_dai, align 4
  %125 = call i32 @ARRAY_SIZE(i32 %124)
  %126 = call i32 @devm_snd_soc_register_component(%struct.TYPE_9__* %122, i32* @soc_component_dev_max98090, i32 %123, i32 %125)
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %120, %91
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %114, %37, %17
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.max98090_priv* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @ACPI_HANDLE(%struct.TYPE_9__*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max98090_priv*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32, i32, i8*, %struct.max98090_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
