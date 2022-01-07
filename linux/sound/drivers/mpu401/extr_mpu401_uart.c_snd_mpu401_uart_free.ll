; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/mpu401/extr_mpu401_uart.c_snd_mpu401_uart_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi = type { %struct.snd_mpu401* }
%struct.snd_mpu401 = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi*)* @snd_mpu401_uart_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mpu401_uart_free(%struct.snd_rawmidi* %0) #0 {
  %2 = alloca %struct.snd_rawmidi*, align 8
  %3 = alloca %struct.snd_mpu401*, align 8
  store %struct.snd_rawmidi* %0, %struct.snd_rawmidi** %2, align 8
  %4 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %4, i32 0, i32 0
  %6 = load %struct.snd_mpu401*, %struct.snd_mpu401** %5, align 8
  store %struct.snd_mpu401* %6, %struct.snd_mpu401** %3, align 8
  %7 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %8 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %13 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %16 = bitcast %struct.snd_mpu401* %15 to i8*
  %17 = call i32 @free_irq(i64 %14, i8* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %20 = getelementptr inbounds %struct.snd_mpu401, %struct.snd_mpu401* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @release_and_free_resource(i32 %21)
  %23 = load %struct.snd_mpu401*, %struct.snd_mpu401** %3, align 8
  %24 = call i32 @kfree(%struct.snd_mpu401* %23)
  ret void
}

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @kfree(%struct.snd_mpu401*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
