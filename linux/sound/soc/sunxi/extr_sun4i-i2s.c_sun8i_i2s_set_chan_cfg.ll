; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun8i_i2s_set_chan_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun8i_i2s_set_chan_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_i2s = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SUN8I_I2S_TX_CHAN_MAP_REG = common dso_local global i32 0, align 4
@SUN8I_I2S_RX_CHAN_MAP_REG = common dso_local global i32 0, align 4
@SUN8I_I2S_TX_CHAN_SEL_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_CHAN_SEL_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_RX_CHAN_SEL_REG = common dso_local global i32 0, align 4
@SUN8I_I2S_CHAN_CFG_REG = common dso_local global i32 0, align 4
@SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_REG = common dso_local global i32 0, align 4
@SUN8I_I2S_FMT0_LRCK_PERIOD_MASK = common dso_local global i32 0, align 4
@SUN8I_I2S_TX_CHAN_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_i2s*, %struct.snd_pcm_hw_params*)* @sun8i_i2s_set_chan_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_i2s_set_chan_cfg(%struct.sun4i_i2s* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_i2s*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sun4i_i2s* %0, %struct.sun4i_i2s** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %10 = call i32 @params_channels(%struct.snd_pcm_hw_params* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %13 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %18 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %22 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SUN8I_I2S_TX_CHAN_MAP_REG, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 1985229328)
  %26 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %27 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SUN8I_I2S_RX_CHAN_MAP_REG, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 1985229328)
  %31 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %32 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SUN8I_I2S_TX_CHAN_SEL_REG, align 4
  %35 = load i32, i32* @SUN4I_I2S_CHAN_SEL_MASK, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @SUN4I_I2S_CHAN_SEL(i32 %36)
  %38 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %37)
  %39 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %40 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SUN8I_I2S_RX_CHAN_SEL_REG, align 4
  %43 = load i32, i32* @SUN4I_I2S_CHAN_SEL_MASK, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @SUN4I_I2S_CHAN_SEL(i32 %44)
  %46 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %45)
  %47 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %48 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SUN8I_I2S_CHAN_CFG_REG, align 4
  %51 = load i32, i32* @SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(i32 %52)
  %54 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %53)
  %55 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %56 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SUN8I_I2S_CHAN_CFG_REG, align 4
  %59 = load i32, i32* @SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(i32 %60)
  %62 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %59, i32 %61)
  %63 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %64 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %67 = and i32 %65, %66
  switch i32 %67, label %76 [
    i32 132, label %68
    i32 131, label %68
    i32 129, label %68
    i32 128, label %68
    i32 130, label %73
  ]

68:                                               ; preds = %20, %20, %20, %20
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %70 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %69)
  %71 = load i32, i32* %7, align 4
  %72 = mul i32 %70, %71
  store i32 %72, i32* %8, align 4
  br label %79

73:                                               ; preds = %20
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %75 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %74)
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %20
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %96

79:                                               ; preds = %73, %68
  %80 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %81 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SUN4I_I2S_FMT0_REG, align 4
  %84 = load i32, i32* @SUN8I_I2S_FMT0_LRCK_PERIOD_MASK, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @SUN8I_I2S_FMT0_LRCK_PERIOD(i32 %85)
  %87 = call i32 @regmap_update_bits(i32 %82, i32 %83, i32 %84, i32 %86)
  %88 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %89 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SUN8I_I2S_TX_CHAN_SEL_REG, align 4
  %92 = load i32, i32* @SUN8I_I2S_TX_CHAN_EN_MASK, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @SUN8I_I2S_TX_CHAN_EN(i32 %93)
  %95 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %92, i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %79, %76
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_I2S_CHAN_SEL(i32) #1

declare dso_local i32 @SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(i32) #1

declare dso_local i32 @SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(i32) #1

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SUN8I_I2S_FMT0_LRCK_PERIOD(i32) #1

declare dso_local i32 @SUN8I_I2S_TX_CHAN_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
