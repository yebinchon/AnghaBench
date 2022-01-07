; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tas2552_data = type { %struct.TYPE_5__*, i32, %struct.i2c_client*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@tas2552_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@tas2552_supply_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@soc_component_dev_tas2552 = common dso_local global i32 0, align 4
@tas2552_dai = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tas2552_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas2552_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tas2552_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tas2552_data* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.tas2552_data* %15, %struct.tas2552_data** %7, align 8
  %16 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %17 = icmp eq %struct.tas2552_data* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %139

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %24 = call i32 @devm_gpiod_get_optional(%struct.device* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %26 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %28 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %34 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %139

37:                                               ; preds = %21
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %40 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %39, i32 0, i32 2
  store %struct.i2c_client* %38, %struct.i2c_client** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %41, i32* @tas2552_regmap_config)
  %43 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %44 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %46 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %37
  %51 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %52 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %139

60:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %64 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %61
  %69 = load i32*, i32** @tas2552_supply_names, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %75 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %61

84:                                               ; preds = %61
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %87 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %88)
  %90 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %91 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = call i32 @devm_regulator_bulk_get(%struct.device* %85, i32 %89, %struct.TYPE_5__* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %139

101:                                              ; preds = %84
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 @pm_runtime_set_active(%struct.device* %103)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %106, i32 1000)
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = call i32 @pm_runtime_use_autosuspend(%struct.device* %109)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = call i32 @pm_runtime_enable(%struct.device* %112)
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 0
  %116 = call i32 @pm_runtime_mark_last_busy(%struct.device* %115)
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %118)
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = load %struct.tas2552_data*, %struct.tas2552_data** %7, align 8
  %123 = call i32 @dev_set_drvdata(%struct.device* %121, %struct.tas2552_data* %122)
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tas2552_dai, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tas2552_dai, align 8
  %128 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %127)
  %129 = call i32 @devm_snd_soc_register_component(%struct.device* %125, i32* @soc_component_dev_tas2552, %struct.TYPE_5__* %126, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %101
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %132, %101
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %96, %50, %32, %18
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.tas2552_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.tas2552_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
