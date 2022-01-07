; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_tty_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32* }
%struct.nci_uart = type { i32, i32, i32*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nci_uart.0*)* }
%struct.nci_uart.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @nci_uart_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_uart_tty_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.nci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nci_uart*
  store %struct.nci_uart* %8, %struct.nci_uart** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %12 = icmp ne %struct.nci_uart* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %16 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kfree_skb(i32 %17)
  %19 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %20 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree_skb(i32 %21)
  %23 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %24 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %23, i32 0, i32 4
  %25 = call i32 @skb_queue_purge(i32* %24)
  %26 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %27 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.nci_uart.0*)*, i32 (%struct.nci_uart.0*)** %28, align 8
  %30 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %31 = bitcast %struct.nci_uart* %30 to %struct.nci_uart.0*
  %32 = call i32 %29(%struct.nci_uart.0* %31)
  %33 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %34 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %36 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @module_put(i32 %37)
  %39 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %40 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %39, i32 0, i32 0
  %41 = call i32 @cancel_work_sync(i32* %40)
  %42 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %43 = call i32 @kfree(%struct.nci_uart* %42)
  br label %44

44:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.nci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
