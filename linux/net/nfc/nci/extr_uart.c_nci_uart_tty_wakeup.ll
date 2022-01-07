; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_tty_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_tty_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64 }
%struct.nci_uart = type { %struct.tty_struct* }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @nci_uart_tty_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_uart_tty_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.nci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.nci_uart*
  store %struct.nci_uart* %8, %struct.nci_uart** %3, align 8
  %9 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %10 = icmp ne %struct.nci_uart* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %18 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %19 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %18, i32 0, i32 0
  %20 = load %struct.tty_struct*, %struct.tty_struct** %19, align 8
  %21 = icmp ne %struct.tty_struct* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %26

23:                                               ; preds = %12
  %24 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %25 = call i32 @nci_uart_tx_wakeup(%struct.nci_uart* %24)
  br label %26

26:                                               ; preds = %23, %22, %11
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nci_uart_tx_wakeup(%struct.nci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
