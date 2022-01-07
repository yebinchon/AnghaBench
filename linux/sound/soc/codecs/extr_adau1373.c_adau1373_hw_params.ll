; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.adau1373 = type { i32, %struct.adau1373_dai* }
%struct.adau1373_dai = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADAU1373_BCLKDIV_SR_MASK = common dso_local global i32 0, align 4
@ADAU1373_BCLKDIV_BCLK_MASK = common dso_local global i32 0, align 4
@ADAU1373_BCLKDIV_64 = common dso_local global i32 0, align 4
@ADAU1373_DAI_WLEN_16 = common dso_local global i32 0, align 4
@ADAU1373_DAI_WLEN_20 = common dso_local global i32 0, align 4
@ADAU1373_DAI_WLEN_24 = common dso_local global i32 0, align 4
@ADAU1373_DAI_WLEN_32 = common dso_local global i32 0, align 4
@ADAU1373_DAI_WLEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @adau1373_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1373_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.adau1373*, align 8
  %10 = alloca %struct.adau1373_dai*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.adau1373* %18, %struct.adau1373** %9, align 8
  %19 = load %struct.adau1373*, %struct.adau1373** %9, align 8
  %20 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %19, i32 0, i32 1
  %21 = load %struct.adau1373_dai*, %struct.adau1373_dai** %20, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %21, i64 %24
  store %struct.adau1373_dai* %25, %struct.adau1373_dai** %10, align 8
  %26 = load %struct.adau1373_dai*, %struct.adau1373_dai** %10, align 8
  %27 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = call i32 @params_rate(%struct.snd_pcm_hw_params* %30)
  %32 = urem i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %97

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %40 = call i32 @params_rate(%struct.snd_pcm_hw_params* %39)
  %41 = udiv i32 %38, %40
  switch i32 %41, label %49 [
    i32 1024, label %42
    i32 1536, label %43
    i32 2048, label %44
    i32 3072, label %45
    i32 4096, label %46
    i32 6144, label %47
    i32 5632, label %48
  ]

42:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %52

43:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  br label %52

44:                                               ; preds = %37
  store i32 2, i32* %11, align 4
  br label %52

45:                                               ; preds = %37
  store i32 3, i32* %11, align 4
  br label %52

46:                                               ; preds = %37
  store i32 4, i32* %11, align 4
  br label %52

47:                                               ; preds = %37
  store i32 5, i32* %11, align 4
  br label %52

48:                                               ; preds = %37
  store i32 6, i32* %11, align 4
  br label %52

49:                                               ; preds = %37
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %97

52:                                               ; preds = %48, %47, %46, %45, %44, %43, %42
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load %struct.adau1373_dai*, %struct.adau1373_dai** %10, align 8
  %57 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.adau1373*, %struct.adau1373** %9, align 8
  %59 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ADAU1373_BCLKDIV(i64 %63)
  %65 = load i32, i32* @ADAU1373_BCLKDIV_SR_MASK, align 4
  %66 = load i32, i32* @ADAU1373_BCLKDIV_BCLK_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = shl i32 %68, 2
  %70 = load i32, i32* @ADAU1373_BCLKDIV_64, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @regmap_update_bits(i32 %60, i32 %64, i32 %67, i32 %71)
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %74 = call i32 @params_width(%struct.snd_pcm_hw_params* %73)
  switch i32 %74, label %83 [
    i32 16, label %75
    i32 20, label %77
    i32 24, label %79
    i32 32, label %81
  ]

75:                                               ; preds = %52
  %76 = load i32, i32* @ADAU1373_DAI_WLEN_16, align 4
  store i32 %76, i32* %13, align 4
  br label %86

77:                                               ; preds = %52
  %78 = load i32, i32* @ADAU1373_DAI_WLEN_20, align 4
  store i32 %78, i32* %13, align 4
  br label %86

79:                                               ; preds = %52
  %80 = load i32, i32* @ADAU1373_DAI_WLEN_24, align 4
  store i32 %80, i32* %13, align 4
  br label %86

81:                                               ; preds = %52
  %82 = load i32, i32* @ADAU1373_DAI_WLEN_32, align 4
  store i32 %82, i32* %13, align 4
  br label %86

83:                                               ; preds = %52
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %97

86:                                               ; preds = %81, %79, %77, %75
  %87 = load %struct.adau1373*, %struct.adau1373** %9, align 8
  %88 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @ADAU1373_DAI(i64 %92)
  %94 = load i32, i32* @ADAU1373_DAI_WLEN_MASK, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @regmap_update_bits(i32 %89, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %86, %83, %49, %34
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADAU1373_BCLKDIV(i64) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ADAU1373_DAI(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
