; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rt5616_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt5616_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RT5616_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Device with ID register %#x is not rt5616\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RT5616_RESET = common dso_local global i32 0, align 4
@RT5616_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5616_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5616_PWR_MB = common dso_local global i32 0, align 4
@RT5616_PWR_BG = common dso_local global i32 0, align 4
@RT5616_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5616_PWR_FV1 = common dso_local global i32 0, align 4
@RT5616_PWR_FV2 = common dso_local global i32 0, align 4
@init_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@RT5616_PWR_LDO_DVO_MASK = common dso_local global i32 0, align 4
@RT5616_PWR_LDO_DVO_1_2V = common dso_local global i32 0, align 4
@soc_component_dev_rt5616 = common dso_local global i32 0, align 4
@rt5616_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5616_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5616_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5616_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rt5616_priv* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  store %struct.rt5616_priv* %12, %struct.rt5616_priv** %6, align 8
  %13 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %14 = icmp ne %struct.rt5616_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %121

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.rt5616_priv* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @rt5616_regmap)
  %24 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %25 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %27 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %33 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %121

41:                                               ; preds = %18
  %42 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %43 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RT5616_DEVICE_ID, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %7)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 25217
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %121

56:                                               ; preds = %41
  %57 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %58 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RT5616_RESET, align 4
  %61 = call i32 @regmap_write(i32 %59, i32 %60, i32 0)
  %62 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %63 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RT5616_PWR_ANLG1, align 4
  %66 = load i32, i32* @RT5616_PWR_VREF1, align 4
  %67 = load i32, i32* @RT5616_PWR_MB, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RT5616_PWR_BG, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RT5616_PWR_VREF2, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RT5616_PWR_VREF1, align 4
  %74 = load i32, i32* @RT5616_PWR_MB, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RT5616_PWR_BG, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @RT5616_PWR_VREF2, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %72, i32 %79)
  %81 = call i32 @mdelay(i32 10)
  %82 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %83 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RT5616_PWR_ANLG1, align 4
  %86 = load i32, i32* @RT5616_PWR_FV1, align 4
  %87 = load i32, i32* @RT5616_PWR_FV2, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RT5616_PWR_FV1, align 4
  %90 = load i32, i32* @RT5616_PWR_FV2, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %88, i32 %91)
  %93 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %94 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @init_list, align 4
  %97 = load i32, i32* @init_list, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  %99 = call i32 @regmap_register_patch(i32 %95, i32 %96, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %56
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @dev_warn(i32* %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %56
  %108 = load %struct.rt5616_priv*, %struct.rt5616_priv** %6, align 8
  %109 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RT5616_PWR_ANLG1, align 4
  %112 = load i32, i32* @RT5616_PWR_LDO_DVO_MASK, align 4
  %113 = load i32, i32* @RT5616_PWR_LDO_DVO_1_2V, align 4
  %114 = call i32 @regmap_update_bits(i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* @rt5616_dai, align 4
  %118 = load i32, i32* @rt5616_dai, align 4
  %119 = call i32 @ARRAY_SIZE(i32 %118)
  %120 = call i32 @devm_snd_soc_register_component(i32* %116, i32* @soc_component_dev_rt5616, i32 %117, i32 %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %107, %49, %31, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.rt5616_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5616_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
