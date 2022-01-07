; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_get_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_get_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi = type { %struct.snd_usb_midi* }
%struct.snd_usb_midi = type { i32 }
%struct.snd_seq_port_info = type { i32, i32 }
%struct.port_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)* @snd_usbmidi_get_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_get_port_info(%struct.snd_rawmidi* %0, i32 %1, %struct.snd_seq_port_info* %2) #0 {
  %4 = alloca %struct.snd_rawmidi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_port_info*, align 8
  %7 = alloca %struct.snd_usb_midi*, align 8
  %8 = alloca %struct.port_info*, align 8
  store %struct.snd_rawmidi* %0, %struct.snd_rawmidi** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_seq_port_info* %2, %struct.snd_seq_port_info** %6, align 8
  %9 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %9, i32 0, i32 0
  %11 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %10, align 8
  store %struct.snd_usb_midi* %11, %struct.snd_usb_midi** %7, align 8
  %12 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.port_info* @find_port_info(%struct.snd_usb_midi* %12, i32 %13)
  store %struct.port_info* %14, %struct.port_info** %8, align 8
  %15 = load %struct.port_info*, %struct.port_info** %8, align 8
  %16 = icmp ne %struct.port_info* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.port_info*, %struct.port_info** %8, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %22 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.port_info*, %struct.port_info** %8, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %27 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %17, %3
  ret void
}

declare dso_local %struct.port_info* @find_port_info(%struct.snd_usb_midi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
