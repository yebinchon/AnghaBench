; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ep93xx_i2s_info = type { i32 }

@EP93XX_I2S_RXCLKCFG = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EP93XX_I2S_CLKCFG_REL = common dso_local global i32 0, align 4
@EP93XX_I2S_RXLINCTRLDATA_R_JUST = common dso_local global i32 0, align 4
@EP93XX_I2S_TXLINCTRLDATA_R_JUST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EP93XX_I2S_CLKCFG_MASTER = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@EP93XX_I2S_CLKCFG_CKP = common dso_local global i32 0, align 4
@EP93XX_I2S_CLKCFG_LRS = common dso_local global i32 0, align 4
@EP93XX_I2S_TXCLKCFG = common dso_local global i32 0, align 4
@EP93XX_I2S_RXLINCTRLDATA = common dso_local global i32 0, align 4
@EP93XX_I2S_TXLINCTRLDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ep93xx_i2s_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_i2s_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ep93xx_i2s_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = call %struct.ep93xx_i2s_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.ep93xx_i2s_info* %11, %struct.ep93xx_i2s_info** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %6, align 8
  %13 = load i32, i32* @EP93XX_I2S_RXCLKCFG, align 4
  %14 = call i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %38 [
    i32 134, label %18
    i32 131, label %22
    i32 128, label %27
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @EP93XX_I2S_CLKCFG_REL, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load i32, i32* @EP93XX_I2S_CLKCFG_REL, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %41

27:                                               ; preds = %2
  %28 = load i32, i32* @EP93XX_I2S_CLKCFG_REL, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @EP93XX_I2S_RXLINCTRLDATA_R_JUST, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @EP93XX_I2S_TXLINCTRLDATA_R_JUST, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %27, %22, %18
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %54 [
    i32 135, label %45
    i32 136, label %49
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @EP93XX_I2S_CLKCFG_MASTER, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %57

49:                                               ; preds = %41
  %50 = load i32, i32* @EP93XX_I2S_CLKCFG_MASTER, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %107

57:                                               ; preds = %49, %45
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %90 [
    i32 129, label %61
    i32 130, label %68
    i32 132, label %76
    i32 133, label %84
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @EP93XX_I2S_CLKCFG_CKP, align 4
  %63 = load i32, i32* @EP93XX_I2S_CLKCFG_LRS, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %90

68:                                               ; preds = %57
  %69 = load i32, i32* @EP93XX_I2S_CLKCFG_CKP, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @EP93XX_I2S_CLKCFG_LRS, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %90

76:                                               ; preds = %57
  %77 = load i32, i32* @EP93XX_I2S_CLKCFG_CKP, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @EP93XX_I2S_CLKCFG_LRS, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %90

84:                                               ; preds = %57
  %85 = load i32, i32* @EP93XX_I2S_CLKCFG_CKP, align 4
  %86 = load i32, i32* @EP93XX_I2S_CLKCFG_LRS, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %57, %84, %76, %68, %61
  %91 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %6, align 8
  %92 = load i32, i32* @EP93XX_I2S_RXCLKCFG, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %91, i32 %92, i32 %93)
  %95 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %6, align 8
  %96 = load i32, i32* @EP93XX_I2S_TXCLKCFG, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %95, i32 %96, i32 %97)
  %99 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %6, align 8
  %100 = load i32, i32* @EP93XX_I2S_RXLINCTRLDATA, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %99, i32 %100, i32 %101)
  %103 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %6, align 8
  %104 = load i32, i32* @EP93XX_I2S_TXLINCTRLDATA, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %103, i32 %104, i32 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %90, %54, %38
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.ep93xx_i2s_info* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info*, i32) #1

declare dso_local i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
