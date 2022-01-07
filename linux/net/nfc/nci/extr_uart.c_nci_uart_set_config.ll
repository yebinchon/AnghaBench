; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_uart = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ktermios }
%struct.ktermios = type { i32 }

@CRTSCTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nci_uart_set_config(%struct.nci_uart* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nci_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ktermios, align 4
  store %struct.nci_uart* %0, %struct.nci_uart** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nci_uart*, %struct.nci_uart** %4, align 8
  %9 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %51

13:                                               ; preds = %3
  %14 = load %struct.nci_uart*, %struct.nci_uart** %4, align 8
  %15 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.nci_uart*, %struct.nci_uart** %4, align 8
  %20 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = bitcast %struct.ktermios* %7 to i8*
  %24 = bitcast %struct.ktermios* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.nci_uart*, %struct.nci_uart** %4, align 8
  %26 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @up_read(i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %7, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %13
  %36 = load i32, i32* @CRTSCTS, align 4
  %37 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %46

40:                                               ; preds = %13
  %41 = load i32, i32* @CRTSCTS, align 4
  %42 = xor i32 %41, -1
  %43 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.nci_uart*, %struct.nci_uart** %4, align 8
  %48 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @tty_set_termios(%struct.TYPE_2__* %49, %struct.ktermios* %7)
  br label %51

51:                                               ; preds = %46, %12
  ret void
}

declare dso_local i32 @down_read(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @tty_set_termios(%struct.TYPE_2__*, %struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
