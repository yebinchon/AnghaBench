; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_ewx2496_ak4524_lock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_ewx2496_ak4524_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712** }
%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@ICE1712_EWX2496_SERIAL_DATA = common dso_local global i8 0, align 1
@ICE1712_EWX2496_SERIAL_CLOCK = common dso_local global i8 0, align 1
@ICE1712_EWX2496_AK4524_CS = common dso_local global i8 0, align 1
@ICE1712_EWX2496_RW = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DIRECTION = common dso_local global i32 0, align 4
@ICE1712_IREG_GPIO_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @ewx2496_ak4524_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ewx2496_ak4524_lock(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %8 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %7, i32 0, i32 0
  %9 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %8, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %9, i64 0
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %10, align 8
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %5, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %13 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %12)
  %14 = load i8, i8* @ICE1712_EWX2496_SERIAL_DATA, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ICE1712_EWX2496_SERIAL_CLOCK, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i8, i8* @ICE1712_EWX2496_AK4524_CS, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = load i8, i8* @ICE1712_EWX2496_RW, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %6, align 1
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %27 = load i32, i32* @ICE1712_IREG_GPIO_DIRECTION, align 4
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = trunc i32 %35 to i8
  %37 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %26, i32 %27, i8 zeroext %36)
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %39 = load i32, i32* @ICE1712_IREG_GPIO_WRITE_MASK, align 4
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = trunc i32 %42 to i8
  %44 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %38, i32 %39, i8 zeroext %43)
  ret void
}

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
