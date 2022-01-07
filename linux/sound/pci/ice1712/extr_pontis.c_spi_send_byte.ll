; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_spi_send_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_spi_send_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@PONTIS_CS_CLK = common dso_local global i32 0, align 4
@PONTIS_CS_WDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i8)* @spi_send_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_send_byte(%struct.snd_ice1712* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %29, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %11 = load i32, i32* @PONTIS_CS_CLK, align 4
  %12 = call i32 @set_gpio_bit(%struct.snd_ice1712* %10, i32 %11, i32 0)
  %13 = call i32 @udelay(i32 1)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %15 = load i32, i32* @PONTIS_CS_WDATA, align 4
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 128
  %19 = call i32 @set_gpio_bit(%struct.snd_ice1712* %14, i32 %15, i32 %18)
  %20 = call i32 @udelay(i32 1)
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %22 = load i32, i32* @PONTIS_CS_CLK, align 4
  %23 = call i32 @set_gpio_bit(%struct.snd_ice1712* %21, i32 %22, i32 1)
  %24 = call i32 @udelay(i32 1)
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 1
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %4, align 1
  br label %29

29:                                               ; preds = %9
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @set_gpio_bit(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
