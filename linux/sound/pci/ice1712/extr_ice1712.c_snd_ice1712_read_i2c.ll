; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_read_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_read_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@I2C_BYTE_ADDR = common dso_local global i32 0, align 4
@ICE1712_I2C_WRITE = common dso_local global i8 0, align 1
@I2C_DEV_ADDR = common dso_local global i32 0, align 4
@I2C_CTRL = common dso_local global i32 0, align 4
@ICE1712_I2C_BUSY = common dso_local global i8 0, align 1
@I2C_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_ice1712*, i8, i8)* @snd_ice1712_read_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_ice1712_read_i2c(%struct.snd_ice1712* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i64 65536, i64* %7, align 8
  %8 = load i8, i8* %6, align 1
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %10 = load i32, i32* @I2C_BYTE_ADDR, align 4
  %11 = call i32 @ICEREG(%struct.snd_ice1712* %9, i32 %10)
  %12 = call i32 @outb(i8 zeroext %8, i32 %11)
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @ICE1712_I2C_WRITE, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = trunc i32 %18 to i8
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %21 = load i32, i32* @I2C_DEV_ADDR, align 4
  %22 = call i32 @ICEREG(%struct.snd_ice1712* %20, i32 %21)
  %23 = call i32 @outb(i8 zeroext %19, i32 %22)
  br label %24

24:                                               ; preds = %40, %3
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %7, align 8
  %27 = icmp sgt i64 %25, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %30 = load i32, i32* @I2C_CTRL, align 4
  %31 = call i32 @ICEREG(%struct.snd_ice1712* %29, i32 %30)
  %32 = call zeroext i8 @inb(i32 %31)
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @ICE1712_I2C_BUSY, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %28, %24
  %39 = phi i1 [ false, %24 ], [ %37, %28 ]
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %24

41:                                               ; preds = %38
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %43 = load i32, i32* @I2C_DATA, align 4
  %44 = call i32 @ICEREG(%struct.snd_ice1712* %42, i32 %43)
  %45 = call zeroext i8 @inb(i32 %44)
  ret i8 %45
}

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @ICEREG(%struct.snd_ice1712*, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
