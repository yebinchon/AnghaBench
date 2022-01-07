; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_i2s.c_tegra30_i2s_platform_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra30_i2s.c_tegra30_i2s_platform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra30_i2s = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra30_i2s_platform_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra30_i2s_platform_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tegra30_i2s*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.tegra30_i2s* @dev_get_drvdata(i32* %5)
  store %struct.tegra30_i2s* %6, %struct.tegra30_i2s** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @pm_runtime_disable(i32* %8)
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_status_suspended(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @tegra30_i2s_runtime_suspend(i32* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @tegra_pcm_platform_unregister(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @snd_soc_unregister_component(i32* %23)
  %25 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %3, align 8
  %26 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tegra30_ahub_unset_rx_cif_source(i32 %27)
  %29 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %3, align 8
  %30 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tegra30_ahub_free_rx_fifo(i32 %31)
  %33 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %3, align 8
  %34 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tegra30_ahub_unset_rx_cif_source(i32 %35)
  %37 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %3, align 8
  %38 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tegra30_ahub_free_tx_fifo(i32 %39)
  %41 = load %struct.tegra30_i2s*, %struct.tegra30_i2s** %3, align 8
  %42 = getelementptr inbounds %struct.tegra30_i2s, %struct.tegra30_i2s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_put(i32 %43)
  ret i32 0
}

declare dso_local %struct.tegra30_i2s* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @tegra30_i2s_runtime_suspend(i32*) #1

declare dso_local i32 @tegra_pcm_platform_unregister(i32*) #1

declare dso_local i32 @snd_soc_unregister_component(i32*) #1

declare dso_local i32 @tegra30_ahub_unset_rx_cif_source(i32) #1

declare dso_local i32 @tegra30_ahub_free_rx_fifo(i32) #1

declare dso_local i32 @tegra30_ahub_free_tx_fifo(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
