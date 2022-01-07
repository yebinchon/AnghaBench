; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_i2s_info = type { i32, i32, i32 }

@EP93XX_I2S_TX0EN = common dso_local global i32 0, align 4
@EP93XX_I2S_RX0EN = common dso_local global i32 0, align 4
@EP93XX_I2S_GLCTRL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG = common dso_local global i32 0, align 4
@EP93XX_I2S_TXCTRL = common dso_local global i32 0, align 4
@EP93XX_I2S_TXCTRL_TXEMPTY_LVL = common dso_local global i32 0, align 4
@EP93XX_I2S_TXCTRL_TXUFIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_i2s_info*, i32)* @ep93xx_i2s_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_i2s_enable(%struct.ep93xx_i2s_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ep93xx_i2s_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ep93xx_i2s_info* %0, %struct.ep93xx_i2s_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %7 = load i32, i32* @EP93XX_I2S_TX0EN, align 4
  %8 = call i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info* %6, i32 %7)
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %13 = load i32, i32* @EP93XX_I2S_RX0EN, align 4
  %14 = call i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info* %12, i32 %13)
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %19 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_enable(i32 %20)
  %22 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %23 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_enable(i32 %24)
  %26 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %27 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_enable(i32 %28)
  %30 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %31 = load i32, i32* @EP93XX_I2S_GLCTRL, align 4
  %32 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %17, %11, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EP93XX_I2S_TX0EN, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EP93XX_I2S_RX0EN, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %42, i32 %43, i32 1)
  %45 = load i32, i32* @CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG, align 4
  %46 = call i64 @IS_ENABLED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %54 = load i32, i32* @EP93XX_I2S_TXCTRL, align 4
  %55 = load i32, i32* @EP93XX_I2S_TXCTRL_TXEMPTY_LVL, align 4
  %56 = load i32, i32* @EP93XX_I2S_TXCTRL_TXUFIE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %53, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %52, %48, %41
  ret void
}

declare dso_local i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
