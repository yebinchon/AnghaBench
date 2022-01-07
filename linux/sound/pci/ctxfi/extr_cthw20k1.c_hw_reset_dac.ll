; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_reset_dac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_reset_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw_reset_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_reset_dac(%struct.hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  %7 = load %struct.hw*, %struct.hw** %3, align 8
  %8 = call i64 @i2c_unlock(%struct.hw* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %15, %11
  %13 = load %struct.hw*, %struct.hw** %3, align 8
  %14 = call i32 @hw_read_pci(%struct.hw* %13, i32 236)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 8388608
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %12, label %20

20:                                               ; preds = %15
  %21 = load %struct.hw*, %struct.hw** %3, align 8
  %22 = call i32 @hw_write_pci(%struct.hw* %21, i32 236, i32 5)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %44, %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = call i32 @msleep(i32 100)
  %28 = load %struct.hw*, %struct.hw** %3, align 8
  %29 = load i32, i32* @GPIO, align 4
  %30 = call i64 @hw_read_20kx(%struct.hw* %28, i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 65533
  store i32 %33, i32* %5, align 4
  %34 = load %struct.hw*, %struct.hw** %3, align 8
  %35 = load i32, i32* @GPIO, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @hw_write_20kx(%struct.hw* %34, i32 %35, i32 %36)
  %38 = call i32 @mdelay(i32 1)
  %39 = load %struct.hw*, %struct.hw** %3, align 8
  %40 = load i32, i32* @GPIO, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, 2
  %43 = call i32 @hw_write_20kx(%struct.hw* %39, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load %struct.hw*, %struct.hw** %3, align 8
  %49 = call i32 @i2c_write(%struct.hw* %48, i32 1572992, i32 1, i32 128)
  %50 = load %struct.hw*, %struct.hw** %3, align 8
  %51 = call i32 @i2c_write(%struct.hw* %50, i32 1572992, i32 2, i32 16)
  %52 = load %struct.hw*, %struct.hw** %3, align 8
  %53 = call i32 @i2c_lock(%struct.hw* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @i2c_unlock(%struct.hw*) #1

declare dso_local i32 @hw_read_pci(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_pci(%struct.hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @i2c_write(%struct.hw*, i32, i32, i32) #1

declare dso_local i32 @i2c_lock(%struct.hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
