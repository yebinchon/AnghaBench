; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_input_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_input_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mpu401 = type { i8 (%struct.snd_mpu401*, i32)*, i32, i32 }

@MPU401_MODE_BIT_INPUT_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mpu401*)* @snd_mpu401_uart_input_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_input_read(%struct.snd_mpu401* %0) #0 {
  %2 = alloca %struct.snd_mpu401*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.snd_mpu401* %0, %struct.snd_mpu401** %2, align 8
  store i32 128, i32* %3, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %3, align 4
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %11 = call i32 @snd_mpu401_input_avail(%struct.snd_mpu401* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %33

14:                                               ; preds = %9
  %15 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %16 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %15, i32 0, i32 0
  %17 = load i8 (%struct.snd_mpu401*, i32)*, i8 (%struct.snd_mpu401*, i32)** %16, align 8
  %18 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %19 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %20 = call i32 @MPU401D(%struct.snd_mpu401* %19)
  %21 = call zeroext i8 %17(%struct.snd_mpu401* %18, i32 %20)
  store i8 %21, i8* %4, align 1
  %22 = load i32, i32* @MPU401_MODE_BIT_INPUT_TRIGGER, align 4
  %23 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %24 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %23, i32 0, i32 2
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.snd_mpu401*, %struct.snd_mpu401** %2, align 8
  %29 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_rawmidi_receive(i32 %30, i8* %4, i32 1)
  br label %32

32:                                               ; preds = %27, %14
  br label %5

33:                                               ; preds = %13, %5
  ret void
}

declare dso_local i32 @snd_mpu401_input_avail(%struct.snd_mpu401*) #1

declare dso_local i32 @MPU401D(%struct.snd_mpu401*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @snd_rawmidi_receive(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
