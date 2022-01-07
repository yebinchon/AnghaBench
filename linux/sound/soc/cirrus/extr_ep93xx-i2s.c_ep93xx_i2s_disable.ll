; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-i2s.c_ep93xx_i2s_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_i2s_info = type { i32, i32, i32 }

@CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EP93XX_I2S_TXCTRL = common dso_local global i32 0, align 4
@EP93XX_I2S_TX0EN = common dso_local global i32 0, align 4
@EP93XX_I2S_RX0EN = common dso_local global i32 0, align 4
@EP93XX_I2S_GLCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_i2s_info*, i32)* @ep93xx_i2s_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_i2s_disable(%struct.ep93xx_i2s_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ep93xx_i2s_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ep93xx_i2s_info* %0, %struct.ep93xx_i2s_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %15 = load i32, i32* @EP93XX_I2S_TXCTRL, align 4
  %16 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %14, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %13, %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @EP93XX_I2S_TX0EN, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EP93XX_I2S_RX0EN, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %26, i32 %27, i32 0)
  %29 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %30 = load i32, i32* @EP93XX_I2S_TX0EN, align 4
  %31 = call i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info* %29, i32 %30)
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %36 = load i32, i32* @EP93XX_I2S_RX0EN, align 4
  %37 = call i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info* %35, i32 %36)
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %42 = load i32, i32* @EP93XX_I2S_GLCTRL, align 4
  %43 = call i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info* %41, i32 %42, i32 0)
  %44 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %45 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_disable(i32 %46)
  %48 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %49 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_disable(i32 %50)
  %52 = load %struct.ep93xx_i2s_info*, %struct.ep93xx_i2s_info** %3, align 8
  %53 = getelementptr inbounds %struct.ep93xx_i2s_info, %struct.ep93xx_i2s_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_disable(i32 %54)
  br label %56

56:                                               ; preds = %40, %34, %25
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ep93xx_i2s_write_reg(%struct.ep93xx_i2s_info*, i32, i32) #1

declare dso_local i32 @ep93xx_i2s_read_reg(%struct.ep93xx_i2s_info*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
