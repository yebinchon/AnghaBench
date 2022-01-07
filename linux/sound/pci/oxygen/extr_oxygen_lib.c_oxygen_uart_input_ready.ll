; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_uart_input_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_uart_input_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@OXYGEN_MPU401 = common dso_local global i64 0, align 8
@MPU401_RX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @oxygen_uart_input_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_uart_input_ready(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %3 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %4 = load i64, i64* @OXYGEN_MPU401, align 8
  %5 = add nsw i64 %4, 1
  %6 = call i32 @oxygen_read8(%struct.oxygen* %3, i64 %5)
  %7 = load i32, i32* @MPU401_RX_EMPTY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local i32 @oxygen_read8(%struct.oxygen*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
