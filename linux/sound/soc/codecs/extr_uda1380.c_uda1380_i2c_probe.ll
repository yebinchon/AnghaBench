; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.uda1380_platform_data* }
%struct.uda1380_platform_data = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.uda1380_priv = type { %struct.i2c_client*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"uda1380 reset\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"uda1380 power\00", align 1
@uda1380_reg = common dso_local global i32 0, align 4
@soc_component_dev_uda1380 = common dso_local global i32 0, align 4
@uda1380_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @uda1380_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.uda1380_platform_data*, align 8
  %7 = alloca %struct.uda1380_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %11, align 8
  store %struct.uda1380_platform_data* %12, %struct.uda1380_platform_data** %6, align 8
  %13 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %6, align 8
  %14 = icmp ne %struct.uda1380_platform_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %100

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.uda1380_priv* @devm_kzalloc(%struct.TYPE_5__* %20, i32 16, i32 %21)
  store %struct.uda1380_priv* %22, %struct.uda1380_priv** %7, align 8
  %23 = load %struct.uda1380_priv*, %struct.uda1380_priv** %7, align 8
  %24 = icmp eq %struct.uda1380_priv* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %100

28:                                               ; preds = %18
  %29 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %6, align 8
  %30 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @gpio_is_valid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %41 = call i32 @devm_gpio_request_one(%struct.TYPE_5__* %36, i32 %39, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %100

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %6, align 8
  %49 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @gpio_is_valid(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %6, align 8
  %57 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %60 = call i32 @devm_gpio_request_one(%struct.TYPE_5__* %55, i32 %58, i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %100

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %47
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i32, i32* @uda1380_reg, align 4
  %70 = load i32, i32* @uda1380_reg, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @devm_kmemdup(%struct.TYPE_5__* %68, i32 %69, i32 %74, i32 %75)
  %77 = load %struct.uda1380_priv*, %struct.uda1380_priv** %7, align 8
  %78 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.uda1380_priv*, %struct.uda1380_priv** %7, align 8
  %80 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %66
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %100

86:                                               ; preds = %66
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = load %struct.uda1380_priv*, %struct.uda1380_priv** %7, align 8
  %89 = call i32 @i2c_set_clientdata(%struct.i2c_client* %87, %struct.uda1380_priv* %88)
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = load %struct.uda1380_priv*, %struct.uda1380_priv** %7, align 8
  %92 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %91, i32 0, i32 0
  store %struct.i2c_client* %90, %struct.i2c_client** %92, align 8
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* @uda1380_dai, align 4
  %96 = load i32, i32* @uda1380_dai, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %94, i32* @soc_component_dev_uda1380, i32 %95, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %86, %83, %63, %44, %25, %15
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.uda1380_priv* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @devm_kmemdup(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.uda1380_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
