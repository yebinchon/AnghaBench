; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.stm32_i2s_data = type { i32, i32, i32 }

@I2S_CGFR_I2SSTD_MASK = common dso_local global i32 0, align 4
@I2S_CGFR_CKPOL = common dso_local global i32 0, align 4
@I2S_CGFR_WSINV = common dso_local global i32 0, align 4
@I2S_CGFR_I2SCFG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fmt %x\0A\00", align 1
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@I2S_STD_I2S = common dso_local global i32 0, align 4
@I2S_STD_LEFT_J = common dso_local global i32 0, align 4
@I2S_STD_RIGHT_J = common dso_local global i32 0, align 4
@I2S_STD_DSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported protocol %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported strobing %#x\0A\00", align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@I2S_MS_SLAVE = common dso_local global i32 0, align 4
@I2S_MS_MASTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unsupported mode %#x\0A\00", align 1
@STM32_I2S_CGFR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @stm32_i2s_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_i2s_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.stm32_i2s_data* %10, %struct.stm32_i2s_data** %6, align 8
  %11 = load i32, i32* @I2S_CGFR_I2SSTD_MASK, align 4
  %12 = load i32, i32* @I2S_CGFR_CKPOL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @I2S_CGFR_WSINV, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @I2S_CGFR_I2SCFG_MASK, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %38 [
    i32 134, label %26
    i32 130, label %29
    i32 131, label %32
    i32 135, label %35
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @I2S_STD_I2S, align 4
  %28 = call i32 @I2S_CGFR_I2SSTD_SET(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %48

29:                                               ; preds = %2
  %30 = load i32, i32* @I2S_STD_LEFT_J, align 4
  %31 = call i32 @I2S_CGFR_I2SSTD_SET(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %48

32:                                               ; preds = %2
  %33 = load i32, i32* @I2S_STD_RIGHT_J, align 4
  %34 = call i32 @I2S_CGFR_I2SSTD_SET(i32 %33)
  store i32 %34, i32* %7, align 4
  br label %48

35:                                               ; preds = %2
  %36 = load i32, i32* @I2S_STD_DSP, align 4
  %37 = call i32 @I2S_CGFR_I2SSTD_SET(i32 %36)
  store i32 %37, i32* %7, align 4
  br label %48

38:                                               ; preds = %2
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %111

48:                                               ; preds = %35, %32, %29, %26
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %68 [
    i32 128, label %52
    i32 132, label %53
    i32 129, label %57
    i32 133, label %61
  ]

52:                                               ; preds = %48
  br label %78

53:                                               ; preds = %48
  %54 = load i32, i32* @I2S_CGFR_CKPOL, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %78

57:                                               ; preds = %48
  %58 = load i32, i32* @I2S_CGFR_WSINV, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %78

61:                                               ; preds = %48
  %62 = load i32, i32* @I2S_CGFR_CKPOL, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @I2S_CGFR_WSINV, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %78

68:                                               ; preds = %48
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %111

78:                                               ; preds = %61, %57, %53, %52
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %90 [
    i32 137, label %82
    i32 136, label %86
  ]

82:                                               ; preds = %78
  %83 = load i32, i32* @I2S_MS_SLAVE, align 4
  %84 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %85 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %100

86:                                               ; preds = %78
  %87 = load i32, i32* @I2S_MS_MASTER, align 4
  %88 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %89 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %100

90:                                               ; preds = %78
  %91 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %92 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %111

100:                                              ; preds = %86, %82
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %103 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %6, align 8
  %105 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @STM32_I2S_CGFR_REG, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %100, %90, %68, %38
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @I2S_CGFR_I2SSTD_SET(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
