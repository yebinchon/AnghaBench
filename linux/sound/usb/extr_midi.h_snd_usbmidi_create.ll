; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.h_snd_usbmidi_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.h_snd_usbmidi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.usb_interface = type { i32 }
%struct.list_head = type { i32 }
%struct.snd_usb_audio_quirk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.usb_interface*, %struct.list_head*, %struct.snd_usb_audio_quirk*)* @snd_usbmidi_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_create(%struct.snd_card* %0, %struct.usb_interface* %1, %struct.list_head* %2, %struct.snd_usb_audio_quirk* %3) #0 {
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.snd_usb_audio_quirk*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.snd_usb_audio_quirk* %3, %struct.snd_usb_audio_quirk** %8, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %11 = load %struct.list_head*, %struct.list_head** %7, align 8
  %12 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %8, align 8
  %13 = call i32 @__snd_usbmidi_create(%struct.snd_card* %9, %struct.usb_interface* %10, %struct.list_head* %11, %struct.snd_usb_audio_quirk* %12, i32 0)
  ret i32 %13
}

declare dso_local i32 @__snd_usbmidi_create(%struct.snd_card*, %struct.usb_interface*, %struct.list_head*, %struct.snd_usb_audio_quirk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
