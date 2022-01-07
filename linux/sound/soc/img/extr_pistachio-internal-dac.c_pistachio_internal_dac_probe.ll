; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_pistachio-internal-dac.c_pistachio_internal_dac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_pistachio-internal-dac.c_pistachio_internal_dac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pistachio_internal_dac = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"img,cr-top\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"VDD\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to acquire supply 'VDD-supply': %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@PISTACHIO_INTERNAL_DAC_CTRL_PWR_SEL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid voltage: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PISTACHIO_INTERNAL_DAC_CTRL = common dso_local global i32 0, align 4
@pistachio_internal_dac_driver = common dso_local global i32 0, align 4
@pistachio_internal_dac_dais = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pistachio_internal_dac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_internal_dac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pistachio_internal_dac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pistachio_internal_dac* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.pistachio_internal_dac* %13, %struct.pistachio_internal_dac** %4, align 8
  %14 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %15 = icmp ne %struct.pistachio_internal_dac* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %134

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.pistachio_internal_dac* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @syscon_regmap_lookup_by_phandle(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %29 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %31 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %19
  %36 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %37 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %134

40:                                               ; preds = %19
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = call i32 @devm_regulator_get(%struct.device* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %44 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %46 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %40
  %51 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %52 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %134

65:                                               ; preds = %40
  %66 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %67 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regulator_enable(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %134

77:                                               ; preds = %65
  %78 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %79 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regulator_get_voltage(i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  switch i32 %82, label %86 [
    i32 1800000, label %83
    i32 3300000, label %84
  ]

83:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %92

84:                                               ; preds = %77
  %85 = load i32, i32* @PISTACHIO_INTERNAL_DAC_CTRL_PWR_SEL_MASK, align 4
  store i32 %85, i32* %8, align 4
  br label %92

86:                                               ; preds = %77
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %128

92:                                               ; preds = %84, %83
  %93 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %94 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PISTACHIO_INTERNAL_DAC_CTRL, align 4
  %97 = load i32, i32* @PISTACHIO_INTERNAL_DAC_CTRL_PWR_SEL_MASK, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %101 = call i32 @pistachio_internal_dac_pwr_off(%struct.pistachio_internal_dac* %100)
  %102 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %103 = call i32 @pistachio_internal_dac_pwr_on(%struct.pistachio_internal_dac* %102)
  %104 = load %struct.device*, %struct.device** %7, align 8
  %105 = call i32 @pm_runtime_set_active(%struct.device* %104)
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = call i32 @pm_runtime_enable(%struct.device* %106)
  %108 = load %struct.device*, %struct.device** %7, align 8
  %109 = call i32 @pm_runtime_idle(%struct.device* %108)
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = load i32, i32* @pistachio_internal_dac_dais, align 4
  %112 = load i32, i32* @pistachio_internal_dac_dais, align 4
  %113 = call i32 @ARRAY_SIZE(i32 %112)
  %114 = call i32 @devm_snd_soc_register_component(%struct.device* %110, i32* @pistachio_internal_dac_driver, i32 %111, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %92
  %118 = load %struct.device*, %struct.device** %7, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %122

121:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %134

122:                                              ; preds = %117
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @pm_runtime_disable(%struct.device* %124)
  %126 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %127 = call i32 @pistachio_internal_dac_pwr_off(%struct.pistachio_internal_dac* %126)
  br label %128

128:                                              ; preds = %122, %86
  %129 = load %struct.pistachio_internal_dac*, %struct.pistachio_internal_dac** %4, align 8
  %130 = getelementptr inbounds %struct.pistachio_internal_dac, %struct.pistachio_internal_dac* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @regulator_disable(i32 %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %128, %121, %72, %63, %35, %16
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.pistachio_internal_dac* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pistachio_internal_dac*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pistachio_internal_dac_pwr_off(%struct.pistachio_internal_dac*) #1

declare dso_local i32 @pistachio_internal_dac_pwr_on(%struct.pistachio_internal_dac*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_idle(%struct.device*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
