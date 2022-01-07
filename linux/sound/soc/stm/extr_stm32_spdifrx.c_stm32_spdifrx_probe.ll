; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dmaengine_pcm_config = type { i32 }
%struct.platform_device = type { i32 }
%struct.stm32_spdifrx_data = type { i64, %struct.reset_control*, %struct.reset_control*, i32, i32, i32, i32, i32, %struct.platform_device* }
%struct.reset_control = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"kclk\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Regmap init failed\0A\00", align 1
@stm32_spdifrx_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"IRQ request returned %d\0A\00", align 1
@stm32_spdifrx_component = common dso_local global i32 0, align 4
@stm32_spdifrx_dai = common dso_local global i32 0, align 4
@stm32_spdifrx_pcm_config = common dso_local global %struct.snd_dmaengine_pcm_config zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"PCM DMA register returned %d\0A\00", align 1
@STM32_SPDIFRX_IDR = common dso_local global i32 0, align 4
@SPDIFRX_IPIDR_NUMBER = common dso_local global i64 0, align 8
@STM32_SPDIFRX_VERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"SPDIFRX version: %lu.%lu registered\0A\00", align 1
@SPDIFRX_VERR_MAJ_MASK = common dso_local global i32 0, align 4
@SPDIFRX_VERR_MIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_spdifrx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_spdifrx_data*, align 8
  %5 = alloca %struct.reset_control*, align 8
  %6 = alloca %struct.snd_dmaengine_pcm_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_dmaengine_pcm_config* null, %struct.snd_dmaengine_pcm_config** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.stm32_spdifrx_data* @devm_kzalloc(i32* %11, i32 56, i32 %12)
  store %struct.stm32_spdifrx_data* %13, %struct.stm32_spdifrx_data** %4, align 8
  %14 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %15 = icmp ne %struct.stm32_spdifrx_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %181

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %21, i32 0, i32 8
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %23, i32 0, i32 7
  %25 = call i32 @init_completion(i32* %24)
  %26 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %27 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %26, i32 0, i32 6
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.stm32_spdifrx_data* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %34 = call i32 @stm32_spdifrx_parse_of(%struct.platform_device* %32, %struct.stm32_spdifrx_data* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  br label %181

39:                                               ; preds = %19
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %43 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %46 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.reset_control* @devm_regmap_init_mmio_clk(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %50 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %49, i32 0, i32 2
  store %struct.reset_control* %48, %struct.reset_control** %50, align 8
  %51 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %52 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %51, i32 0, i32 2
  %53 = load %struct.reset_control*, %struct.reset_control** %52, align 8
  %54 = call i64 @IS_ERR(%struct.reset_control* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %39
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %61 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %60, i32 0, i32 2
  %62 = load %struct.reset_control*, %struct.reset_control** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.reset_control* %62)
  store i32 %63, i32* %2, align 4
  br label %181

64:                                               ; preds = %39
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %68 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @stm32_spdifrx_isr, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_name(i32* %72)
  %74 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %75 = call i32 @devm_request_irq(i32* %66, i32 %69, i32 %70, i32 0, i32 %73, %struct.stm32_spdifrx_data* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %2, align 4
  br label %181

84:                                               ; preds = %64
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call %struct.reset_control* @devm_reset_control_get_exclusive(i32* %86, i32* null)
  store %struct.reset_control* %87, %struct.reset_control** %5, align 8
  %88 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %89 = call i64 @IS_ERR(%struct.reset_control* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %93 = call i32 @reset_control_assert(%struct.reset_control* %92)
  %94 = call i32 @udelay(i32 2)
  %95 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %96 = call i32 @reset_control_deassert(%struct.reset_control* %95)
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* @stm32_spdifrx_dai, align 4
  %101 = load i32, i32* @stm32_spdifrx_dai, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = call i32 @devm_snd_soc_register_component(i32* %99, i32* @stm32_spdifrx_component, i32 %100, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %2, align 4
  br label %181

108:                                              ; preds = %97
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %112 = call i32 @stm32_spdifrx_dma_ctrl_register(i32* %110, %struct.stm32_spdifrx_data* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %158

116:                                              ; preds = %108
  store %struct.snd_dmaengine_pcm_config* @stm32_spdifrx_pcm_config, %struct.snd_dmaengine_pcm_config** %6, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.snd_dmaengine_pcm_config*, %struct.snd_dmaengine_pcm_config** %6, align 8
  %120 = call i32 @devm_snd_dmaengine_pcm_register(i32* %118, %struct.snd_dmaengine_pcm_config* %119, i32 0)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* %9, align 4
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %158

128:                                              ; preds = %116
  %129 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %130 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %129, i32 0, i32 2
  %131 = load %struct.reset_control*, %struct.reset_control** %130, align 8
  %132 = load i32, i32* @STM32_SPDIFRX_IDR, align 4
  %133 = call i32 @regmap_read(%struct.reset_control* %131, i32 %132, i64* %8)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %158

137:                                              ; preds = %128
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @SPDIFRX_IPIDR_NUMBER, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %143 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %142, i32 0, i32 2
  %144 = load %struct.reset_control*, %struct.reset_control** %143, align 8
  %145 = load i32, i32* @STM32_SPDIFRX_VERR, align 4
  %146 = call i32 @regmap_read(%struct.reset_control* %144, i32 %145, i64* %7)
  store i32 %146, i32* %9, align 4
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load i32, i32* @SPDIFRX_VERR_MAJ_MASK, align 4
  %150 = load i64, i64* %7, align 8
  %151 = call i32 @FIELD_GET(i32 %149, i64 %150)
  %152 = load i32, i32* @SPDIFRX_VERR_MIN_MASK, align 4
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @FIELD_GET(i32 %152, i64 %153)
  %155 = call i32 @dev_dbg(i32* %148, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %141, %137
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %2, align 4
  br label %181

158:                                              ; preds = %136, %123, %115
  %159 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %160 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %159, i32 0, i32 1
  %161 = load %struct.reset_control*, %struct.reset_control** %160, align 8
  %162 = call i64 @IS_ERR(%struct.reset_control* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %158
  %165 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %166 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %165, i32 0, i32 1
  %167 = load %struct.reset_control*, %struct.reset_control** %166, align 8
  %168 = call i32 @dma_release_channel(%struct.reset_control* %167)
  br label %169

169:                                              ; preds = %164, %158
  %170 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %171 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %4, align 8
  %176 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @snd_dma_free_pages(i64 %177)
  br label %179

179:                                              ; preds = %174, %169
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %156, %106, %78, %56, %37, %16
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.stm32_spdifrx_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_spdifrx_data*) #1

declare dso_local i32 @stm32_spdifrx_parse_of(%struct.platform_device*, %struct.stm32_spdifrx_data*) #1

declare dso_local %struct.reset_control* @devm_regmap_init_mmio_clk(i32*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.stm32_spdifrx_data*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get_exclusive(i32*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @stm32_spdifrx_dma_ctrl_register(i32*, %struct.stm32_spdifrx_data*) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(i32*, %struct.snd_dmaengine_pcm_config*, i32) #1

declare dso_local i32 @regmap_read(%struct.reset_control*, i32, i64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i64) #1

declare dso_local i32 @dma_release_channel(%struct.reset_control*) #1

declare dso_local i32 @snd_dma_free_pages(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
