; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_ahub.c_tegra30_ahub_disable_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_ahub.c_tegra30_ahub_disable_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TEGRA30_AHUB_RXCIF_APBIF_RX0 = common dso_local global i32 0, align 4
@ahub = common dso_local global %struct.TYPE_2__* null, align 8
@TEGRA30_AHUB_CHANNEL_CTRL = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL_STRIDE = common dso_local global i32 0, align 4
@TEGRA30_AHUB_CHANNEL_CTRL_RX_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra30_ahub_disable_rx_fifo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @TEGRA30_AHUB_RXCIF_APBIF_RX0, align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahub, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  %13 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_STRIDE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @tegra30_apbif_read(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @TEGRA30_AHUB_CHANNEL_CTRL_RX_EN, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @tegra30_apbif_write(i32 %24, i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahub, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_put(i32 %29)
  ret i32 0
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @tegra30_apbif_read(i32) #1

declare dso_local i32 @tegra30_apbif_write(i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
