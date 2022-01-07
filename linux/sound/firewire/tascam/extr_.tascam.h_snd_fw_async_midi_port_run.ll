; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_.tascam.h_snd_fw_async_midi_port_run.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_.tascam.h_snd_fw_async_midi_port_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_fw_async_midi_port = type { i32, %struct.snd_rawmidi_substream*, i32 }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_fw_async_midi_port*, %struct.snd_rawmidi_substream*)* @snd_fw_async_midi_port_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_fw_async_midi_port_run(%struct.snd_fw_async_midi_port* %0, %struct.snd_rawmidi_substream* %1) #0 {
  %3 = alloca %struct.snd_fw_async_midi_port*, align 8
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.snd_fw_async_midi_port* %0, %struct.snd_fw_async_midi_port** %3, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %4, align 8
  %5 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %3, align 8
  %6 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %11 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %3, align 8
  %12 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %11, i32 0, i32 1
  store %struct.snd_rawmidi_substream* %10, %struct.snd_rawmidi_substream** %12, align 8
  %13 = load %struct.snd_fw_async_midi_port*, %struct.snd_fw_async_midi_port** %3, align 8
  %14 = getelementptr inbounds %struct.snd_fw_async_midi_port, %struct.snd_fw_async_midi_port* %13, i32 0, i32 0
  %15 = call i32 @schedule_work(i32* %14)
  br label %16

16:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
