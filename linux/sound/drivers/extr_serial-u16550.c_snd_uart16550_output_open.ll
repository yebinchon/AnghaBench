; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_output_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_uart16550* }
%struct.snd_uart16550 = type { i64, i32, %struct.snd_rawmidi_substream** }

@SERIAL_MODE_NOT_OPENED = common dso_local global i64 0, align 8
@SERIAL_MODE_OUTPUT_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_uart16550_output_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_uart16550_output_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_uart16550*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %5 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.snd_uart16550*, %struct.snd_uart16550** %8, align 8
  store %struct.snd_uart16550* %9, %struct.snd_uart16550** %4, align 8
  %10 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %11 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %10, i32 0, i32 1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %15 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SERIAL_MODE_NOT_OPENED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %21 = call i32 @snd_uart16550_do_open(%struct.snd_uart16550* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i64, i64* @SERIAL_MODE_OUTPUT_OPEN, align 8
  %24 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %25 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %29 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %30 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %29, i32 0, i32 2
  %31 = load %struct.snd_rawmidi_substream**, %struct.snd_rawmidi_substream*** %30, align 8
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %31, i64 %34
  store %struct.snd_rawmidi_substream* %28, %struct.snd_rawmidi_substream** %35, align 8
  %36 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %37 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %36, i32 0, i32 1
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_uart16550_do_open(%struct.snd_uart16550*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
