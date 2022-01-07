; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_card_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_hw_card_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64 }

@TRNCTL = common dso_local global i32 0, align 4
@PLLCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw_card_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_card_stop(%struct.hw* %0) #0 {
  %2 = alloca %struct.hw*, align 8
  %3 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %2, align 8
  %4 = load %struct.hw*, %struct.hw** %2, align 8
  %5 = load i32, i32* @TRNCTL, align 4
  %6 = call i32 @hw_write_20kx(%struct.hw* %4, i32 %5, i32 0)
  %7 = load %struct.hw*, %struct.hw** %2, align 8
  %8 = load i32, i32* @PLLCTL, align 4
  %9 = call i32 @hw_read_20kx(%struct.hw* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.hw*, %struct.hw** %2, align 8
  %11 = load i32, i32* @PLLCTL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, -61441
  %14 = call i32 @hw_write_20kx(%struct.hw* %10, i32 %11, i32 %13)
  %15 = load %struct.hw*, %struct.hw** %2, align 8
  %16 = getelementptr inbounds %struct.hw, %struct.hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.hw*, %struct.hw** %2, align 8
  %21 = getelementptr inbounds %struct.hw, %struct.hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @synchronize_irq(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @synchronize_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
