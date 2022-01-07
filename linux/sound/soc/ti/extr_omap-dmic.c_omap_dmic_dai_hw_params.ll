; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.omap_dmic = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"no valid divider for %dHz from %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OMAP_DMIC_UP3_ENABLE = common dso_local global i64 0, align 8
@OMAP_DMIC_UP2_ENABLE = common dso_local global i64 0, align 8
@OMAP_DMIC_UP1_ENABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid number of legacy channels\0A\00", align 1
@OMAP_DMIC_THRES_MAX = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @omap_dmic_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dmic_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.omap_dmic*, align 8
  %9 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = call %struct.omap_dmic* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.omap_dmic* %12, %struct.omap_dmic** %8, align 8
  %13 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %15 = call i32 @params_rate(%struct.snd_pcm_hw_params* %14)
  %16 = call i64 @omap_dmic_select_divider(%struct.omap_dmic* %13, i32 %15)
  %17 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %18 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %20 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %25 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %28 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %31 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %90

36:                                               ; preds = %3
  %37 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %38 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %40 = call i32 @params_channels(%struct.snd_pcm_hw_params* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %60 [
    i32 6, label %42
    i32 4, label %48
    i32 2, label %54
  ]

42:                                               ; preds = %36
  %43 = load i64, i64* @OMAP_DMIC_UP3_ENABLE, align 8
  %44 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %45 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %36, %42
  %49 = load i64, i64* @OMAP_DMIC_UP2_ENABLE, align 8
  %50 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %51 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = or i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %36, %48
  %55 = load i64, i64* @OMAP_DMIC_UP1_ENABLE, align 8
  %56 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %57 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %67

60:                                               ; preds = %36
  %61 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %62 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %90

67:                                               ; preds = %54
  %68 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %70 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %68, %struct.snd_pcm_substream* %69)
  store %struct.snd_dmaengine_dai_dma_data* %70, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %71 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %72 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %9, align 8
  %77 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @OMAP_DMIC_THRES_MAX, align 4
  %79 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %80 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %78, %81
  %83 = load i32, i32* @USEC_PER_SEC, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %86 = call i32 @params_rate(%struct.snd_pcm_hw_params* %85)
  %87 = sdiv i32 %84, %86
  %88 = load %struct.omap_dmic*, %struct.omap_dmic** %8, align 8
  %89 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %67, %60, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.omap_dmic* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @omap_dmic_select_divider(%struct.omap_dmic*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
