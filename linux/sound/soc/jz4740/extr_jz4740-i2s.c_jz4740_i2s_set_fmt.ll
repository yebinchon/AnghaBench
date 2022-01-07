; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/jz4740/extr_jz4740-i2s.c_jz4740_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.jz4740_i2s = type { i32 }

@JZ_REG_AIC_CONF = common dso_local global i32 0, align 4
@JZ_AIC_CONF_BIT_CLK_MASTER = common dso_local global i32 0, align 4
@JZ_AIC_CONF_SYNC_CLK_MASTER = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@JZ_AIC_I2S_FMT_ENABLE_SYS_CLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@JZ_AIC_I2S_FMT_MSB = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@JZ_REG_AIC_I2S_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @jz4740_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jz4740_i2s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.jz4740_i2s* %10, %struct.jz4740_i2s** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %6, align 8
  %12 = load i32, i32* @JZ_REG_AIC_CONF, align 4
  %13 = call i32 @jz4740_i2s_read(%struct.jz4740_i2s* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @JZ_AIC_CONF_BIT_CLK_MASTER, align 4
  %15 = load i32, i32* @JZ_AIC_CONF_SYNC_CLK_MASTER, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %41 [
    i32 131, label %23
    i32 133, label %32
    i32 132, label %36
    i32 134, label %40
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @JZ_AIC_CONF_BIT_CLK_MASTER, align 4
  %25 = load i32, i32* @JZ_AIC_CONF_SYNC_CLK_MASTER, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @JZ_AIC_I2S_FMT_ENABLE_SYS_CLK, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load i32, i32* @JZ_AIC_CONF_SYNC_CLK_MASTER, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load i32, i32* @JZ_AIC_CONF_BIT_CLK_MASTER, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %44

40:                                               ; preds = %2
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %40, %36, %32, %23
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %53 [
    i32 129, label %48
    i32 130, label %52
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* @JZ_AIC_I2S_FMT_MSB, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %56

52:                                               ; preds = %44
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %73

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %61 [
    i32 128, label %60
  ]

60:                                               ; preds = %56
  br label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %73

64:                                               ; preds = %60
  %65 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %6, align 8
  %66 = load i32, i32* @JZ_REG_AIC_CONF, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %65, i32 %66, i32 %67)
  %69 = load %struct.jz4740_i2s*, %struct.jz4740_i2s** %6, align 8
  %70 = load i32, i32* @JZ_REG_AIC_I2S_FMT, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @jz4740_i2s_write(%struct.jz4740_i2s* %69, i32 %70, i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %64, %61, %53, %41
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.jz4740_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @jz4740_i2s_read(%struct.jz4740_i2s*, i32) #1

declare dso_local i32 @jz4740_i2s_write(%struct.jz4740_i2s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
