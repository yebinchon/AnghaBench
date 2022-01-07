; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7213_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@DA7213_DAI_WCLK_POL_INV = common dso_local global i32 0, align 4
@DA7213_DAI_CLK_POL_INV = common dso_local global i32 0, align 4
@DA7213_DAI_FORMAT_I2S_MODE = common dso_local global i32 0, align 4
@DA7213_DAI_FORMAT_LEFT_J = common dso_local global i32 0, align 4
@DA7213_DAI_FORMAT_RIGHT_J = common dso_local global i32 0, align 4
@DA7213_DAI_FORMAT_DSP = common dso_local global i32 0, align 4
@DA7213_DAI_BCLKS_PER_WCLK_64 = common dso_local global i32 0, align 4
@DA7213_DAI_CLK_MODE = common dso_local global i32 0, align 4
@DA7213_DAI_BCLKS_PER_WCLK_MASK = common dso_local global i32 0, align 4
@DA7213_DAI_CLK_POL_MASK = common dso_local global i32 0, align 4
@DA7213_DAI_WCLK_POL_MASK = common dso_local global i32 0, align 4
@DA7213_DAI_CTRL = common dso_local global i32 0, align 4
@DA7213_DAI_FORMAT_MASK = common dso_local global i32 0, align 4
@DA7213_DAI_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @da7213_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7213_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.da7213_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.da7213_priv* %15, %struct.da7213_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %25 [
    i32 138, label %19
    i32 137, label %22
  ]

19:                                               ; preds = %2
  %20 = load %struct.da7213_priv*, %struct.da7213_priv** %7, align 8
  %21 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.da7213_priv*, %struct.da7213_priv** %7, align 8
  %24 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %130

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %78 [
    i32 136, label %32
    i32 133, label %32
    i32 130, label %32
    i32 129, label %55
    i32 128, label %55
  ]

32:                                               ; preds = %28, %28, %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %51 [
    i32 131, label %36
    i32 132, label %37
    i32 134, label %41
    i32 135, label %45
  ]

36:                                               ; preds = %32
  br label %54

37:                                               ; preds = %32
  %38 = load i32, i32* @DA7213_DAI_WCLK_POL_INV, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %54

41:                                               ; preds = %32
  %42 = load i32, i32* @DA7213_DAI_CLK_POL_INV, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %54

45:                                               ; preds = %32
  %46 = load i32, i32* @DA7213_DAI_WCLK_POL_INV, align 4
  %47 = load i32, i32* @DA7213_DAI_CLK_POL_INV, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %54

51:                                               ; preds = %32
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %130

54:                                               ; preds = %45, %41, %37, %36
  br label %81

55:                                               ; preds = %28, %28
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %74 [
    i32 131, label %59
    i32 132, label %63
    i32 134, label %69
    i32 135, label %70
  ]

59:                                               ; preds = %55
  %60 = load i32, i32* @DA7213_DAI_CLK_POL_INV, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %77

63:                                               ; preds = %55
  %64 = load i32, i32* @DA7213_DAI_WCLK_POL_INV, align 4
  %65 = load i32, i32* @DA7213_DAI_CLK_POL_INV, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %77

69:                                               ; preds = %55
  br label %77

70:                                               ; preds = %55
  %71 = load i32, i32* @DA7213_DAI_WCLK_POL_INV, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %77

74:                                               ; preds = %55
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %130

77:                                               ; preds = %70, %69, %63, %59
  br label %81

78:                                               ; preds = %28
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %130

81:                                               ; preds = %77, %54
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %84 = and i32 %82, %83
  switch i32 %84, label %105 [
    i32 136, label %85
    i32 133, label %89
    i32 130, label %93
    i32 129, label %97
    i32 128, label %101
  ]

85:                                               ; preds = %81
  %86 = load i32, i32* @DA7213_DAI_FORMAT_I2S_MODE, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %108

89:                                               ; preds = %81
  %90 = load i32, i32* @DA7213_DAI_FORMAT_LEFT_J, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %108

93:                                               ; preds = %81
  %94 = load i32, i32* @DA7213_DAI_FORMAT_RIGHT_J, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %108

97:                                               ; preds = %81
  %98 = load i32, i32* @DA7213_DAI_FORMAT_DSP, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %108

101:                                              ; preds = %81
  %102 = load i32, i32* @DA7213_DAI_FORMAT_DSP, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %108

105:                                              ; preds = %81
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %130

108:                                              ; preds = %101, %97, %93, %89, %85
  %109 = load i32, i32* @DA7213_DAI_BCLKS_PER_WCLK_64, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %113 = load i32, i32* @DA7213_DAI_CLK_MODE, align 4
  %114 = load i32, i32* @DA7213_DAI_BCLKS_PER_WCLK_MASK, align 4
  %115 = load i32, i32* @DA7213_DAI_CLK_POL_MASK, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @DA7213_DAI_WCLK_POL_MASK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %112, i32 %113, i32 %118, i32 %119)
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %122 = load i32, i32* @DA7213_DAI_CTRL, align 4
  %123 = load i32, i32* @DA7213_DAI_FORMAT_MASK, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %127 = load i32, i32* @DA7213_DAI_OFFSET, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %126, i32 %127, i32 %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %108, %105, %78, %74, %51, %25
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
