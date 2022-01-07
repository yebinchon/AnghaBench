; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sun4i_i2s = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sun4i_i2s*, i32)* }

@.str = private unnamed_addr constant [34 x i8] c"Unsupported format configuration\0A\00", align 1
@SUN4I_I2S_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@SUN4I_I2S_FIFO_CTRL_TX_MODE_MASK = common dso_local global i32 0, align 4
@SUN4I_I2S_FIFO_CTRL_RX_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @sun4i_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sun4i_i2s*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.sun4i_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.sun4i_i2s* %9, %struct.sun4i_i2s** %6, align 8
  %10 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %6, align 8
  %11 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.sun4i_i2s*, i32)*, i32 (%struct.sun4i_i2s*, i32)** %13, align 8
  %15 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 %14(%struct.sun4i_i2s* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %6, align 8
  %28 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SUN4I_I2S_FIFO_CTRL_REG, align 4
  %31 = load i32, i32* @SUN4I_I2S_FIFO_CTRL_TX_MODE_MASK, align 4
  %32 = load i32, i32* @SUN4I_I2S_FIFO_CTRL_RX_MODE_MASK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @SUN4I_I2S_FIFO_CTRL_TX_MODE(i32 1)
  %35 = call i32 @SUN4I_I2S_FIFO_CTRL_RX_MODE(i32 1)
  %36 = or i32 %34, %35
  %37 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %6, align 8
  %40 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %26, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.sun4i_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_I2S_FIFO_CTRL_TX_MODE(i32) #1

declare dso_local i32 @SUN4I_I2S_FIFO_CTRL_RX_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
