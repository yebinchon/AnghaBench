; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_juli.c_juli_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_ice1712.0*)*, i32 (%struct.snd_ice1712.1*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.snd_ice1712.1 = type opaque

@GPIO_RATE_MASK = common dso_local global i32 0, align 4
@RATE = common dso_local global i32 0, align 4
@VT1724_SPDIF_MASTER = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @juli_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @juli_set_rate(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.snd_ice1712.0*)*, i32 (%struct.snd_ice1712.0*)** %10, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %13 = bitcast %struct.snd_ice1712* %12 to %struct.snd_ice1712.0*
  %14 = call i32 %11(%struct.snd_ice1712.0* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GPIO_RATE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @get_gpio_val(i32 %19)
  %21 = or i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.snd_ice1712.1*, i32)*, i32 (%struct.snd_ice1712.1*, i32)** %24, align 8
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %27 = bitcast %struct.snd_ice1712* %26 to %struct.snd_ice1712.1*
  %28 = load i32, i32* %6, align 4
  %29 = call i32 %25(%struct.snd_ice1712.1* %27, i32 %28)
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %31 = load i32, i32* @RATE, align 4
  %32 = call i32 @ICEMT1724(%struct.snd_ice1712* %30, i32 %31)
  %33 = call zeroext i8 @inb(i32 %32)
  store i8 %33, i8* %7, align 1
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @VT1724_SPDIF_MASTER, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = trunc i32 %38 to i8
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %41 = load i32, i32* @RATE, align 4
  %42 = call i32 @ICEMT1724(%struct.snd_ice1712* %40, i32 %41)
  %43 = call i32 @outb(i8 zeroext %39, i32 %42)
  ret void
}

declare dso_local i32 @get_gpio_val(i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
