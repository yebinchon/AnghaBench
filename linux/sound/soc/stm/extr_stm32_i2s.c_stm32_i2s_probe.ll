; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_i2s_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2S_MS_NOT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@stm32_i2s_component = common dso_local global i32 0, align 4
@stm32_i2s_pcm_config = common dso_local global i32 0, align 4
@STM32_I2S_CGFR_REG = common dso_local global i32 0, align 4
@I2S_CGFR_I2SMOD = common dso_local global i32 0, align 4
@STM32_I2S_IPIDR_REG = common dso_local global i32 0, align 4
@I2S_IPIDR_NUMBER = common dso_local global i64 0, align 8
@STM32_I2S_HWCFGR_REG = common dso_local global i32 0, align 4
@I2S_HWCFGR_I2S_SUPPORT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Device does not support i2s mode\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@STM32_I2S_VERR_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"I2S version: %lu.%lu registered\0A\00", align 1
@I2S_VERR_MAJ_MASK = common dso_local global i32 0, align 4
@I2S_VERR_MIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_i2s_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.stm32_i2s_data* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.stm32_i2s_data* %10, %struct.stm32_i2s_data** %4, align 8
  %11 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %12 = icmp ne %struct.stm32_i2s_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %155

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %19 = call i32 @stm32_i2s_parse_dt(%struct.platform_device* %17, %struct.stm32_i2s_data* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %155

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %27 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %26, i32 0, i32 7
  store %struct.platform_device* %25, %struct.platform_device** %27, align 8
  %28 = load i32, i32* @I2S_MS_NOT_SET, align 4
  %29 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %30 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %31, i32 0, i32 5
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %34, i32 0, i32 4
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.stm32_i2s_data* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %42 = call i32 @stm32_i2s_dais_init(%struct.platform_device* %40, %struct.stm32_i2s_data* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %155

47:                                               ; preds = %24
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %51 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %54 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @devm_regmap_init_mmio_clk(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %58 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %60 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %47
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %69 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %155

72:                                               ; preds = %47
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %76 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @devm_snd_soc_register_component(i32* %74, i32* @stm32_i2s_component, i32 %77, i32 1)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %155

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @devm_snd_dmaengine_pcm_register(i32* %85, i32* @stm32_i2s_pcm_config, i32 0)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %155

91:                                               ; preds = %83
  %92 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %93 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @STM32_I2S_CGFR_REG, align 4
  %96 = load i32, i32* @I2S_CGFR_I2SMOD, align 4
  %97 = load i32, i32* @I2S_CGFR_I2SMOD, align 4
  %98 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %155

103:                                              ; preds = %91
  %104 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %105 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @STM32_I2S_IPIDR_REG, align 4
  %108 = call i32 @regmap_read(i32 %106, i32 %107, i64* %5)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %155

113:                                              ; preds = %103
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* @I2S_IPIDR_NUMBER, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %153

117:                                              ; preds = %113
  %118 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %119 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @STM32_I2S_HWCFGR_REG, align 4
  %122 = call i32 @regmap_read(i32 %120, i32 %121, i64* %5)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %155

127:                                              ; preds = %117
  %128 = load i32, i32* @I2S_HWCFGR_I2S_SUPPORT_MASK, align 4
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @FIELD_GET(i32 %128, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @dev_err(i32* %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @EPERM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %155

138:                                              ; preds = %127
  %139 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %4, align 8
  %140 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @STM32_I2S_VERR_REG, align 4
  %143 = call i32 @regmap_read(i32 %141, i32 %142, i64* %5)
  store i32 %143, i32* %6, align 4
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load i32, i32* @I2S_VERR_MAJ_MASK, align 4
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @FIELD_GET(i32 %146, i64 %147)
  %149 = load i32, i32* @I2S_VERR_MIN_MASK, align 4
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @FIELD_GET(i32 %149, i64 %150)
  %152 = call i32 @dev_dbg(i32* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %138, %113
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %132, %125, %111, %101, %89, %81, %64, %45, %22, %13
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.stm32_i2s_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @stm32_i2s_parse_dt(%struct.platform_device*, %struct.stm32_i2s_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_i2s_data*) #1

declare dso_local i32 @stm32_i2s_dais_init(%struct.platform_device*, %struct.stm32_i2s_data*) #1

declare dso_local i32 @devm_regmap_init_mmio_clk(i32*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(i32*, i32*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i32 @FIELD_GET(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
