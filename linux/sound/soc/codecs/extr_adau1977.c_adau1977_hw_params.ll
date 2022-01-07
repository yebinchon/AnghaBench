; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.adau1977 = type { i64, i32, i32, i64, i64 }

@ADAU1977_SYSCLK_SRC_MCLK = common dso_local global i64 0, align 8
@ADAU1977_SAI_CTRL0_FS_MASK = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FMT_RJ_16BIT = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FMT_RJ_24BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_FMT_MASK = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_DATA_WIDTH_16BIT = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_DATA_WIDTH_24BIT = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_BCLKRATE_16 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_BCLKRATE_32 = common dso_local global i32 0, align 4
@ADAU1977_REG_SAI_CTRL1 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_DATA_WIDTH_MASK = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_BCLKRATE_MASK = common dso_local global i32 0, align 4
@ADAU1977_REG_SAI_CTRL0 = common dso_local global i32 0, align 4
@ADAU1977_REG_PLL = common dso_local global i32 0, align 4
@ADAU1977_PLL_MCS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @adau1977_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.adau1977*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %8, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %22 = call %struct.adau1977* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.adau1977* %22, %struct.adau1977** %9, align 8
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_rate(%struct.snd_pcm_hw_params* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @adau1977_lookup_fs(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %4, align 4
  br label %143

31:                                               ; preds = %3
  %32 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %33 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ADAU1977_SYSCLK_SRC_MCLK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @adau1977_lookup_mcs(%struct.adau1977* %38, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %4, align 4
  br label %143

46:                                               ; preds = %37
  br label %48

47:                                               ; preds = %31
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* @ADAU1977_SAI_CTRL0_FS_MASK, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %52 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %48
  %56 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %57 = call i32 @params_width(%struct.snd_pcm_hw_params* %56)
  switch i32 %57, label %66 [
    i32 16, label %58
    i32 24, label %62
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_RJ_16BIT, align 4
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %69

62:                                               ; preds = %55
  %63 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_RJ_24BIT, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %143

69:                                               ; preds = %62, %58
  %70 = load i32, i32* @ADAU1977_SAI_CTRL0_FMT_MASK, align 4
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %69, %48
  %74 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %75 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %73
  %79 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %80 = call i32 @params_width(%struct.snd_pcm_hw_params* %79)
  switch i32 %80, label %85 [
    i32 16, label %81
    i32 24, label %83
    i32 32, label %83
  ]

81:                                               ; preds = %78
  %82 = load i32, i32* @ADAU1977_SAI_CTRL1_DATA_WIDTH_16BIT, align 4
  store i32 %82, i32* %14, align 4
  store i32 16, i32* %11, align 4
  br label %88

83:                                               ; preds = %78, %78
  %84 = load i32, i32* @ADAU1977_SAI_CTRL1_DATA_WIDTH_24BIT, align 4
  store i32 %84, i32* %14, align 4
  store i32 32, i32* %11, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %143

88:                                               ; preds = %83, %81
  %89 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %90 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %95 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @ADAU1977_SAI_CTRL1_BCLKRATE_16, align 4
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %14, align 4
  br label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @ADAU1977_SAI_CTRL1_BCLKRATE_32, align 4
  %106 = load i32, i32* %14, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %110 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ADAU1977_REG_SAI_CTRL1, align 4
  %113 = load i32, i32* @ADAU1977_SAI_CTRL1_DATA_WIDTH_MASK, align 4
  %114 = load i32, i32* @ADAU1977_SAI_CTRL1_BCLKRATE_MASK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @regmap_update_bits(i32 %111, i32 %112, i32 %115, i32 %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %4, align 4
  br label %143

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %73
  %124 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %125 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ADAU1977_REG_SAI_CTRL0, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %4, align 4
  br label %143

135:                                              ; preds = %123
  %136 = load %struct.adau1977*, %struct.adau1977** %9, align 8
  %137 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ADAU1977_REG_PLL, align 4
  %140 = load i32, i32* @ADAU1977_PLL_MCS_MASK, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @regmap_update_bits(i32 %138, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %135, %133, %120, %85, %66, %44, %29
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.adau1977* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @adau1977_lookup_fs(i32) #1

declare dso_local i32 @adau1977_lookup_mcs(%struct.adau1977*, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
