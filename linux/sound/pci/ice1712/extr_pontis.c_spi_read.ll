; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PONTIS_CS_CS = common dso_local global i32 0, align 4
@PONTIS_CS_WDATA = common dso_local global i32 0, align 4
@PONTIS_CS_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32, i32)* @spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_read(%struct.snd_ice1712* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = load i32, i32* @PONTIS_CS_CS, align 4
  %10 = load i32, i32* @PONTIS_CS_WDATA, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PONTIS_CS_CLK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %8, i32 %13)
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = load i32, i32* @PONTIS_CS_CS, align 4
  %17 = load i32, i32* @PONTIS_CS_WDATA, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PONTIS_CS_CLK, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %15, i32 %21)
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %24 = load i32, i32* @PONTIS_CS_CS, align 4
  %25 = call i32 @set_gpio_bit(%struct.snd_ice1712* %23, i32 %24, i32 0)
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -2
  %29 = call i32 @spi_send_byte(%struct.snd_ice1712* %26, i32 %28)
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @spi_send_byte(%struct.snd_ice1712* %30, i32 %31)
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %34 = load i32, i32* @PONTIS_CS_CS, align 4
  %35 = call i32 @set_gpio_bit(%struct.snd_ice1712* %33, i32 %34, i32 1)
  %36 = call i32 @udelay(i32 1)
  %37 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %38 = load i32, i32* @PONTIS_CS_CS, align 4
  %39 = call i32 @set_gpio_bit(%struct.snd_ice1712* %37, i32 %38, i32 0)
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, 1
  %43 = call i32 @spi_send_byte(%struct.snd_ice1712* %40, i32 %42)
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %45 = call i32 @spi_read_byte(%struct.snd_ice1712* %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %47 = load i32, i32* @PONTIS_CS_CS, align 4
  %48 = call i32 @set_gpio_bit(%struct.snd_ice1712* %46, i32 %47, i32 1)
  %49 = call i32 @udelay(i32 1)
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %50, i32 %54)
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %56, i32 %60)
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @set_gpio_bit(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @spi_send_byte(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spi_read_byte(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
