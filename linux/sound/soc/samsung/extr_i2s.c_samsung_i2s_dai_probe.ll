; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_samsung_i2s_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_samsung_i2s_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.samsung_i2s_priv = type { i32, i32, i64 }
%struct.i2s_dai = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@QUIRK_NEED_RSTCLR = common dso_local global i32 0, align 4
@CON_RSTCLR = common dso_local global i32 0, align 4
@I2SCON = common dso_local global i64 0, align 8
@QUIRK_SUPPORTS_IDMA = common dso_local global i32 0, align 4
@FIC_TXFLUSH = common dso_local global i32 0, align 4
@FIC_RXFLUSH = common dso_local global i32 0, align 4
@SAMSUNG_I2S_CDCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @samsung_i2s_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_i2s_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.samsung_i2s_priv*, align 8
  %4 = alloca %struct.i2s_dai*, align 8
  %5 = alloca %struct.i2s_dai*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %8 = call %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.samsung_i2s_priv* %8, %struct.samsung_i2s_priv** %3, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %10 = call %struct.i2s_dai* @to_info(%struct.snd_soc_dai* %9)
  store %struct.i2s_dai* %10, %struct.i2s_dai** %4, align 8
  %11 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %12 = call %struct.i2s_dai* @get_other_dai(%struct.i2s_dai* %11)
  store %struct.i2s_dai* %12, %struct.i2s_dai** %5, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm_runtime_get_sync(i32 %15)
  %17 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %18 = call i64 @is_secondary(%struct.i2s_dai* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %22 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %23 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %22, i32 0, i32 4
  %24 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %21, i32* %23, i32* null)
  br label %63

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %27 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %28 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %27, i32 0, i32 4
  %29 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %30 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %29, i32 0, i32 3
  %31 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %26, i32* %28, i32* %30)
  %32 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %33 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @QUIRK_NEED_RSTCLR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %25
  %39 = load i32, i32* @CON_RSTCLR, align 4
  %40 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %41 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @I2SCON, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  br label %46

46:                                               ; preds = %38, %25
  %47 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %48 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @QUIRK_SUPPORTS_IDMA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %55 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.i2s_dai*, %struct.i2s_dai** %5, align 8
  %58 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @idma_reg_addr_init(i64 %56, i32 %60)
  br label %62

62:                                               ; preds = %53, %46
  br label %63

63:                                               ; preds = %62, %20
  %64 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %65 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %67 = getelementptr inbounds %struct.i2s_dai, %struct.i2s_dai* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %69 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %68, i32 0, i32 1
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %73 = call i32 @i2s_txctrl(%struct.i2s_dai* %72, i32 0)
  %74 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %75 = call i32 @i2s_rxctrl(%struct.i2s_dai* %74, i32 0)
  %76 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %77 = load i32, i32* @FIC_TXFLUSH, align 4
  %78 = call i32 @i2s_fifo(%struct.i2s_dai* %76, i32 %77)
  %79 = load %struct.i2s_dai*, %struct.i2s_dai** %5, align 8
  %80 = load i32, i32* @FIC_TXFLUSH, align 4
  %81 = call i32 @i2s_fifo(%struct.i2s_dai* %79, i32 %80)
  %82 = load %struct.i2s_dai*, %struct.i2s_dai** %4, align 8
  %83 = load i32, i32* @FIC_RXFLUSH, align 4
  %84 = call i32 @i2s_fifo(%struct.i2s_dai* %82, i32 %83)
  %85 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %86 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %85, i32 0, i32 1
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.i2s_dai*, %struct.i2s_dai** %5, align 8
  %90 = call i32 @is_opened(%struct.i2s_dai* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %63
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %94 = load i32, i32* @SAMSUNG_I2S_CDCLK, align 4
  %95 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %96 = call i32 @i2s_set_sysclk(%struct.snd_soc_dai* %93, i32 %94, i32 0, i32 %95)
  br label %97

97:                                               ; preds = %92, %63
  %98 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pm_runtime_put(i32 %100)
  ret i32 0
}

declare dso_local %struct.samsung_i2s_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @to_info(%struct.snd_soc_dai*) #1

declare dso_local %struct.i2s_dai* @get_other_dai(%struct.i2s_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @is_secondary(%struct.i2s_dai*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @idma_reg_addr_init(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i2s_txctrl(%struct.i2s_dai*, i32) #1

declare dso_local i32 @i2s_rxctrl(%struct.i2s_dai*, i32) #1

declare dso_local i32 @i2s_fifo(%struct.i2s_dai*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @is_opened(%struct.i2s_dai*) #1

declare dso_local i32 @i2s_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
