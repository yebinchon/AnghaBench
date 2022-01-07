; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.es8316_priv = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@es8316_regmap = common dso_local global i32 0, align 4
@es8316_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"es8316\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get IRQ %d: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@soc_component_dev_es8316 = common dso_local global i32 0, align 4
@es8316_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @es8316_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8316_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.es8316_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.es8316_priv* @devm_kzalloc(%struct.device* %12, i32 12, i32 %13)
  store %struct.es8316_priv* %14, %struct.es8316_priv** %7, align 8
  %15 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %16 = icmp eq %struct.es8316_priv* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.es8316_priv* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %24, i32* @es8316_regmap)
  %26 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %27 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %29 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %35 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %79

38:                                               ; preds = %20
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %43 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %45 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %44, i32 0, i32 1
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %49 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @es8316_irq, align 4
  %52 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %53 = load i32, i32* @IRQF_ONESHOT, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %56 = call i32 @devm_request_threaded_irq(%struct.device* %47, i32 %50, i32* null, i32 %51, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.es8316_priv* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %38
  %60 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %61 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @disable_irq(i32 %62)
  br label %75

64:                                               ; preds = %38
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %67 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @dev_warn(%struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  %73 = load %struct.es8316_priv*, %struct.es8316_priv** %7, align 8
  %74 = getelementptr inbounds %struct.es8316_priv, %struct.es8316_priv* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %64, %59
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 @devm_snd_soc_register_component(%struct.device* %77, i32* @soc_component_dev_es8316, i32* @es8316_dai, i32 1)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %33, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.es8316_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.es8316_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.es8316_priv*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
