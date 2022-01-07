; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_7__, i64, %struct.snd_soc_dai* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32)*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }

@STM_SAI_DR_REGX = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_UNDEFINED = common dso_local global i32 0, align 4
@SAI_XCR1_RX_TX = common dso_local global i32 0, align 4
@SAI_SYNC_EXTERNAL = common dso_local global i64 0, align 8
@SAI_XCR1_SYNCEN_MASK = common dso_local global i32 0, align 4
@STM_SAI_CR1_REGX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @stm32_sai_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.stm32_sai_sub_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.stm32_sai_sub_data* @dev_get_drvdata(i32 %10)
  store %struct.stm32_sai_sub_data* %11, %struct.stm32_sai_sub_data** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %13 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %13, i32 0, i32 8
  store %struct.snd_soc_dai* %12, %struct.snd_soc_dai** %14, align 8
  %15 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %16 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STM_SAI_DR_REGX, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i64 %19, i64* %22, align 8
  %23 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %27 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %26, i32 0, i32 5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  %39 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %43 = call i64 @STM_SAI_IS_PLAYBACK(%struct.stm32_sai_sub_data* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %47 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %48 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %47, i32 0, i32 6
  %49 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %46, %struct.TYPE_7__* %48, %struct.TYPE_7__* null)
  br label %55

50:                                               ; preds = %37
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %52 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %53 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %52, i32 0, i32 6
  %54 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %51, %struct.TYPE_7__* null, %struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %57 = call i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %116

60:                                               ; preds = %55
  %61 = load i32, i32* @SAI_XCR1_RX_TX, align 4
  store i32 %61, i32* %6, align 4
  %62 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %63 = call i64 @STM_SAI_IS_CAPTURE(%struct.stm32_sai_sub_data* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @SAI_XCR1_RX_TX, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %71 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SAI_SYNC_EXTERNAL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %77 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %76, i32 0, i32 5
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %79, align 8
  %81 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %82 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %81, i32 0, i32 5
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %85 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %88 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %91 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 %80(%struct.TYPE_6__* %83, i32 %86, i32 %89, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %75
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %116

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98, %69
  %100 = load i32, i32* @SAI_XCR1_SYNCEN_MASK, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %104 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @SAI_XCR1_SYNCEN_SET(i64 %105)
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %4, align 8
  %110 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @regmap_update_bits(i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %99, %96, %59
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.stm32_sai_sub_data* @dev_get_drvdata(i32) #1

declare dso_local i64 @STM_SAI_IS_PLAYBACK(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

declare dso_local i64 @STM_SAI_IS_CAPTURE(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @SAI_XCR1_SYNCEN_SET(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
