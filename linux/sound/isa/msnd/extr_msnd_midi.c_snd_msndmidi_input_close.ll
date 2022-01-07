; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_midi.c_snd_msndmidi_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_midi.c_snd_msndmidi_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_msndmidi* }
%struct.snd_msndmidi = type { i32, i32*, i32 }

@HDEX_MIDI_IN_STOP = common dso_local global i32 0, align 4
@MSNDMIDI_MODE_BIT_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_msndmidi_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msndmidi_input_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_msndmidi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %4 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %7, align 8
  store %struct.snd_msndmidi* %8, %struct.snd_msndmidi** %3, align 8
  %9 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %3, align 8
  %10 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HDEX_MIDI_IN_STOP, align 4
  %13 = call i32 @snd_msnd_send_dsp_cmd(i32 %11, i32 %12)
  %14 = load i32, i32* @MSNDMIDI_MODE_BIT_INPUT, align 4
  %15 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %3, align 8
  %16 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %15, i32 0, i32 2
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %3, align 8
  %19 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %3, align 8
  %21 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_msnd_disable_irq(i32 %22)
  ret i32 0
}

declare dso_local i32 @snd_msnd_send_dsp_cmd(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @snd_msnd_disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
