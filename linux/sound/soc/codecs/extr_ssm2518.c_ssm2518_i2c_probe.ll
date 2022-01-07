; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.ssm2518_platform_data* }
%struct.ssm2518_platform_data = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ssm2518 = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SSM2518 nSD\00", align 1
@ssm2518_regmap_config = common dso_local global i32 0, align 4
@SSM2518_REG_POWER1 = common dso_local global i32 0, align 4
@SSM2518_POWER1_RESET = common dso_local global i32 0, align 4
@SSM2518_REG_POWER2 = common dso_local global i32 0, align 4
@SSM2518_POWER2_APWDN = common dso_local global i32 0, align 4
@ssm2518_component_driver = common dso_local global i32 0, align 4
@ssm2518_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ssm2518_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2518_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ssm2518_platform_data*, align 8
  %7 = alloca %struct.ssm2518*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.ssm2518_platform_data*, %struct.ssm2518_platform_data** %11, align 8
  store %struct.ssm2518_platform_data* %12, %struct.ssm2518_platform_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ssm2518* @devm_kzalloc(%struct.TYPE_4__* %14, i32 8, i32 %15)
  store %struct.ssm2518* %16, %struct.ssm2518** %7, align 8
  %17 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %18 = icmp eq %struct.ssm2518* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %143

22:                                               ; preds = %2
  %23 = load %struct.ssm2518_platform_data*, %struct.ssm2518_platform_data** %6, align 8
  %24 = icmp ne %struct.ssm2518_platform_data* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.ssm2518_platform_data*, %struct.ssm2518_platform_data** %6, align 8
  %27 = getelementptr inbounds %struct.ssm2518_platform_data, %struct.ssm2518_platform_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %30 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %65

31:                                               ; preds = %22
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @of_get_gpio(i64 %41, i32 0)
  %43 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %44 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %46 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %37
  %50 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %51 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %58 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %143

60:                                               ; preds = %49, %37
  br label %64

61:                                               ; preds = %31
  %62 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %63 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %60
  br label %65

65:                                               ; preds = %64, %25
  %66 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %67 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @gpio_is_valid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %75 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %78 = call i32 @devm_gpio_request_one(%struct.TYPE_4__* %73, i32 %76, i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %143

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %65
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %87 = call i32 @i2c_set_clientdata(%struct.i2c_client* %85, %struct.ssm2518* %86)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %88, i32* @ssm2518_regmap_config)
  %90 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %91 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %93 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @IS_ERR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %99 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PTR_ERR(i32 %100)
  store i32 %101, i32* %3, align 4
  br label %143

102:                                              ; preds = %84
  %103 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %104 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @regcache_cache_bypass(i32 %105, i32 1)
  %107 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %108 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SSM2518_REG_POWER1, align 4
  %111 = load i32, i32* @SSM2518_POWER1_RESET, align 4
  %112 = call i32 @regmap_write(i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %114 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @regcache_cache_bypass(i32 %115, i32 0)
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %102
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %143

121:                                              ; preds = %102
  %122 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %123 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SSM2518_REG_POWER2, align 4
  %126 = load i32, i32* @SSM2518_POWER2_APWDN, align 4
  %127 = call i32 @regmap_update_bits(i32 %124, i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %143

132:                                              ; preds = %121
  %133 = load %struct.ssm2518*, %struct.ssm2518** %7, align 8
  %134 = call i32 @ssm2518_set_power(%struct.ssm2518* %133, i32 0)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %143

139:                                              ; preds = %132
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = call i32 @devm_snd_soc_register_component(%struct.TYPE_4__* %141, i32* @ssm2518_component_driver, i32* @ssm2518_dai, i32 1)
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %137, %130, %119, %97, %81, %56, %19
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.ssm2518* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @of_get_gpio(i64, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_4__*, i32, i32, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ssm2518*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ssm2518_set_power(%struct.ssm2518*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_4__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
