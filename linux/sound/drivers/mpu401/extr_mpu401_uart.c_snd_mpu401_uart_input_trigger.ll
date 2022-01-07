; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_input_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_mpu401* }
%struct.snd_mpu401 = type { i32, i32, i32, i32 (%struct.snd_mpu401*, i32)* }

@MPU401_MODE_BIT_INPUT_TRIGGER = common dso_local global i32 0, align 4
@MPU401_INFO_USE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_mpu401_uart_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_mpu401*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 64, i32* %7, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_mpu401*, %struct.snd_mpu401** %11, align 8
  store %struct.snd_mpu401* %12, %struct.snd_mpu401** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @MPU401_MODE_BIT_INPUT_TRIGGER, align 4
  %17 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %18 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %17, i32 0, i32 1
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %28 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %27, i32 0, i32 3
  %29 = load i32 (%struct.snd_mpu401*, i32)*, i32 (%struct.snd_mpu401*, i32)** %28, align 8
  %30 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %31 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %32 = call i32 @MPU401D(%struct.snd_mpu401* %31)
  %33 = call i32 %29(%struct.snd_mpu401* %30, i32 %32)
  br label %22

34:                                               ; preds = %22
  %35 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %36 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MPU401_INFO_USE_TIMER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %43 = call i32 @snd_mpu401_uart_add_timer(%struct.snd_mpu401* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %44, %15
  %46 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %47 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %46, i32 0, i32 2
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %51 = call i32 @snd_mpu401_uart_input_read(%struct.snd_mpu401* %50)
  %52 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %53 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %52, i32 0, i32 2
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %71

56:                                               ; preds = %2
  %57 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %58 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MPU401_INFO_USE_TIMER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %65 = call i32 @snd_mpu401_uart_remove_timer(%struct.snd_mpu401* %64, i32 1)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32, i32* @MPU401_MODE_BIT_INPUT_TRIGGER, align 4
  %68 = load %struct.snd_mpu401*, %struct.snd_mpu401** %6, align 8
  %69 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %68, i32 0, i32 1
  %70 = call i32 @clear_bit(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %45
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @MPU401D(%struct.snd_mpu401*) #1

declare dso_local i32 @snd_mpu401_uart_add_timer(%struct.snd_mpu401*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_mpu401_uart_input_read(%struct.snd_mpu401*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_mpu401_uart_remove_timer(%struct.snd_mpu401*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
