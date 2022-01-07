; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1373.c_adau1373_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.adau1373 = type { i32, %struct.adau1373_dai* }
%struct.adau1373_dai = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ADAU1373_DAI_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ADAU1373_DAI_FORMAT_I2S = common dso_local global i32 0, align 4
@ADAU1373_DAI_FORMAT_LEFT_J = common dso_local global i32 0, align 4
@ADAU1373_DAI_FORMAT_RIGHT_J = common dso_local global i32 0, align 4
@ADAU1373_DAI_FORMAT_DSP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@ADAU1373_DAI_INVERT_BCLK = common dso_local global i32 0, align 4
@ADAU1373_DAI_INVERT_LRCLK = common dso_local global i32 0, align 4
@ADAU1373_DAI_WLEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @adau1373_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1373_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.adau1373*, align 8
  %8 = alloca %struct.adau1373_dai*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.adau1373* %14, %struct.adau1373** %7, align 8
  %15 = load %struct.adau1373*, %struct.adau1373** %7, align 8
  %16 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %15, i32 0, i32 1
  %17 = load %struct.adau1373_dai*, %struct.adau1373_dai** %16, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %17, i64 %20
  store %struct.adau1373_dai* %21, %struct.adau1373_dai** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %32 [
    i32 137, label %25
    i32 136, label %29
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @ADAU1373_DAI_MASTER, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.adau1373_dai*, %struct.adau1373_dai** %8, align 8
  %28 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %35

29:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %30 = load %struct.adau1373_dai*, %struct.adau1373_dai** %8, align 8
  %31 = getelementptr inbounds %struct.adau1373_dai, %struct.adau1373_dai* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %92

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %55 [
    i32 134, label %39
    i32 131, label %43
    i32 128, label %47
    i32 135, label %51
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* @ADAU1373_DAI_FORMAT_I2S, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %58

43:                                               ; preds = %35
  %44 = load i32, i32* @ADAU1373_DAI_FORMAT_LEFT_J, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %58

47:                                               ; preds = %35
  %48 = load i32, i32* @ADAU1373_DAI_FORMAT_RIGHT_J, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %58

51:                                               ; preds = %35
  %52 = load i32, i32* @ADAU1373_DAI_FORMAT_DSP, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %58

55:                                               ; preds = %35
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %92

58:                                               ; preds = %51, %47, %43, %39
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %77 [
    i32 129, label %62
    i32 132, label %63
    i32 130, label %67
    i32 133, label %71
  ]

62:                                               ; preds = %58
  br label %80

63:                                               ; preds = %58
  %64 = load i32, i32* @ADAU1373_DAI_INVERT_BCLK, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %80

67:                                               ; preds = %58
  %68 = load i32, i32* @ADAU1373_DAI_INVERT_LRCLK, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %80

71:                                               ; preds = %58
  %72 = load i32, i32* @ADAU1373_DAI_INVERT_LRCLK, align 4
  %73 = load i32, i32* @ADAU1373_DAI_INVERT_BCLK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %80

77:                                               ; preds = %58
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %92

80:                                               ; preds = %71, %67, %63, %62
  %81 = load %struct.adau1373*, %struct.adau1373** %7, align 8
  %82 = getelementptr inbounds %struct.adau1373, %struct.adau1373* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %85 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @ADAU1373_DAI(i64 %86)
  %88 = load i32, i32* @ADAU1373_DAI_WLEN_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @regmap_update_bits(i32 %83, i32 %87, i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %77, %55, %32
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.adau1373* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADAU1373_DAI(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
