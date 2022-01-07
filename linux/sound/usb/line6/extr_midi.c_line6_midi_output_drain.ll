; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_midi.c_line6_midi_output_drain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_midi.c_line6_midi_output_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32 }
%struct.usb_line6 = type { %struct.snd_line6_midi* }
%struct.snd_line6_midi = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.usb_line6* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*)* @line6_midi_output_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_midi_output_drain(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.snd_line6_midi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %5 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %6 = call %struct.TYPE_2__* @line6_rawmidi_substream_midi(%struct.snd_rawmidi_substream* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.usb_line6*, %struct.usb_line6** %7, align 8
  store %struct.usb_line6* %8, %struct.usb_line6** %3, align 8
  %9 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %10 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %9, i32 0, i32 0
  %11 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %10, align 8
  store %struct.snd_line6_midi* %11, %struct.snd_line6_midi** %4, align 8
  %12 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %4, align 8
  %13 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %4, align 8
  %16 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @wait_event_interruptible(i32 %14, i32 %19)
  ret void
}

declare dso_local %struct.TYPE_2__* @line6_rawmidi_substream_midi(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
