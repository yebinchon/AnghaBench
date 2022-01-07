; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_do_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_do_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_uart16550 = type { i64, i32, i64, i32, i32, i32, i64 }

@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@UART_IIR = common dso_local global i64 0, align 8
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i64 0, align 8
@UART_DLL = common dso_local global i64 0, align 8
@UART_DLM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_uart16550*)* @snd_uart16550_do_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_uart16550_do_close(%struct.snd_uart16550* %0) #0 {
  %2 = alloca %struct.snd_uart16550*, align 8
  store %struct.snd_uart16550* %0, %struct.snd_uart16550** %2, align 8
  %3 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %4 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %9 = call i32 @snd_uart16550_del_timer(%struct.snd_uart16550* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @UART_IER_RDI, align 4
  %12 = and i32 0, %11
  %13 = load i32, i32* @UART_IER_THRI, align 4
  %14 = and i32 0, %13
  %15 = or i32 %12, %14
  %16 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %17 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UART_IER, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %15, i64 %20)
  %22 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %23 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %25 [
    i32 128, label %40
    i32 129, label %40
    i32 130, label %54
  ]

25:                                               ; preds = %10
  %26 = load i32, i32* @UART_MCR_RTS, align 4
  %27 = and i32 0, %26
  %28 = load i32, i32* @UART_MCR_DTR, align 4
  %29 = and i32 0, %28
  %30 = or i32 %27, %29
  %31 = load i32, i32* @UART_MCR_OUT2, align 4
  %32 = and i32 0, %31
  %33 = or i32 %30, %32
  %34 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %35 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UART_MCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 %33, i64 %38)
  br label %67

40:                                               ; preds = %10, %10
  %41 = load i32, i32* @UART_MCR_RTS, align 4
  %42 = load i32, i32* @UART_MCR_DTR, align 4
  %43 = and i32 0, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @UART_MCR_OUT2, align 4
  %46 = and i32 0, %45
  %47 = or i32 %44, %46
  %48 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %49 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UART_MCR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outb(i32 %47, i64 %52)
  br label %67

54:                                               ; preds = %10
  %55 = load i32, i32* @UART_MCR_RTS, align 4
  %56 = load i32, i32* @UART_MCR_DTR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UART_MCR_OUT2, align 4
  %59 = and i32 0, %58
  %60 = or i32 %57, %59
  %61 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %62 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UART_MCR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 %60, i64 %65)
  br label %67

67:                                               ; preds = %54, %40, %25
  %68 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %69 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UART_IIR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @inb(i64 %72)
  %74 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %75 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %67
  %79 = load i32, i32* @UART_LCR_DLAB, align 4
  %80 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %81 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UART_LCR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 %79, i64 %84)
  %86 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %87 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %90 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UART_DLL, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outb(i32 %88, i64 %93)
  %95 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %96 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %99 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @UART_DLM, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outb(i32 %97, i64 %102)
  %104 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %105 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %108 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @UART_LCR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @outb(i32 %106, i64 %111)
  br label %113

113:                                              ; preds = %78, %67
  ret void
}

declare dso_local i32 @snd_uart16550_del_timer(%struct.snd_uart16550*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
