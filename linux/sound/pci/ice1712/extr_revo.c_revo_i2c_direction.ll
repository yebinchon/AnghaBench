; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_revo.c_revo_i2c_direction.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_revo.c_revo_i2c_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VT1724_REVO_I2C_CLOCK = common dso_local global i32 0, align 4
@VT1724_REVO_I2C_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_i2c_bus*, i32, i32)* @revo_i2c_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revo_i2c_direction(%struct.snd_i2c_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_i2c_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %4, align 8
  %11 = getelementptr inbounds %struct.snd_i2c_bus, %struct.snd_i2c_bus* %10, i32 0, i32 0
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %11, align 8
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @VT1724_REVO_I2C_CLOCK, align 4
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @VT1724_REVO_I2C_DATA, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @VT1724_REVO_I2C_CLOCK, align 4
  %28 = load i32, i32* @VT1724_REVO_I2C_DATA, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %45 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %43, i32 %47)
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = xor i32 %50, -1
  %52 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %49, i32 %51)
  ret void
}

declare dso_local i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
