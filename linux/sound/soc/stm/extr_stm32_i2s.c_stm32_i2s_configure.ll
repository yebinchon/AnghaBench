; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_configure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.stm32_i2s_data = type { i32 }

@I2S_I2SMOD_DATLEN_16 = common dso_local global i32 0, align 4
@I2S_CGFR_DATLEN_MASK = common dso_local global i32 0, align 4
@I2S_CGFR_CHLEN = common dso_local global i32 0, align 4
@I2S_I2SMOD_DATLEN_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unexpected format %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2S_I2SMOD_FD_SLAVE = common dso_local global i32 0, align 4
@I2S_CGFR_FIXCH = common dso_local global i32 0, align 4
@I2S_I2SMOD_FD_MASTER = common dso_local global i32 0, align 4
@I2S_CGFR_I2SCFG_MASK = common dso_local global i32 0, align 4
@STM32_I2S_CGFR_REG = common dso_local global i32 0, align 4
@STM32_I2S_FIFO_SIZE = common dso_local global i32 0, align 4
@I2S_FIFO_TH_ONE_QUARTER = common dso_local global i32 0, align 4
@STM32_I2S_CFG1_REG = common dso_local global i32 0, align 4
@I2S_CFG1_FTHVL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*, %struct.snd_pcm_substream*)* @stm32_i2s_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_configure(%struct.snd_soc_dai* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.stm32_i2s_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %16 = call %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.stm32_i2s_data* %16, %struct.stm32_i2s_data** %8, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_width(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %34 [
    i32 16, label %20
    i32 32, label %26
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @I2S_I2SMOD_DATLEN_16, align 4
  %22 = call i32 @I2S_CGFR_DATLEN_SET(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @I2S_CGFR_DATLEN_MASK, align 4
  %24 = load i32, i32* @I2S_CGFR_CHLEN, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %11, align 4
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* @I2S_I2SMOD_DATLEN_32, align 4
  %28 = call i32 @I2S_CGFR_DATLEN_SET(i32 %27)
  %29 = load i32, i32* @I2S_CGFR_CHLEN, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @I2S_CGFR_DATLEN_MASK, align 4
  %32 = load i32, i32* @I2S_CGFR_CHLEN, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %11, align 4
  br label %42

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %92

42:                                               ; preds = %26, %20
  %43 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %44 = call i64 @STM32_I2S_IS_SLAVE(%struct.stm32_i2s_data* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* @I2S_I2SMOD_FD_SLAVE, align 4
  %48 = call i32 @I2S_CGFR_I2SCFG_SET(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @I2S_CGFR_FIXCH, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @I2S_CGFR_FIXCH, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %62

57:                                               ; preds = %42
  %58 = load i32, i32* @I2S_I2SMOD_FD_MASTER, align 4
  %59 = call i32 @I2S_CGFR_I2SCFG_SET(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %57, %46
  %63 = load i32, i32* @I2S_CGFR_I2SCFG_MASK, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %67 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @STM32_I2S_CGFR_REG, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %92

77:                                               ; preds = %62
  %78 = load i32, i32* @STM32_I2S_FIFO_SIZE, align 4
  %79 = load i32, i32* @I2S_FIFO_TH_ONE_QUARTER, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sdiv i32 %80, 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub i32 %82, 1
  %84 = call i32 @I2S_CFG1_FTHVL_SET(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %8, align 8
  %86 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @STM32_I2S_CFG1_REG, align 4
  %89 = load i32, i32* @I2S_CFG1_FTHVL_MASK, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @regmap_update_bits(i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %77, %75, %34
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.stm32_i2s_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @I2S_CGFR_DATLEN_SET(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @STM32_I2S_IS_SLAVE(%struct.stm32_i2s_data*) #1

declare dso_local i32 @I2S_CGFR_I2SCFG_SET(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @I2S_CFG1_FTHVL_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
