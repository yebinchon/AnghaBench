; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_add_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mpu401 = type { i32, i32, i32 }

@snd_mpu401_uart_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MPU401_MODE_INPUT_TIMER = common dso_local global i32 0, align 4
@MPU401_MODE_OUTPUT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mpu401*, i32)* @snd_mpu401_uart_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_add_timer(%struct.snd_mpu401* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mpu401*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_mpu401* %0, %struct.snd_mpu401** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %7 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %11 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %16 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %15, i32 0, i32 2
  %17 = load i32, i32* @snd_mpu401_uart_timer, align 4
  %18 = call i32 @timer_setup(i32* %16, i32 %17, i32 0)
  %19 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %20 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %19, i32 0, i32 2
  %21 = load i64, i64* @jiffies, align 8
  %22 = add nsw i64 1, %21
  %23 = call i32 @mod_timer(i32* %20, i64 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @MPU401_MODE_INPUT_TIMER, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @MPU401_MODE_OUTPUT_TIMER, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %34 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %38 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
