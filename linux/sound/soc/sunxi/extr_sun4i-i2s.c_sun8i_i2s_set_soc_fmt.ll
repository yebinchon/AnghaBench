; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun8i_i2s_set_soc_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun8i_i2s_set_soc_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_i2s = type { i32 }

@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED = common dso_local global i32 0, align 4
@SUN8I_I2S_FMT0_LRCLK_POLARITY_INVERTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_REG = common dso_local global i32 0, align 4
@SUN8I_I2S_FMT0_LRCLK_POLARITY_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_FMT0_BCLK_POLARITY_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_CTRL_MODE_PCM = common dso_local global i32 0, align 4
@SUN8I_I2S_CTRL_MODE_LEFT = common dso_local global i32 0, align 4
@SUN8I_I2S_CTRL_MODE_RIGHT = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_REG = common dso_local global i32 0, align 4
@SUN8I_I2S_CTRL_MODE_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_TX_CHAN_SEL_REG = common dso_local global i32 0, align 4
@SUN8I_I2S_TX_CHAN_OFFSET_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_RX_CHAN_SEL_REG = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_CTRL_BCLK_OUT = common dso_local global i32 0, align 4
@SUN8I_I2S_CTRL_LRCK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_i2s*, i32)* @sun8i_i2s_set_soc_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_i2s_set_soc_fmt(%struct.sun4i_i2s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_i2s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sun4i_i2s* %0, %struct.sun4i_i2s** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %21 [
    i32 133, label %12
    i32 132, label %14
    i32 130, label %18
    i32 129, label %19
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED, align 4
  store i32 %13, i32* %7, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* @SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED, align 4
  %16 = load i32, i32* @SUN8I_I2S_FMT0_LRCLK_POLARITY_INVERTED, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  br label %24

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @SUN8I_I2S_FMT0_LRCLK_POLARITY_INVERTED, align 4
  store i32 %20, i32* %7, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %95

24:                                               ; preds = %19, %18, %14, %12
  %25 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %26 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SUN4I_I2S_FMT0_REG, align 4
  %29 = load i32, i32* @SUN8I_I2S_FMT0_LRCLK_POLARITY_MASK, align 4
  %30 = load i32, i32* @SUN8I_I2S_FMT0_BCLK_POLARITY_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %47 [
    i32 136, label %37
    i32 135, label %39
    i32 134, label %41
    i32 131, label %43
    i32 128, label %45
  ]

37:                                               ; preds = %24
  %38 = load i32, i32* @SUN8I_I2S_CTRL_MODE_PCM, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %50

39:                                               ; preds = %24
  %40 = load i32, i32* @SUN8I_I2S_CTRL_MODE_PCM, align 4
  store i32 %40, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %50

41:                                               ; preds = %24
  %42 = load i32, i32* @SUN8I_I2S_CTRL_MODE_LEFT, align 4
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %50

43:                                               ; preds = %24
  %44 = load i32, i32* @SUN8I_I2S_CTRL_MODE_LEFT, align 4
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %50

45:                                               ; preds = %24
  %46 = load i32, i32* @SUN8I_I2S_CTRL_MODE_RIGHT, align 4
  store i32 %46, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %50

47:                                               ; preds = %24
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %95

50:                                               ; preds = %45, %43, %41, %39, %37
  %51 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %52 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SUN4I_I2S_CTRL_REG, align 4
  %55 = load i32, i32* @SUN8I_I2S_CTRL_MODE_MASK, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %59 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SUN8I_I2S_TX_CHAN_SEL_REG, align 4
  %62 = load i32, i32* @SUN8I_I2S_TX_CHAN_OFFSET_MASK, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @SUN8I_I2S_TX_CHAN_OFFSET(i32 %63)
  %65 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %64)
  %66 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %67 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SUN8I_I2S_RX_CHAN_SEL_REG, align 4
  %70 = load i32, i32* @SUN8I_I2S_TX_CHAN_OFFSET_MASK, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @SUN8I_I2S_TX_CHAN_OFFSET(i32 %71)
  %73 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %82 [
    i32 137, label %77
    i32 138, label %81
  ]

77:                                               ; preds = %50
  %78 = load i32, i32* @SUN8I_I2S_CTRL_BCLK_OUT, align 4
  %79 = load i32, i32* @SUN8I_I2S_CTRL_LRCK_OUT, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %7, align 4
  br label %85

81:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %85

82:                                               ; preds = %50
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %95

85:                                               ; preds = %81, %77
  %86 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %87 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SUN4I_I2S_CTRL_REG, align 4
  %90 = load i32, i32* @SUN8I_I2S_CTRL_BCLK_OUT, align 4
  %91 = load i32, i32* @SUN8I_I2S_CTRL_LRCK_OUT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %92, i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %85, %82, %47, %21
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN8I_I2S_TX_CHAN_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
