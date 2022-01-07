; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_ap_cs8427_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_delta.c_ap_cs8427_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@ICE1712_DELTA_AP_CCLK = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@ICE1712_DELTA_AP_DIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_ice1712*, i8)* @ap_cs8427_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ap_cs8427_read_byte(%struct.snd_ice1712* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i8 %1, i8* %4, align 1
  store i8 0, i8* %5, align 1
  store i32 7, i32* %6, align 4
  br label %7

7:                                                ; preds = %48, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %7
  %11 = load i8, i8* @ICE1712_DELTA_AP_CCLK, align 1
  %12 = zext i8 %11 to i32
  %13 = xor i32 %12, -1
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %4, align 1
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %19 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %20 = load i8, i8* %4, align 1
  %21 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %18, i32 %19, i8 zeroext %20)
  %22 = call i32 @udelay(i32 5)
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %25 = call i32 @snd_ice1712_read(%struct.snd_ice1712* %23, i32 %24)
  %26 = load i32, i32* @ICE1712_DELTA_AP_DIN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %10
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %5, align 1
  br label %36

36:                                               ; preds = %29, %10
  %37 = load i8, i8* @ICE1712_DELTA_AP_CCLK, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %4, align 1
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %44 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %45 = load i8, i8* %4, align 1
  %46 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %43, i32 %44, i8 zeroext %45)
  %47 = call i32 @udelay(i32 5)
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  br label %7

51:                                               ; preds = %7
  %52 = load i8, i8* %5, align 1
  ret i8 %52
}

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
