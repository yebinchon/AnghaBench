; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_set_soc_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_set_soc_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_i2s = type { i32 }

@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_BCLK_POLARITY_INVERTED = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_LRCLK_POLARITY_INVERTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_LRCLK_POLARITY_MASK = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_BCLK_POLARITY_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_FMT_I2S = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_FMT_LEFT_J = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_FMT_RIGHT_J = common dso_local global i32 0, align 4
@SUN4I_I2S_FMT0_FMT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_MODE_MASTER = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_MODE_SLAVE = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_i2s*, i32)* @sun4i_i2s_set_soc_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_i2s_set_soc_fmt(%struct.sun4i_i2s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_i2s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sun4i_i2s* %0, %struct.sun4i_i2s** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %19 [
    i32 133, label %10
    i32 132, label %14
    i32 130, label %16
    i32 129, label %18
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @SUN4I_I2S_FMT0_BCLK_POLARITY_INVERTED, align 4
  %12 = load i32, i32* @SUN4I_I2S_FMT0_LRCLK_POLARITY_INVERTED, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @SUN4I_I2S_FMT0_BCLK_POLARITY_INVERTED, align 4
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @SUN4I_I2S_FMT0_LRCLK_POLARITY_INVERTED, align 4
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %18, %16, %14, %10
  %23 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %24 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SUN4I_I2S_FMT0_REG, align 4
  %27 = load i32, i32* @SUN4I_I2S_FMT0_LRCLK_POLARITY_MASK, align 4
  %28 = load i32, i32* @SUN4I_I2S_FMT0_BCLK_POLARITY_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %41 [
    i32 134, label %35
    i32 131, label %37
    i32 128, label %39
  ]

35:                                               ; preds = %22
  %36 = load i32, i32* @SUN4I_I2S_FMT0_FMT_I2S, align 4
  store i32 %36, i32* %6, align 4
  br label %44

37:                                               ; preds = %22
  %38 = load i32, i32* @SUN4I_I2S_FMT0_FMT_LEFT_J, align 4
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %22
  %40 = load i32, i32* @SUN4I_I2S_FMT0_FMT_RIGHT_J, align 4
  store i32 %40, i32* %6, align 4
  br label %44

41:                                               ; preds = %22
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %70

44:                                               ; preds = %39, %37, %35
  %45 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %46 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SUN4I_I2S_FMT0_REG, align 4
  %49 = load i32, i32* @SUN4I_I2S_FMT0_FMT_MASK, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %59 [
    i32 135, label %55
    i32 136, label %57
  ]

55:                                               ; preds = %44
  %56 = load i32, i32* @SUN4I_I2S_CTRL_MODE_MASTER, align 4
  store i32 %56, i32* %6, align 4
  br label %62

57:                                               ; preds = %44
  %58 = load i32, i32* @SUN4I_I2S_CTRL_MODE_SLAVE, align 4
  store i32 %58, i32* %6, align 4
  br label %62

59:                                               ; preds = %44
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %57, %55
  %63 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %4, align 8
  %64 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SUN4I_I2S_CTRL_REG, align 4
  %67 = load i32, i32* @SUN4I_I2S_CTRL_MODE_MASK, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %62, %59, %41, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
