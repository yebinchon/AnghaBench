; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_adc_input_select.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_adc_input_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32)* @hw_adc_input_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_adc_input_select(%struct.hw* %0, i32 %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hw*, %struct.hw** %3, align 8
  %7 = load i32, i32* @GPIO_DATA, align 4
  %8 = call i32 @hw_read_20kx(%struct.hw* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %28 [
    i32 128, label %10
    i32 129, label %19
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, 16384
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hw*, %struct.hw** %3, align 8
  %14 = load i32, i32* @GPIO_DATA, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @hw_write_20kx(%struct.hw* %13, i32 %14, i32 %15)
  %17 = load %struct.hw*, %struct.hw** %3, align 8
  %18 = call i32 @hw_wm8775_input_select(%struct.hw* %17, i32 0, i32 20)
  br label %29

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, -16385
  store i32 %21, i32* %5, align 4
  %22 = load %struct.hw*, %struct.hw** %3, align 8
  %23 = load i32, i32* @GPIO_DATA, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @hw_write_20kx(%struct.hw* %22, i32 %23, i32 %24)
  %26 = load %struct.hw*, %struct.hw** %3, align 8
  %27 = call i32 @hw_wm8775_input_select(%struct.hw* %26, i32 1, i32 0)
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %19, %10
  ret i32 0
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw_wm8775_input_select(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
