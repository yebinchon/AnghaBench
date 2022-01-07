; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_output_switch_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_output_switch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@GPIO_EXT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw_output_switch_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_output_switch_get(%struct.hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  %5 = load %struct.hw*, %struct.hw** %3, align 8
  %6 = load i32, i32* @GPIO_EXT_DATA, align 4
  %7 = call i32 @hw_read_20kx(%struct.hw* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 48
  switch i32 %9, label %13 [
    i32 0, label %10
    i32 16, label %11
    i32 32, label %12
  ]

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %14

12:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 3, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
