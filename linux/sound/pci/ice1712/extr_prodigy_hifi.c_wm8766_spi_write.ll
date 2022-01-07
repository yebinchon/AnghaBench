; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_wm8766_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_wm8766_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WM8766_SPI_MD = common dso_local global i32 0, align 4
@WM8766_SPI_CLK = common dso_local global i32 0, align 4
@WM8766_SPI_ML = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i32)* @wm8766_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8766_spi_write(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = load i32, i32* @WM8766_SPI_MD, align 4
  %10 = load i32, i32* @WM8766_SPI_CLK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @WM8766_SPI_ML, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %8, i32 %13)
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = load i32, i32* @WM8766_SPI_MD, align 4
  %17 = load i32, i32* @WM8766_SPI_CLK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WM8766_SPI_ML, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %15, i32 %21)
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %24 = load i32, i32* @WM8766_SPI_ML, align 4
  %25 = call i32 @set_gpio_bit(%struct.snd_ice1712* %23, i32 %24, i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 9
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 511
  %30 = or i32 %27, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @wm8766_spi_send_word(%struct.snd_ice1712* %31, i32 %32)
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %35 = load i32, i32* @WM8766_SPI_ML, align 4
  %36 = call i32 @set_gpio_bit(%struct.snd_ice1712* %34, i32 %35, i32 1)
  %37 = call i32 @udelay(i32 1)
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %38, i32 %42)
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %44, i32 %48)
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @set_gpio_bit(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @wm8766_spi_send_word(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
