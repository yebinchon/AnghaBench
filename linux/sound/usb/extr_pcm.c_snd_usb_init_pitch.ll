; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_init_pitch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_init_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.audioformat = type { i32, i32 }

@UAC_EP_CS_ATTR_PITCH_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_init_pitch(%struct.snd_usb_audio* %0, i32 %1, %struct.usb_host_interface* %2, %struct.audioformat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.audioformat*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %8, align 8
  store %struct.audioformat* %3, %struct.audioformat** %9, align 8
  %10 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  %11 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UAC_EP_CS_ATTR_PITCH_CONTROL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

17:                                               ; preds = %4
  %18 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  %19 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %22 [
    i32 129, label %21
    i32 128, label %28
  ]

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %17, %21
  %23 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %26 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  %27 = call i32 @init_pitch_v1(%struct.snd_usb_audio* %23, i32 %24, %struct.usb_host_interface* %25, %struct.audioformat* %26)
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %17
  %29 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %32 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  %33 = call i32 @init_pitch_v2(%struct.snd_usb_audio* %29, i32 %30, %struct.usb_host_interface* %31, %struct.audioformat* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %22, %16
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @init_pitch_v1(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*) #1

declare dso_local i32 @init_pitch_v2(%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
