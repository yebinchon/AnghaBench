; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_pdm.c_rockchip_pdm_rxctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_pdm.c_rockchip_pdm_rxctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_pdm_dev = type { i32 }

@PDM_DMA_CTRL = common dso_local global i32 0, align 4
@PDM_DMA_RD_MSK = common dso_local global i32 0, align 4
@PDM_DMA_RD_EN = common dso_local global i32 0, align 4
@PDM_SYSCONFIG = common dso_local global i32 0, align 4
@PDM_RX_MASK = common dso_local global i32 0, align 4
@PDM_RX_START = common dso_local global i32 0, align 4
@PDM_DMA_RD_DIS = common dso_local global i32 0, align 4
@PDM_RX_CLR_MASK = common dso_local global i32 0, align 4
@PDM_RX_STOP = common dso_local global i32 0, align 4
@PDM_RX_CLR_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_pdm_dev*, i32)* @rockchip_pdm_rxctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pdm_rxctrl(%struct.rk_pdm_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rk_pdm_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rk_pdm_dev* %0, %struct.rk_pdm_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PDM_DMA_CTRL, align 4
  %12 = load i32, i32* @PDM_DMA_RD_MSK, align 4
  %13 = load i32, i32* @PDM_DMA_RD_EN, align 4
  %14 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %3, align 8
  %16 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PDM_SYSCONFIG, align 4
  %19 = load i32, i32* @PDM_RX_MASK, align 4
  %20 = load i32, i32* @PDM_RX_START, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PDM_DMA_CTRL, align 4
  %27 = load i32, i32* @PDM_DMA_RD_MSK, align 4
  %28 = load i32, i32* @PDM_DMA_RD_DIS, align 4
  %29 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PDM_SYSCONFIG, align 4
  %34 = load i32, i32* @PDM_RX_MASK, align 4
  %35 = load i32, i32* @PDM_RX_CLR_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PDM_RX_STOP, align 4
  %38 = load i32, i32* @PDM_RX_CLR_WR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
