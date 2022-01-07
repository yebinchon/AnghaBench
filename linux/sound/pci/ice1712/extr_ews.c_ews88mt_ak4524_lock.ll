; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_ews88mt_ak4524_lock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_ews88mt_ak4524_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712** }
%struct.snd_ice1712 = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"fatal error (ews88mt chip select)\0A\00", align 1
@ICE1712_EWS88_SERIAL_DATA = common dso_local global i8 0, align 1
@ICE1712_EWS88_SERIAL_CLOCK = common dso_local global i8 0, align 1
@ICE1712_EWS88_RW = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DIRECTION = common dso_local global i32 0, align 4
@ICE1712_IREG_GPIO_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @ews88mt_ak4524_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ews88mt_ak4524_lock(%struct.snd_akm4xxx* %0, i32 %1) #0 {
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
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %15, 15
  %17 = call i64 @snd_ice1712_ews88mt_chip_select(%struct.snd_ice1712* %12, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %28 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %27)
  %29 = load i8, i8* @ICE1712_EWS88_SERIAL_DATA, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @ICE1712_EWS88_SERIAL_CLOCK, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i8, i8* @ICE1712_EWS88_RW, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %6, align 1
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %39 = load i32, i32* @ICE1712_IREG_GPIO_DIRECTION, align 4
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = trunc i32 %47 to i8
  %49 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %38, i32 %39, i8 zeroext %48)
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %51 = load i32, i32* @ICE1712_IREG_GPIO_WRITE_MASK, align 4
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = trunc i32 %54 to i8
  %56 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %50, i32 %51, i8 zeroext %55)
  ret void
}

declare dso_local i64 @snd_ice1712_ews88mt_chip_select(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
