; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98927_priv = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"BCLK %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX98927_R0022_PCM_CLK_SETUP = common dso_local global i32 0, align 4
@MAX98927_PCM_CLK_SETUP_BSEL_MASK = common dso_local global i32 0, align 4
@MAX98927_PCM_MODE_CFG_CHANSZ_16 = common dso_local global i32 0, align 4
@MAX98927_PCM_MODE_CFG_CHANSZ_24 = common dso_local global i32 0, align 4
@MAX98927_PCM_MODE_CFG_CHANSZ_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"format unsupported %d\0A\00", align 1
@MAX98927_R0020_PCM_MODE_CFG = common dso_local global i32 0, align 4
@MAX98927_PCM_MODE_CFG_CHANSZ_MASK = common dso_local global i32 0, align 4
@MAX98927_R0018_PCM_RX_EN_A = common dso_local global i32 0, align 4
@MAX98927_R0019_PCM_RX_EN_B = common dso_local global i32 0, align 4
@MAX98927_R001A_PCM_TX_EN_A = common dso_local global i32 0, align 4
@MAX98927_R001B_PCM_TX_EN_B = common dso_local global i32 0, align 4
@MAX98927_R001C_PCM_TX_HIZ_CTRL_A = common dso_local global i32 0, align 4
@MAX98927_R001D_PCM_TX_HIZ_CTRL_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @max98927_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98927_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.max98927_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %12, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %20 = call %struct.max98927_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.max98927_priv* %20, %struct.max98927_priv** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %22 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @max98927_get_bclk_sel(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %5
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %117

39:                                               ; preds = %5
  %40 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %41 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX98927_R0022_PCM_CLK_SETUP, align 4
  %44 = load i32, i32* @MAX98927_PCM_CLK_SETUP_BSEL_MASK, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  switch i32 %47, label %54 [
    i32 16, label %48
    i32 24, label %50
    i32 32, label %52
  ]

48:                                               ; preds = %39
  %49 = load i32, i32* @MAX98927_PCM_MODE_CFG_CHANSZ_16, align 4
  store i32 %49, i32* %15, align 4
  br label %62

50:                                               ; preds = %39
  %51 = load i32, i32* @MAX98927_PCM_MODE_CFG_CHANSZ_24, align 4
  store i32 %51, i32* %15, align 4
  br label %62

52:                                               ; preds = %39
  %53 = load i32, i32* @MAX98927_PCM_MODE_CFG_CHANSZ_32, align 4
  store i32 %53, i32* %15, align 4
  br label %62

54:                                               ; preds = %39
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %117

62:                                               ; preds = %52, %50, %48
  %63 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %64 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MAX98927_R0020_PCM_MODE_CFG, align 4
  %67 = load i32, i32* @MAX98927_PCM_MODE_CFG_CHANSZ_MASK, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %71 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MAX98927_R0018_PCM_RX_EN_A, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 255
  %76 = call i32 @regmap_write(i32 %72, i32 %73, i32 %75)
  %77 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %78 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MAX98927_R0019_PCM_RX_EN_B, align 4
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 65280
  %83 = lshr i32 %82, 8
  %84 = call i32 @regmap_write(i32 %79, i32 %80, i32 %83)
  %85 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %86 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MAX98927_R001A_PCM_TX_EN_A, align 4
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, 255
  %91 = call i32 @regmap_write(i32 %87, i32 %88, i32 %90)
  %92 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %93 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MAX98927_R001B_PCM_TX_EN_B, align 4
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, 65280
  %98 = lshr i32 %97, 8
  %99 = call i32 @regmap_write(i32 %94, i32 %95, i32 %98)
  %100 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %101 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MAX98927_R001C_PCM_TX_HIZ_CTRL_A, align 4
  %104 = load i32, i32* %8, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %105, 255
  %107 = call i32 @regmap_write(i32 %102, i32 %103, i32 %106)
  %108 = load %struct.max98927_priv*, %struct.max98927_priv** %13, align 8
  %109 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MAX98927_R001D_PCM_TX_HIZ_CTRL_B, align 4
  %112 = load i32, i32* %8, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %113, 65280
  %115 = lshr i32 %114, 8
  %116 = call i32 @regmap_write(i32 %110, i32 %111, i32 %115)
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %62, %54, %29
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.max98927_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @max98927_get_bclk_sel(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
