; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98926.c_max98926_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98926.c_max98926_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max98926_priv = type { i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max98926_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"interleave-mode\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"vmon-slot-no\00", align 1
@MAX98926_DAI_VMON_SLOT_1E_1F = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"vmon slot number is wrong:\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"imon-slot-no\00", align 1
@MAX98926_DAI_IMON_SLOT_1E_1F = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"imon slot number is wrong:\0A\00", align 1
@MAX98926_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Failed to read: %x\0A\00", align 1
@soc_component_dev_max98926 = common dso_local global i32 0, align 4
@max98926_dai = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"device version: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max98926_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98926_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.max98926_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.max98926_priv* @devm_kzalloc(%struct.TYPE_5__* %11, i32 24, i32 %12)
  store %struct.max98926_priv* %13, %struct.max98926_priv** %9, align 8
  %14 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %15 = icmp ne %struct.max98926_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %128

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.max98926_priv* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @max98926_regmap)
  %25 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %26 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %28 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %34 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %126

41:                                               ; preds = %19
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @of_property_read_bool(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %50 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @of_property_read_u32(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64* %8)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @MAX98926_DAI_VMON_SLOT_1E_1F, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %128

68:                                               ; preds = %58
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %71 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %51
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @of_property_read_u32(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64* %8)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @MAX98926_DAI_IMON_SLOT_1E_1F, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %128

89:                                               ; preds = %79
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %92 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %72
  %94 = load %struct.max98926_priv*, %struct.max98926_priv** %9, align 8
  %95 = getelementptr inbounds %struct.max98926_priv, %struct.max98926_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MAX98926_VERSION, align 4
  %98 = call i32 @regmap_read(i32 %96, i32 %97, i32* %7)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %128

107:                                              ; preds = %93
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load i32, i32* @max98926_dai, align 4
  %111 = load i32, i32* @max98926_dai, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %109, i32* @soc_component_dev_max98926, i32 %110, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %107
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %116, %107
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @dev_info(%struct.TYPE_5__* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %32
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %101, %83, %62, %16
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.max98926_priv* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max98926_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
