; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_midi_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-scs1x.c_midi_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fw_scs1x* }
%struct.fw_scs1x = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @midi_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midi_playback_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_scs1x*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.fw_scs1x*, %struct.fw_scs1x** %9, align 8
  store %struct.fw_scs1x* %10, %struct.fw_scs1x** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %15 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %17 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %19 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %21 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %23 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %25 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %27 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %30 = call i32 @WRITE_ONCE(i32 %28, %struct.snd_rawmidi_substream* %29)
  %31 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %32 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %31, i32 0, i32 5
  %33 = call i32 @schedule_work(i32* %32)
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.fw_scs1x*, %struct.fw_scs1x** %5, align 8
  %36 = getelementptr inbounds %struct.fw_scs1x, %struct.fw_scs1x* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @WRITE_ONCE(i32 %37, %struct.snd_rawmidi_substream* null)
  br label %39

39:                                               ; preds = %34, %13
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, %struct.snd_rawmidi_substream*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
