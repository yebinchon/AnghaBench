; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_autodetect_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_create_autodetect_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_driver = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*)* @create_autodetect_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_autodetect_quirk(%struct.snd_usb_audio* %0, %struct.usb_interface* %1, %struct.usb_driver* %2) #0 {
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store %struct.usb_driver* %2, %struct.usb_driver** %6, align 8
  %8 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %10 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %11 = call i32 @create_auto_pcm_quirk(%struct.snd_usb_audio* %8, %struct.usb_interface* %9, %struct.usb_driver* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %19 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %20 = call i32 @create_auto_midi_quirk(%struct.snd_usb_audio* %17, %struct.usb_interface* %18, %struct.usb_driver* %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i32 @create_auto_pcm_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*) #1

declare dso_local i32 @create_auto_midi_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
