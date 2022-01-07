; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98504.c_max98504_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98504.c_max98504_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max98504_priv = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"maxim,brownout-threshold\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"maxim,brownout-attenuation\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"maxim,brownout-attack-hold-ms\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"maxim,brownout-timed-hold-ms\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"maxim,brownout-release-rate-ms\00", align 1
@max98504_regmap = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"regmap initialization failed: %d\0A\00", align 1
@MAX98504_NUM_SUPPLIES = common dso_local global i32 0, align 4
@max98504_supply_names = common dso_local global i32* null, align 8
@max98504_component_driver = common dso_local global i32 0, align 4
@max98504_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max98504_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98504_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.max98504_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.max98504_priv* @devm_kzalloc(%struct.device* %16, i32 40, i32 %17)
  store %struct.max98504_priv* %18, %struct.max98504_priv** %8, align 8
  %19 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %20 = icmp ne %struct.max98504_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %114

24:                                               ; preds = %2
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %30 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %29, i32 0, i32 7
  %31 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %35 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.device_node*, %struct.device_node** %7, align 8
  %38 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %39 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %38, i32 0, i32 6
  %40 = call i32 @of_property_read_u32(%struct.device_node* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  %41 = load %struct.device_node*, %struct.device_node** %7, align 8
  %42 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %43 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %42, i32 0, i32 5
  %44 = call i32 @of_property_read_u32(%struct.device_node* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %43)
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %47 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %46, i32 0, i32 4
  %48 = call i32 @of_property_read_u32(%struct.device_node* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %47)
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %51 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %50, i32 0, i32 3
  %52 = call i32 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32* %51)
  br label %53

53:                                               ; preds = %36, %24
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %54, i32* @max98504_regmap)
  %56 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %57 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %59 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %65 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %114

73:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @MAX98504_NUM_SUPPLIES, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i32*, i32** @max98504_supply_names, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %85 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %83, i32* %90, align 4
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load i32, i32* @MAX98504_NUM_SUPPLIES, align 4
  %97 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %98 = getelementptr inbounds %struct.max98504_priv, %struct.max98504_priv* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = call i32 @devm_regulator_bulk_get(%struct.device* %95, i32 %96, %struct.TYPE_2__* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  br label %114

105:                                              ; preds = %94
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load %struct.max98504_priv*, %struct.max98504_priv** %8, align 8
  %108 = call i32 @i2c_set_clientdata(%struct.i2c_client* %106, %struct.max98504_priv* %107)
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load i32, i32* @max98504_dai, align 4
  %111 = load i32, i32* @max98504_dai, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = call i32 @devm_snd_soc_register_component(%struct.device* %109, i32* @max98504_component_driver, i32 %110, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %103, %63, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.max98504_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max98504_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
