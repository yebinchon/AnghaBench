; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.da7218_priv = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA7217_DEV_ID = common dso_local global i64 0, align 8
@DA7218_DEV_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Invalid device Id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@da7218_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@soc_component_dev_da7218 = common dso_local global i32 0, align 4
@da7218_dai = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to register da7218 component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da7218_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da7218_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.da7218_priv* @devm_kzalloc(%struct.TYPE_5__* %9, i32 16, i32 %10)
  store %struct.da7218_priv* %11, %struct.da7218_priv** %6, align 8
  %12 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %13 = icmp ne %struct.da7218_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %94

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.da7218_priv* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call i64 @da7218_of_get_id(%struct.TYPE_5__* %28)
  %30 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %31 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %38

32:                                               ; preds = %17
  %33 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %37 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %40 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DA7217_DEV_ID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %46 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DA7218_DEV_ID, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %94

56:                                               ; preds = %44, %38
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %61 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %62, i32* @da7218_regmap_config)
  %64 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %65 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %67 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %56
  %72 = load %struct.da7218_priv*, %struct.da7218_priv** %6, align 8
  %73 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %94

81:                                               ; preds = %56
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %83, i32* @soc_component_dev_da7218, i32* @da7218_dai, i32 1)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %81
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %71, %50, %14
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.da7218_priv* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da7218_priv*) #1

declare dso_local i64 @da7218_of_get_id(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
