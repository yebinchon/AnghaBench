; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.da7219_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da7219_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@DA7219_SYSTEM_ACTIVE = common dso_local global i32 0, align 4
@DA7219_GAIN_RAMP_CTRL = common dso_local global i32 0, align 4
@DA7219_GAIN_RAMP_RATE_NOMINAL = common dso_local global i32 0, align 4
@DA7219_SYSTEM_MODES_INPUT = common dso_local global i32 0, align 4
@DA7219_SYSTEM_MODES_OUTPUT = common dso_local global i32 0, align 4
@DA7219_SYS_STAT_CHECK_RETRIES = common dso_local global i32 0, align 4
@DA7219_SYSTEM_STATUS = common dso_local global i32 0, align 4
@DA7219_SYS_STAT_CHECK_DELAY = common dso_local global i32 0, align 4
@DA7219_ACCDET_CONFIG_1 = common dso_local global i32 0, align 4
@DA7219_ACCDET_EN_MASK = common dso_local global i32 0, align 4
@DA7219_CIF_CTRL = common dso_local global i32 0, align 4
@DA7219_CIF_REG_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@DA7219_SYSTEM_ACTIVE_MASK = common dso_local global i32 0, align 4
@soc_component_dev_da7219 = common dso_local global i32 0, align 4
@da7219_dai = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to register da7219 component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da7219_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da7219_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.da7219_priv* @devm_kzalloc(i32* %12, i32 4, i32 %13)
  store %struct.da7219_priv* %14, %struct.da7219_priv** %6, align 8
  %15 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %16 = icmp ne %struct.da7219_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %128

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.da7219_priv* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %24, i32* @da7219_regmap_config)
  %26 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %27 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %29 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %35 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %128

43:                                               ; preds = %20
  %44 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %45 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regcache_cache_bypass(i32 %46, i32 1)
  %48 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %49 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DA7219_SYSTEM_ACTIVE, align 4
  %52 = call i32 @regmap_read(i32 %50, i32 %51, i32* %7)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %43
  %56 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %57 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DA7219_GAIN_RAMP_CTRL, align 4
  %60 = load i32, i32* @DA7219_GAIN_RAMP_RATE_NOMINAL, align 4
  %61 = call i32 @regmap_write(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %63 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DA7219_SYSTEM_MODES_INPUT, align 4
  %66 = call i32 @regmap_write(i32 %64, i32 %65, i32 0)
  %67 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %68 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DA7219_SYSTEM_MODES_OUTPUT, align 4
  %71 = call i32 @regmap_write(i32 %69, i32 %70, i32 1)
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %88, %55
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @DA7219_SYS_STAT_CHECK_RETRIES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %78 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DA7219_SYSTEM_STATUS, align 4
  %81 = call i32 @regmap_read(i32 %79, i32 %80, i32* %8)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  br label %91

85:                                               ; preds = %76
  %86 = load i32, i32* @DA7219_SYS_STAT_CHECK_DELAY, align 4
  %87 = call i32 @msleep(i32 %86)
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %72

91:                                               ; preds = %84, %72
  br label %92

92:                                               ; preds = %91, %43
  %93 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %94 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DA7219_ACCDET_CONFIG_1, align 4
  %97 = load i32, i32* @DA7219_ACCDET_EN_MASK, align 4
  %98 = call i32 @regmap_write_bits(i32 %95, i32 %96, i32 %97, i32 0)
  %99 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %100 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DA7219_CIF_CTRL, align 4
  %103 = load i32, i32* @DA7219_CIF_REG_SOFT_RESET_MASK, align 4
  %104 = load i32, i32* @DA7219_CIF_REG_SOFT_RESET_MASK, align 4
  %105 = call i32 @regmap_write_bits(i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %107 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DA7219_SYSTEM_ACTIVE, align 4
  %110 = load i32, i32* @DA7219_SYSTEM_ACTIVE_MASK, align 4
  %111 = call i32 @regmap_write_bits(i32 %108, i32 %109, i32 %110, i32 0)
  %112 = load %struct.da7219_priv*, %struct.da7219_priv** %6, align 8
  %113 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @regcache_cache_bypass(i32 %114, i32 0)
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = call i32 @devm_snd_soc_register_component(i32* %117, i32* @soc_component_dev_da7219, i32* @da7219_dai, i32 1)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %92
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %92
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %33, %17
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.da7219_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da7219_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
