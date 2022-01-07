; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_uart.c_snd_gf1_uart_output_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_uart.c_snd_gf1_uart_output_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_gus_card* }
%struct.snd_gus_card = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@snd_gf1_interrupt_midi_in = common dso_local global i64 0, align 8
@SNDRV_GF1_HANDLER_MIDI_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_gf1_uart_output_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_uart_output_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_gus_card*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %5 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.snd_gus_card*, %struct.snd_gus_card** %8, align 8
  store %struct.snd_gus_card* %9, %struct.snd_gus_card** %4, align 8
  %10 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %15 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @snd_gf1_interrupt_midi_in, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %22 = call i32 @snd_gf1_uart_reset(%struct.snd_gus_card* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %25 = load i32, i32* @SNDRV_GF1_HANDLER_MIDI_OUT, align 4
  %26 = call i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card* %24, i32 %25)
  %27 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %30 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_gf1_uart_reset(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
