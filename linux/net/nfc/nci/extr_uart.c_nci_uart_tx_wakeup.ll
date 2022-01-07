; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_tx_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_tx_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_uart = type { i32, i32 }

@NCI_UART_SENDING = common dso_local global i32 0, align 4
@NCI_UART_TX_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_uart*)* @nci_uart_tx_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_uart_tx_wakeup(%struct.nci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_uart*, align 8
  store %struct.nci_uart* %0, %struct.nci_uart** %3, align 8
  %4 = load i32, i32* @NCI_UART_SENDING, align 4
  %5 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %6 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %5, i32 0, i32 1
  %7 = call i64 @test_and_set_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @NCI_UART_TX_WAKEUP, align 4
  %11 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %12 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %11, i32 0, i32 1
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  store i32 0, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %16 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %15, i32 0, i32 0
  %17 = call i32 @schedule_work(i32* %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
