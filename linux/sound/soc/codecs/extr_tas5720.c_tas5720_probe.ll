; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5720.c_tas5720_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5720.c_tas5720_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tas5720_data = type { i32, %struct.TYPE_5__*, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tas5720_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@tas5722_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"unexpected private driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate register map: %d\0A\00", align 1
@tas5720_supply_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to request supplies: %d\0A\00", align 1
@soc_component_dev_tas5720 = common dso_local global i32 0, align 4
@tas5720_dai = common dso_local global %struct.TYPE_5__* null, align 8
@soc_component_dev_tas5722 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tas5720_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5720_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tas5720_data*, align 8
  %8 = alloca %struct.regmap_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tas5720_data* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.tas5720_data* %15, %struct.tas5720_data** %7, align 8
  %16 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %17 = icmp ne %struct.tas5720_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %136

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %24 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %23, i32 0, i32 3
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %29 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %35 [
    i32 129, label %33
    i32 128, label %34
  ]

33:                                               ; preds = %21
  store %struct.regmap_config* @tas5720_regmap_config, %struct.regmap_config** %8, align 8
  br label %40

34:                                               ; preds = %21
  store %struct.regmap_config* @tas5722_regmap_config, %struct.regmap_config** %8, align 8
  br label %40

35:                                               ; preds = %21
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %136

40:                                               ; preds = %34, %33
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.regmap_config*, %struct.regmap_config** %8, align 8
  %43 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %41, %struct.regmap_config* %42)
  %44 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %45 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %47 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %53 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %136

60:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %64 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %61
  %69 = load i32*, i32** @tas5720_supply_names, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %75 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %61

84:                                               ; preds = %61
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %87 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %88)
  %90 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %91 = getelementptr inbounds %struct.tas5720_data, %struct.tas5720_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = call i32 @devm_regulator_bulk_get(%struct.device* %85, i32 %89, %struct.TYPE_5__* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %136

101:                                              ; preds = %84
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load %struct.tas5720_data*, %struct.tas5720_data** %7, align 8
  %104 = call i32 @dev_set_drvdata(%struct.device* %102, %struct.tas5720_data* %103)
  %105 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %106 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %122 [
    i32 129, label %108
    i32 128, label %115
  ]

108:                                              ; preds = %101
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tas5720_dai, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tas5720_dai, align 8
  %113 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %112)
  %114 = call i32 @devm_snd_soc_register_component(%struct.device* %110, i32* @soc_component_dev_tas5720, %struct.TYPE_5__* %111, i32 %113)
  store i32 %114, i32* %9, align 4
  br label %127

115:                                              ; preds = %101
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tas5720_dai, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tas5720_dai, align 8
  %120 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %119)
  %121 = call i32 @devm_snd_soc_register_component(%struct.device* %117, i32* @soc_component_dev_tas5722, %struct.TYPE_5__* %118, i32 %120)
  store i32 %121, i32* %9, align 4
  br label %127

122:                                              ; preds = %101
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %136

127:                                              ; preds = %115, %108
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %136

135:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %130, %122, %96, %51, %35, %18
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.tas5720_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.tas5720_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
