; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mpu401 = type { i32 }

@MPU401_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MPU401_ENTER_UART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mpu401*)* @snd_mpu401_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mpu401_do_reset(%struct.snd_mpu401* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mpu401*, align 8
  store %struct.snd_mpu401* %0, %struct.snd_mpu401** %3, align 8
  %4 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %5 = load i32, i32* @MPU401_RESET, align 4
  %6 = call i64 @snd_mpu401_uart_cmd(%struct.snd_mpu401* %4, i32 %5, i32 1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %13 = load i32, i32* @MPU401_ENTER_UART, align 4
  %14 = call i64 @snd_mpu401_uart_cmd(%struct.snd_mpu401* %12, i32 %13, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %16, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @snd_mpu401_uart_cmd(%struct.snd_mpu401*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
