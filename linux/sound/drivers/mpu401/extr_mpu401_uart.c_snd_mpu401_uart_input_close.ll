; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_mpu401* }
%struct.snd_mpu401 = type { i32 (%struct.snd_mpu401*)*, i32, i32* }

@MPU401_MODE_BIT_INPUT = common dso_local global i32 0, align 4
@MPU401_MODE_BIT_OUTPUT = common dso_local global i32 0, align 4
@MPU401_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_mpu401_uart_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mpu401_uart_input_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_mpu401*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_mpu401*, %struct.snd_mpu401** %9, align 8
  store %struct.snd_mpu401* %10, %struct.snd_mpu401** %4, align 8
  %11 = load i32, i32* @MPU401_MODE_BIT_INPUT, align 4
  %12 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %13 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %12, i32 0, i32 1
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %16 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @MPU401_MODE_BIT_OUTPUT, align 4
  %18 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %19 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %18, i32 0, i32 1
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %24 = load i32, i32* @MPU401_RESET, align 4
  %25 = call i32 @snd_mpu401_uart_cmd(%struct.snd_mpu401* %23, i32 %24, i32 0)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %28 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %27, i32 0, i32 0
  %29 = load i32 (%struct.snd_mpu401*)*, i32 (%struct.snd_mpu401*)** %28, align 8
  %30 = icmp ne i32 (%struct.snd_mpu401*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %33 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_mpu401*)*, i32 (%struct.snd_mpu401*)** %33, align 8
  %35 = load %struct.snd_mpu401*, %struct.snd_mpu401** %4, align 8
  %36 = call i32 %34(%struct.snd_mpu401* %35)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @snd_mpu401_uart_cmd(%struct.snd_mpu401*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
