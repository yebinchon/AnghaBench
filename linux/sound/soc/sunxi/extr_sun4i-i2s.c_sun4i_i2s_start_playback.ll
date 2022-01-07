; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_start_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_start_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_i2s = type { i32 }

@SUN4I_I2S_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_FIFO_CTRL_FLUSH_TX = common dso_local global i32 0, align 4
@SUN4I_I2S_TX_CNT_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_CTRL_TX_EN = common dso_local global i32 0, align 4
@SUN4I_I2S_DMA_INT_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_DMA_INT_CTRL_TX_DRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_i2s*)* @sun4i_i2s_start_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_i2s_start_playback(%struct.sun4i_i2s* %0) #0 {
  %2 = alloca %struct.sun4i_i2s*, align 8
  store %struct.sun4i_i2s* %0, %struct.sun4i_i2s** %2, align 8
  %3 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %2, align 8
  %4 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SUN4I_I2S_FIFO_CTRL_REG, align 4
  %7 = load i32, i32* @SUN4I_I2S_FIFO_CTRL_FLUSH_TX, align 4
  %8 = load i32, i32* @SUN4I_I2S_FIFO_CTRL_FLUSH_TX, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %2, align 8
  %11 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SUN4I_I2S_TX_CNT_REG, align 4
  %14 = call i32 @regmap_write(i32 %12, i32 %13, i32 0)
  %15 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %2, align 8
  %16 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SUN4I_I2S_CTRL_REG, align 4
  %19 = load i32, i32* @SUN4I_I2S_CTRL_TX_EN, align 4
  %20 = load i32, i32* @SUN4I_I2S_CTRL_TX_EN, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %2, align 8
  %23 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SUN4I_I2S_DMA_INT_CTRL_REG, align 4
  %26 = load i32, i32* @SUN4I_I2S_DMA_INT_CTRL_TX_DRQ_EN, align 4
  %27 = load i32, i32* @SUN4I_I2S_DMA_INT_CTRL_TX_DRQ_EN, align 4
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
