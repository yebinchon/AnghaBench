; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-midi.c_midi_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-midi.c_midi_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_ff* }
%struct.snd_ff = type { i32*, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @midi_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midi_playback_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_ff*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %4 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.snd_ff*, %struct.snd_ff** %7, align 8
  store %struct.snd_ff* %8, %struct.snd_ff** %3, align 8
  %9 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %17 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %24 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %27 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %32 = call i32 @WRITE_ONCE(i32 %30, %struct.snd_rawmidi_substream* %31)
  ret i32 0
}

declare dso_local i32 @WRITE_ONCE(i32, %struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
