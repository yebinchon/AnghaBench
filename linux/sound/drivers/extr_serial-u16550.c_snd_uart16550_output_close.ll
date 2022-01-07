; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_output_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_output_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_uart16550* }
%struct.snd_uart16550 = type { i64, i32, i32** }

@SERIAL_MODE_OUTPUT_OPEN = common dso_local global i64 0, align 8
@SERIAL_MODE_NOT_OPENED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_uart16550_output_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_uart16550_output_close(%struct.snd_rawmidi_substream* %0) #0 {
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
  %14 = load i64, i64* @SERIAL_MODE_OUTPUT_OPEN, align 8
  %15 = xor i64 %14, -1
  %16 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %17 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %21 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %24 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32*, i32** %22, i64 %25
  store i32* null, i32** %26, align 8
  %27 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %28 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SERIAL_MODE_NOT_OPENED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %34 = call i32 @snd_uart16550_do_close(%struct.snd_uart16550* %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.snd_uart16550*, %struct.snd_uart16550** %4, align 8
  %37 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %36, i32 0, i32 1
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_uart16550_do_close(%struct.snd_uart16550*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
