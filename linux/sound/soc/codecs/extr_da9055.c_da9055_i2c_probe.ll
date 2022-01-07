; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.da9055_priv = type { i32, %struct.da9055_platform_data* }
%struct.da9055_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9055_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@soc_component_dev_da9055 = common dso_local global i32 0, align 4
@da9055_dai = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to register da9055 component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da9055_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da9055_priv*, align 8
  %7 = alloca %struct.da9055_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.da9055_platform_data* @dev_get_platdata(i32* %10)
  store %struct.da9055_platform_data* %11, %struct.da9055_platform_data** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.da9055_priv* @devm_kzalloc(i32* %13, i32 16, i32 %14)
  store %struct.da9055_priv* %15, %struct.da9055_priv** %6, align 8
  %16 = load %struct.da9055_priv*, %struct.da9055_priv** %6, align 8
  %17 = icmp ne %struct.da9055_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.da9055_platform_data*, %struct.da9055_platform_data** %7, align 8
  %23 = icmp ne %struct.da9055_platform_data* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.da9055_platform_data*, %struct.da9055_platform_data** %7, align 8
  %26 = load %struct.da9055_priv*, %struct.da9055_priv** %6, align 8
  %27 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %26, i32 0, i32 1
  store %struct.da9055_platform_data* %25, %struct.da9055_platform_data** %27, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.da9055_priv*, %struct.da9055_priv** %6, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.da9055_priv* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %32, i32* @da9055_regmap_config)
  %34 = load %struct.da9055_priv*, %struct.da9055_priv** %6, align 8
  %35 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.da9055_priv*, %struct.da9055_priv** %6, align 8
  %37 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %28
  %42 = load %struct.da9055_priv*, %struct.da9055_priv** %6, align 8
  %43 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %64

51:                                               ; preds = %28
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 @devm_snd_soc_register_component(i32* %53, i32* @soc_component_dev_da9055, i32* @da9055_dai, i32 1)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %41, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.da9055_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.da9055_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da9055_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
