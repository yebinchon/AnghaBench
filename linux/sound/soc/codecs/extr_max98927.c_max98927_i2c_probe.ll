; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max98927_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"interleave_mode\00", align 1
@max98927_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@MAX98927_R01FF_REV_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to read: 0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"MAX98927 revisionID: 0x%02X\0A\00", align 1
@soc_component_dev_max98927 = common dso_local global i32 0, align 4
@max98927_dai = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max98927_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98927_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.max98927_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store %struct.max98927_priv* null, %struct.max98927_priv** %9, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.max98927_priv* @devm_kzalloc(%struct.TYPE_5__* %11, i32 8, i32 %12)
  store %struct.max98927_priv* %13, %struct.max98927_priv** %9, align 8
  %14 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %15 = icmp ne %struct.max98927_priv* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %100

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.max98927_priv* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @of_property_read_u32(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %35 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %38 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %43

40:                                               ; preds = %20
  %41 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %42 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %44, i32* @max98927_regmap)
  %46 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %47 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %49 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %55 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_err(%struct.TYPE_5__* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %100

63:                                               ; preds = %43
  %64 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %65 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MAX98927_R01FF_REV_ID, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %8)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* @MAX98927_R01FF_REV_ID, align 4
  %75 = call i32 @dev_err(%struct.TYPE_5__* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %100

77:                                               ; preds = %63
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @dev_info(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %84 = call i32 @max98927_slot_config(%struct.i2c_client* %82, %struct.max98927_priv* %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* @max98927_dai, align 4
  %88 = load i32, i32* @max98927_dai, align 4
  %89 = call i32 @ARRAY_SIZE(i32 %88)
  %90 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %86, i32* @soc_component_dev_max98927, i32 %87, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %77
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @dev_err(%struct.TYPE_5__* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %77
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %71, %53, %16
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.max98927_priv* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max98927_priv*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @max98927_slot_config(%struct.i2c_client*, %struct.max98927_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
