; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_i2s_info = type { i32 }

@EP93XX_I2S_TX0EN = common dso_local global i32 0, align 4
@EP93XX_I2S_GLSTS = common dso_local global i32 0, align 4
@EP93XX_I2S_GLSTS_TX0_FIFO_FULL = common dso_local global i32 0, align 4
@EP93XX_I2S_I2STX0LFT = common dso_local global i32 0, align 4
@EP93XX_I2S_I2STX0RT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ep93xx_i2s_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_i2s_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ep93xx_i2s_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ep93xx_i2s_info*
  store %struct.ep93xx_i2s_info* %7, %struct.ep93xx_i2s_info** %5, align 8
  %8 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %5, align 8
  %9 = load i32, i32* @EP93XX_I2S_TX0EN, align 4
  %10 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %8, i32 %9, i32 0)
  br label %11

11:                                               ; preds = %19, %2
  %12 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %5, align 8
  %13 = load i32, i32* @EP93XX_I2S_GLSTS, align 4
  %14 = call i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info* %12, i32 %13)
  %15 = load i32, i32* @EP93XX_I2S_GLSTS_TX0_FIFO_FULL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %5, align 8
  %21 = load i32, i32* @EP93XX_I2S_I2STX0LFT, align 4
  %22 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %20, i32 %21, i32 0)
  %23 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %5, align 8
  %24 = load i32, i32* @EP93XX_I2S_I2STX0RT, align 4
  %25 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %23, i32 %24, i32 0)
  br label %11

26:                                               ; preds = %11
  %27 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %5, align 8
  %28 = load i32, i32* @EP93XX_I2S_TX0EN, align 4
  %29 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %27, i32 %28, i32 1)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %30
}

declare dso_local i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info*, i32, i32) #1

declare dso_local i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
