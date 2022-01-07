; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.of_device_id = type { i32 }
%struct.wm8580_priv = type { i32, %struct.TYPE_5__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8580_regmap = common dso_local global i32 0, align 4
@wm8580_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@wm8580_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to find driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@soc_component_dev_wm8580 = common dso_local global i32 0, align 4
@wm8580_dai = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8580_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.wm8580_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wm8580_priv* @devm_kzalloc(i32* %11, i32 24, i32 %12)
  store %struct.wm8580_priv* %13, %struct.wm8580_priv** %7, align 8
  %14 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %15 = icmp eq %struct.wm8580_priv* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %112

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %20, i32* @wm8580_regmap)
  %22 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %23 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %25 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %31 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %112

34:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %55, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %38 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %39)
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load i32*, i32** @wm8580_supply_names, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %49 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %35

58:                                               ; preds = %35
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %62 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %63)
  %65 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %66 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = call i32 @devm_regulator_bulk_get(i32* %60, i32 %64, %struct.TYPE_5__* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %58
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %112

77:                                               ; preds = %58
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %80 = call i32 @i2c_set_clientdata(%struct.i2c_client* %78, %struct.wm8580_priv* %79)
  %81 = load i32, i32* @wm8580_of_match, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = call %struct.of_device_id* @of_match_device(i32 %81, i32* %83)
  store %struct.of_device_id* %84, %struct.of_device_id** %6, align 8
  %85 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %86 = icmp ne %struct.of_device_id* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %89 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %92 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %77
  %94 = load %struct.wm8580_priv*, %struct.wm8580_priv** %7, align 8
  %95 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %112

104:                                              ; preds = %93
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wm8580_dai, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wm8580_dai, align 8
  %109 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %108)
  %110 = call i32 @devm_snd_soc_register_component(i32* %106, i32* @soc_component_dev_wm8580, %struct.TYPE_5__* %107, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %104, %98, %71, %29, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.wm8580_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8580_priv*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
