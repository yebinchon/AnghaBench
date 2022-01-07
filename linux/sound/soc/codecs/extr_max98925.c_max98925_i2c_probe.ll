; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max98925_priv = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max98925_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"vmon-slot-no\00", align 1
@M98925_DAI_VMON_SLOT_1E_1F = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"vmon slot number is wrong:\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"imon-slot-no\00", align 1
@M98925_DAI_IMON_SLOT_1E_1F = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"imon slot number is wrong:\0A\00", align 1
@MAX98925_REV_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Read revision failed\0A\00", align 1
@MAX98925_VERSION = common dso_local global i32 0, align 4
@MAX98925_VERSION1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid revision (%d 0x%02X)\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"device version 0x%02X\0A\00", align 1
@soc_component_dev_max98925 = common dso_local global i32 0, align 4
@max98925_dai = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max98925_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98925_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.max98925_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.max98925_priv* @devm_kzalloc(%struct.TYPE_5__* %11, i32 24, i32 %12)
  store %struct.max98925_priv* %13, %struct.max98925_priv** %9, align 8
  %14 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %15 = icmp ne %struct.max98925_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %134

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.max98925_priv* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @max98925_regmap)
  %25 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %26 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %28 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %34 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %134

42:                                               ; preds = %19
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @of_property_read_u32(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @M98925_DAI_VMON_SLOT_1E_1F, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %134

59:                                               ; preds = %49
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %62 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %42
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @of_property_read_u32(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @M98925_DAI_IMON_SLOT_1E_1F, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %134

80:                                               ; preds = %70
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %83 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %63
  %85 = load %struct.max98925_priv*, %struct.max98925_priv** %9, align 8
  %86 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MAX98925_REV_VERSION, align 4
  %89 = call i32 @regmap_read(i32 %87, i32 %88, i32* %7)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %134

97:                                               ; preds = %84
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MAX98925_VERSION, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @MAX98925_VERSION1, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %134

114:                                              ; preds = %101, %97
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @dev_info(%struct.TYPE_5__* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 0
  %121 = load i32, i32* @max98925_dai, align 4
  %122 = load i32, i32* @max98925_dai, align 4
  %123 = call i32 @ARRAY_SIZE(i32 %122)
  %124 = call i32 @devm_snd_soc_register_component(%struct.TYPE_5__* %120, i32* @soc_component_dev_max98925, i32 %121, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %114
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = load i32, i32* %6, align 4
  %131 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %114
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %105, %92, %74, %53, %32, %16
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.max98925_priv* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max98925_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
