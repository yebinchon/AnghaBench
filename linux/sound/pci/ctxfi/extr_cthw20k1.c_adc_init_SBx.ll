; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_adc_init_SBx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_adc_init_SBx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@ID0 = common dso_local global i32 0, align 4
@GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i32)* @adc_init_SBx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_init_SBx(%struct.hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 256, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %18 [
    i32 130, label %13
    i32 131, label %14
    i32 128, label %15
    i32 132, label %16
    i32 129, label %17
  ]

13:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  store i32 384, i32* %9, align 4
  br label %19

14:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  br label %19

15:                                               ; preds = %3
  store i32 4, i32* %10, align 4
  br label %19

16:                                               ; preds = %3
  store i32 8, i32* %10, align 4
  br label %19

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14, %13
  %20 = load %struct.hw*, %struct.hw** %5, align 8
  %21 = call i64 @i2c_unlock(%struct.hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %81

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %28, %24
  %26 = load %struct.hw*, %struct.hw** %5, align 8
  %27 = call i32 @hw_read_pci(%struct.hw* %26, i32 236)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, 8388608
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %25, label %33

33:                                               ; preds = %28
  %34 = load %struct.hw*, %struct.hw** %5, align 8
  %35 = call i32 @hw_write_pci(%struct.hw* %34, i32 236, i32 5)
  %36 = load %struct.hw*, %struct.hw** %5, align 8
  %37 = call i32 @i2c_write(%struct.hw* %36, i32 1704064, i32 14, i32 8)
  %38 = load %struct.hw*, %struct.hw** %5, align 8
  %39 = call i32 @i2c_write(%struct.hw* %38, i32 1704064, i32 24, i32 10)
  %40 = load %struct.hw*, %struct.hw** %5, align 8
  %41 = call i32 @i2c_write(%struct.hw* %40, i32 1704064, i32 40, i32 134)
  %42 = load %struct.hw*, %struct.hw** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @i2c_write(%struct.hw* %42, i32 1704064, i32 42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load %struct.hw*, %struct.hw** %5, align 8
  %49 = call i32 @i2c_write(%struct.hw* %48, i32 1704064, i32 28, i32 247)
  %50 = load %struct.hw*, %struct.hw** %5, align 8
  %51 = call i32 @i2c_write(%struct.hw* %50, i32 1704064, i32 30, i32 247)
  br label %57

52:                                               ; preds = %33
  %53 = load %struct.hw*, %struct.hw** %5, align 8
  %54 = call i32 @i2c_write(%struct.hw* %53, i32 1704064, i32 28, i32 207)
  %55 = load %struct.hw*, %struct.hw** %5, align 8
  %56 = call i32 @i2c_write(%struct.hw* %55, i32 1704064, i32 30, i32 207)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.hw*, %struct.hw** %5, align 8
  %59 = load i32, i32* @ID0, align 4
  %60 = call i32 @hw_read_20kx(%struct.hw* %58, i32 %59)
  %61 = and i32 %60, 256
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load %struct.hw*, %struct.hw** %5, align 8
  %65 = call i32 @i2c_write(%struct.hw* %64, i32 1704064, i32 22, i32 38)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.hw*, %struct.hw** %5, align 8
  %68 = call i32 @i2c_lock(%struct.hw* %67)
  %69 = load %struct.hw*, %struct.hw** %5, align 8
  %70 = load i32, i32* @GPIO, align 4
  %71 = call i32 @hw_read_20kx(%struct.hw* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 65151
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load %struct.hw*, %struct.hw** %5, align 8
  %78 = load i32, i32* @GPIO, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @hw_write_20kx(%struct.hw* %77, i32 %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %66, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @i2c_unlock(%struct.hw*) #1

declare dso_local i32 @hw_read_pci(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_pci(%struct.hw*, i32, i32) #1

declare dso_local i32 @i2c_write(%struct.hw*, i32, i32, i32) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @i2c_lock(%struct.hw*) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
