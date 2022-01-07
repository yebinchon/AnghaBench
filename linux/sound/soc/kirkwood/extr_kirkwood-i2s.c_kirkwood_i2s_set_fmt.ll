; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.kirkwood_dma_data = type { i64 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@KIRKWOOD_I2S_CTL_RJ = common dso_local global i64 0, align 8
@KIRKWOOD_I2S_CTL_LJ = common dso_local global i64 0, align 8
@KIRKWOOD_I2S_CTL_I2S = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KIRKWOOD_I2S_PLAYCTL = common dso_local global i64 0, align 8
@KIRKWOOD_I2S_CTL_JUST_MASK = common dso_local global i64 0, align 8
@KIRKWOOD_I2S_RECCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @kirkwood_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kirkwood_dma_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.kirkwood_dma_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.kirkwood_dma_data* %10, %struct.kirkwood_dma_data** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 129, label %16
    i32 130, label %18
  ]

14:                                               ; preds = %2
  %15 = load i64, i64* @KIRKWOOD_I2S_CTL_RJ, align 8
  store i64 %15, i64* %7, align 8
  br label %23

16:                                               ; preds = %2
  %17 = load i64, i64* @KIRKWOOD_I2S_CTL_LJ, align 8
  store i64 %17, i64* %7, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load i64, i64* @KIRKWOOD_I2S_CTL_I2S, align 8
  store i64 %19, i64* %7, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %64

23:                                               ; preds = %18, %16, %14
  %24 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %25 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KIRKWOOD_I2S_PLAYCTL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @readl(i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* @KIRKWOOD_I2S_CTL_JUST_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %8, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %39 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KIRKWOOD_I2S_PLAYCTL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i64 %37, i64 %42)
  %44 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %45 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KIRKWOOD_I2S_RECCTL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i64 @readl(i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* @KIRKWOOD_I2S_CTL_JUST_MASK, align 8
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %8, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %6, align 8
  %59 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @KIRKWOOD_I2S_RECCTL, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i64 %57, i64 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %23, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.kirkwood_dma_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
