; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_hoontech.c_snd_ice1712_stdsp24_gpio_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_hoontech.c_snd_ice1712_stdsp24_gpio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@ICE1712_STDSP24_CLOCK_BIT = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i8)* @snd_ice1712_stdsp24_gpio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_stdsp24_gpio_write(%struct.snd_ice1712* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* @ICE1712_STDSP24_CLOCK_BIT, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = or i32 %8, %6
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = call i32 @udelay(i32 100)
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %13 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %14 = load i8, i8* %4, align 1
  %15 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %12, i32 %13, i8 zeroext %14)
  %16 = load i8, i8* @ICE1712_STDSP24_CLOCK_BIT, align 1
  %17 = zext i8 %16 to i32
  %18 = xor i32 %17, -1
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  %23 = call i32 @udelay(i32 100)
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %25 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %26 = load i8, i8* %4, align 1
  %27 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %24, i32 %25, i8 zeroext %26)
  %28 = load i8, i8* @ICE1712_STDSP24_CLOCK_BIT, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %4, align 1
  %34 = call i32 @udelay(i32 100)
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %36 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %37 = load i8, i8* %4, align 1
  %38 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %35, i32 %36, i8 zeroext %37)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
