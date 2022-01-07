; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_output_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_output_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_EXT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32)* @hw_output_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_output_switch_put(%struct.hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.hw*, %struct.hw** %4, align 8
  %9 = call i32 @hw_output_switch_get(%struct.hw* %8)
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.hw*, %struct.hw** %4, align 8
  %14 = load i32, i32* @GPIO_DATA, align 4
  %15 = call i32 @hw_read_20kx(%struct.hw* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, 6144
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hw*, %struct.hw** %4, align 8
  %19 = load i32, i32* @GPIO_DATA, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @hw_write_20kx(%struct.hw* %18, i32 %19, i32 %20)
  %22 = load %struct.hw*, %struct.hw** %4, align 8
  %23 = load i32, i32* @GPIO_EXT_DATA, align 4
  %24 = call i32 @hw_read_20kx(%struct.hw* %22, i32 %23)
  %25 = and i32 %24, -49
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %31 [
    i32 0, label %27
    i32 1, label %28
  ]

27:                                               ; preds = %12
  br label %34

28:                                               ; preds = %12
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 16
  store i32 %30, i32* %6, align 4
  br label %34

31:                                               ; preds = %12
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28, %27
  %35 = load %struct.hw*, %struct.hw** %4, align 8
  %36 = load i32, i32* @GPIO_EXT_DATA, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @hw_write_20kx(%struct.hw* %35, i32 %36, i32 %37)
  %39 = load %struct.hw*, %struct.hw** %4, align 8
  %40 = load i32, i32* @GPIO_DATA, align 4
  %41 = call i32 @hw_read_20kx(%struct.hw* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, -6145
  store i32 %43, i32* %6, align 4
  %44 = load %struct.hw*, %struct.hw** %4, align 8
  %45 = load i32, i32* @GPIO_DATA, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @hw_write_20kx(%struct.hw* %44, i32 %45, i32 %46)
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %34, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @hw_output_switch_get(%struct.hw*) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
