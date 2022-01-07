; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_tty_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_tty_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.nci_uart = type { i32, %struct.TYPE_2__, %struct.tty_struct* }
%struct.TYPE_2__ = type { i32 (%struct.nci_uart.0*, i8*, i8*, i32)* }
%struct.nci_uart.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32*, i8*, i32)* @nci_uart_tty_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_uart_tty_receive(%struct.tty_struct* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.nci_uart*
  store %struct.nci_uart* %14, %struct.nci_uart** %9, align 8
  %15 = load %struct.nci_uart*, %struct.nci_uart** %9, align 8
  %16 = icmp ne %struct.nci_uart* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = load %struct.nci_uart*, %struct.nci_uart** %9, align 8
  %20 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %19, i32 0, i32 2
  %21 = load %struct.tty_struct*, %struct.tty_struct** %20, align 8
  %22 = icmp ne %struct.tty_struct* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  br label %44

24:                                               ; preds = %17
  %25 = load %struct.nci_uart*, %struct.nci_uart** %9, align 8
  %26 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.nci_uart*, %struct.nci_uart** %9, align 8
  %29 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.nci_uart.0*, i8*, i8*, i32)*, i32 (%struct.nci_uart.0*, i8*, i8*, i32)** %30, align 8
  %32 = load %struct.nci_uart*, %struct.nci_uart** %9, align 8
  %33 = bitcast %struct.nci_uart* %32 to %struct.nci_uart.0*
  %34 = load i32*, i32** %6, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 %31(%struct.nci_uart.0* %33, i8* %35, i8* %36, i32 %37)
  %39 = load %struct.nci_uart*, %struct.nci_uart** %9, align 8
  %40 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %43 = call i32 @tty_unthrottle(%struct.tty_struct* %42)
  br label %44

44:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
