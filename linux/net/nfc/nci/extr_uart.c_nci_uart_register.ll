; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_uart = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@nci_uart_send = common dso_local global i32 0, align 4
@nci_uart_default_recv_buf = common dso_local global i64 0, align 8
@nci_uart_default_recv = common dso_local global i64 0, align 8
@nci_uart_drivers = common dso_local global %struct.nci_uart** null, align 8
@.str = private unnamed_addr constant [33 x i8] c"driver %d is already registered\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"NCI uart driver '%s [%d]' registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_uart_register(%struct.nci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_uart*, align 8
  store %struct.nci_uart* %0, %struct.nci_uart** %3, align 8
  %4 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %5 = icmp ne %struct.nci_uart* %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %14 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %20 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %12, %6, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %18
  %28 = load i32, i32* @nci_uart_send, align 4
  %29 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %30 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %33 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %27
  %38 = load i64, i64* @nci_uart_default_recv_buf, align 8
  %39 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %40 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %27
  %43 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %44 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* @nci_uart_default_recv, align 8
  %50 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %51 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.nci_uart**, %struct.nci_uart*** @nci_uart_drivers, align 8
  %55 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %56 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.nci_uart*, %struct.nci_uart** %54, i64 %57
  %59 = load %struct.nci_uart*, %struct.nci_uart** %58, align 8
  %60 = icmp ne %struct.nci_uart* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %63 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %82

68:                                               ; preds = %53
  %69 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %70 = load %struct.nci_uart**, %struct.nci_uart*** @nci_uart_drivers, align 8
  %71 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %72 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.nci_uart*, %struct.nci_uart** %70, i64 %73
  store %struct.nci_uart* %69, %struct.nci_uart** %74, align 8
  %75 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %76 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %79 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %68, %61, %24
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @pr_info(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
