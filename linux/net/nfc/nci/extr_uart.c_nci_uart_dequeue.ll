; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nci_uart = type { %struct.sk_buff*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nci_uart*)* @nci_uart_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nci_uart_dequeue(%struct.nci_uart* %0) #0 {
  %2 = alloca %struct.nci_uart*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.nci_uart* %0, %struct.nci_uart** %2, align 8
  %4 = load %struct.nci_uart*, %struct.nci_uart** %2, align 8
  %5 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %4, i32 0, i32 0
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.nci_uart*, %struct.nci_uart** %2, align 8
  %11 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %10, i32 0, i32 1
  %12 = call %struct.sk_buff* @skb_dequeue(i32* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.nci_uart*, %struct.nci_uart** %2, align 8
  %15 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %14, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %15, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %17
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
