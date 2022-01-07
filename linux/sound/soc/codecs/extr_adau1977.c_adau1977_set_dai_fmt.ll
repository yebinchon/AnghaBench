; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.adau1977 = type { i32, i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@ADAU1977_BLOCK_POWER_SAI_BCLK_EDGE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FMT_I2S = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FMT_LJ = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FMT_RJ_24BIT = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_LRCLK_PULSE = common dso_local global i32 0, align 4
@ADAU1977_BLOCK_POWER_SAI_LR_POL = common dso_local global i32 0, align 4
@ADAU1977_REG_BLOCK_POWER_SAI = common dso_local global i32 0, align 4
@ADAU1977_REG_SAI_CTRL0 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FMT_MASK = common dso_local global i32 0, align 4
@ADAU1977_REG_SAI_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @adau1977_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adau1977*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.adau1977* @snd_soc_component_get_drvdata(i32 %14)
  store %struct.adau1977* %15, %struct.adau1977** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %28 [
    i32 137, label %19
    i32 138, label %22
  ]

19:                                               ; preds = %2
  %20 = load %struct.adau1977*, %struct.adau1977** %6, align 8
  %21 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @ADAU1977_SAI_CTRL1_MASTER, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.adau1977*, %struct.adau1977** %6, align 8
  %27 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %136

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %45 [
    i32 129, label %35
    i32 132, label %36
    i32 130, label %40
    i32 133, label %41
  ]

35:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %48

36:                                               ; preds = %31
  %37 = load i32, i32* @ADAU1977_BLOCK_POWER_SAI_BCLK_EDGE, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

40:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %48

41:                                               ; preds = %31
  %42 = load i32, i32* @ADAU1977_BLOCK_POWER_SAI_BCLK_EDGE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %136

48:                                               ; preds = %41, %40, %36, %35
  %49 = load %struct.adau1977*, %struct.adau1977** %6, align 8
  %50 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %90 [
    i32 134, label %54
    i32 131, label %58
    i32 128, label %66
    i32 136, label %76
    i32 135, label %83
  ]

54:                                               ; preds = %48
  %55 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_I2S, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %93

58:                                               ; preds = %48
  %59 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_LJ, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %10, align 4
  br label %93

66:                                               ; preds = %48
  %67 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_RJ_24BIT, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.adau1977*, %struct.adau1977** %6, align 8
  %71 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %10, align 4
  br label %93

76:                                               ; preds = %48
  %77 = load i32, i32* @ADAU1977_SAI_CTRL1_LRCLK_PULSE, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_I2S, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %93

83:                                               ; preds = %48
  %84 = load i32, i32* @ADAU1977_SAI_CTRL1_LRCLK_PULSE, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_LJ, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %93

90:                                               ; preds = %48
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %136

93:                                               ; preds = %83, %76, %66, %58, %54
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @ADAU1977_BLOCK_POWER_SAI_LR_POL, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.adau1977*, %struct.adau1977** %6, align 8
  %102 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ADAU1977_REG_BLOCK_POWER_SAI, align 4
  %105 = load i32, i32* @ADAU1977_BLOCK_POWER_SAI_LR_POL, align 4
  %106 = load i32, i32* @ADAU1977_BLOCK_POWER_SAI_BCLK_EDGE, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %136

114:                                              ; preds = %100
  %115 = load %struct.adau1977*, %struct.adau1977** %6, align 8
  %116 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ADAU1977_REG_SAI_CTRL0, align 4
  %119 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_MASK, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @regmap_update_bits(i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  br label %136

126:                                              ; preds = %114
  %127 = load %struct.adau1977*, %struct.adau1977** %6, align 8
  %128 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ADAU1977_REG_SAI_CTRL1, align 4
  %131 = load i32, i32* @ADAU1977_SAI_CTRL1_MASTER, align 4
  %132 = load i32, i32* @ADAU1977_SAI_CTRL1_LRCLK_PULSE, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @regmap_update_bits(i32 %129, i32 %130, i32 %133, i32 %134)
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %126, %124, %112, %90, %45, %28
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.adau1977* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
