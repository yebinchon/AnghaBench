; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98925.c_max98925_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max98925_priv = type { i32, i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@MAX98925_DAI_CLK_MODE2 = common dso_local global i32 0, align 4
@M98925_DAI_BSEL_MASK = common dso_local global i32 0, align 4
@M98925_DAI_BSEL_32 = common dso_local global i32 0, align 4
@M98925_DAI_BSEL_48 = common dso_local global i32 0, align 4
@M98925_DAI_BSEL_64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M98925_MDLL_MULT_MCLKx16 = common dso_local global i32 0, align 4
@M98925_MDLL_MULT_MCLKx8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unsupported sysclk %d\0A\00", align 1
@M98925_DAI_SR_MASK = common dso_local global i32 0, align 4
@M98925_DAI_SR_SHIFT = common dso_local global i32 0, align 4
@MAX98925_DAI_CLK_DIV_M_MSBS = common dso_local global i32 0, align 4
@MAX98925_DAI_CLK_DIV_M_LSBS = common dso_local global i32 0, align 4
@MAX98925_DAI_CLK_DIV_N_MSBS = common dso_local global i32 0, align 4
@MAX98925_DAI_CLK_DIV_N_LSBS = common dso_local global i32 0, align 4
@MAX98925_DAI_CLK_MODE1 = common dso_local global i32 0, align 4
@M98925_MDLL_MULT_MASK = common dso_local global i32 0, align 4
@M98925_MDLL_MULT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max98925_priv*, %struct.snd_pcm_hw_params*)* @max98925_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98925_set_clock(%struct.max98925_priv* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max98925_priv*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.max98925_priv* %0, %struct.max98925_priv** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %15 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %14, i32 0, i32 3
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %11, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %20 = call i32 @params_channels(%struct.snd_pcm_hw_params* %19)
  %21 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %22 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %50 [
    i32 32, label %26
    i32 48, label %34
    i32 64, label %42
  ]

26:                                               ; preds = %2
  %27 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %28 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MAX98925_DAI_CLK_MODE2, align 4
  %31 = load i32, i32* @M98925_DAI_BSEL_MASK, align 4
  %32 = load i32, i32* @M98925_DAI_BSEL_32, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  br label %53

34:                                               ; preds = %2
  %35 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %36 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAX98925_DAI_CLK_MODE2, align 4
  %39 = load i32, i32* @M98925_DAI_BSEL_MASK, align 4
  %40 = load i32, i32* @M98925_DAI_BSEL_48, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  br label %53

42:                                               ; preds = %2
  %43 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %44 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MAX98925_DAI_CLK_MODE2, align 4
  %47 = load i32, i32* @M98925_DAI_BSEL_MASK, align 4
  %48 = load i32, i32* @M98925_DAI_BSEL_64, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %48)
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %133

53:                                               ; preds = %42, %34, %26
  %54 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %55 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %65 [
    i32 6000000, label %57
    i32 11289600, label %59
    i32 12000000, label %61
    i32 12288000, label %63
  ]

57:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  %58 = load i32, i32* @M98925_MDLL_MULT_MCLKx16, align 4
  store i32 %58, i32* %8, align 4
  br label %77

59:                                               ; preds = %53
  store i32 1, i32* %7, align 4
  %60 = load i32, i32* @M98925_MDLL_MULT_MCLKx8, align 4
  store i32 %60, i32* %8, align 4
  br label %77

61:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  %62 = load i32, i32* @M98925_MDLL_MULT_MCLKx8, align 4
  store i32 %62, i32* %8, align 4
  br label %77

63:                                               ; preds = %53
  store i32 2, i32* %7, align 4
  %64 = load i32, i32* @M98925_MDLL_MULT_MCLKx8, align 4
  store i32 %64, i32* %8, align 4
  br label %77

65:                                               ; preds = %53
  %66 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %67 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %66, i32 0, i32 3
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %67, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %72 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_info(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %133

77:                                               ; preds = %63, %61, %59, %57
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @max98925_rate_value(%struct.snd_soc_component* %78, i32 %79, i32 %80, i32* %6, i32* %9, i32* %10)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %133

86:                                               ; preds = %77
  %87 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %88 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MAX98925_DAI_CLK_MODE2, align 4
  %91 = load i32, i32* @M98925_DAI_SR_MASK, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @M98925_DAI_SR_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %94)
  %96 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %97 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MAX98925_DAI_CLK_DIV_M_MSBS, align 4
  %100 = load i32, i32* %10, align 4
  %101 = lshr i32 %100, 8
  %102 = call i32 @regmap_write(i32 %98, i32 %99, i32 %101)
  %103 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %104 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MAX98925_DAI_CLK_DIV_M_LSBS, align 4
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, 255
  %109 = call i32 @regmap_write(i32 %105, i32 %106, i32 %108)
  %110 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %111 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @MAX98925_DAI_CLK_DIV_N_MSBS, align 4
  %114 = load i32, i32* %9, align 4
  %115 = lshr i32 %114, 8
  %116 = call i32 @regmap_write(i32 %112, i32 %113, i32 %115)
  %117 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %118 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MAX98925_DAI_CLK_DIV_N_LSBS, align 4
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 255
  %123 = call i32 @regmap_write(i32 %119, i32 %120, i32 %122)
  %124 = load %struct.max98925_priv*, %struct.max98925_priv** %4, align 8
  %125 = getelementptr inbounds %struct.max98925_priv, %struct.max98925_priv* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MAX98925_DAI_CLK_MODE1, align 4
  %128 = load i32, i32* @M98925_MDLL_MULT_MASK, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @M98925_MDLL_MULT_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %128, i32 %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %86, %83, %65, %50
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i64 @max98925_rate_value(%struct.snd_soc_component*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
