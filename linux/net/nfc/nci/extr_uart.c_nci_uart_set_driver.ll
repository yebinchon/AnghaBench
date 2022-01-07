; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_set_driver.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_uart.c_nci_uart_set_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.nci_uart* }
%struct.nci_uart = type { %struct.TYPE_2__, i32, i32, i32, i32, %struct.tty_struct* }
%struct.TYPE_2__ = type { i32 (%struct.nci_uart*)*, i32 (%struct.nci_uart*)* }

@NCI_UART_DRIVER_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nci_uart_drivers = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nci_uart_write_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @nci_uart_set_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_uart_set_driver(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_uart*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nci_uart* null, %struct.nci_uart** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NCI_UART_DRIVER_MAX, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %91

14:                                               ; preds = %2
  %15 = load i32*, i32** @nci_uart_drivers, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %14
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nci_uart* @kzalloc(i32 40, i32 %25)
  store %struct.nci_uart* %26, %struct.nci_uart** %6, align 8
  %27 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %28 = icmp ne %struct.nci_uart* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %91

32:                                               ; preds = %24
  %33 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %34 = load i32*, i32** @nci_uart_drivers, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(%struct.nci_uart* %33, i32 %38, i32 40)
  %40 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %41 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %42 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %41, i32 0, i32 5
  store %struct.tty_struct* %40, %struct.tty_struct** %42, align 8
  %43 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 0
  store %struct.nci_uart* %43, %struct.nci_uart** %45, align 8
  %46 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %47 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %46, i32 0, i32 4
  %48 = call i32 @skb_queue_head_init(i32* %47)
  %49 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %50 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %49, i32 0, i32 3
  %51 = load i32, i32* @nci_uart_write_work, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %54 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %53, i32 0, i32 2
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %57 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.nci_uart*)*, i32 (%struct.nci_uart*)** %58, align 8
  %60 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %61 = call i32 %59(%struct.nci_uart* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %32
  %65 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 0
  store %struct.nci_uart* null, %struct.nci_uart** %66, align 8
  %67 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %68 = call i32 @kfree(%struct.nci_uart* %67)
  br label %89

69:                                               ; preds = %32
  %70 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %71 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @try_module_get(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %69
  %76 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %77 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (%struct.nci_uart*)*, i32 (%struct.nci_uart*)** %78, align 8
  %80 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %81 = call i32 %79(%struct.nci_uart* %80)
  %82 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %83 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %82, i32 0, i32 0
  store %struct.nci_uart* null, %struct.nci_uart** %83, align 8
  %84 = load %struct.nci_uart*, %struct.nci_uart** %6, align 8
  %85 = call i32 @kfree(%struct.nci_uart* %84)
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %75, %29, %21, %11
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.nci_uart* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.nci_uart*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.nci_uart*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
