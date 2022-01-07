; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_xonar_u1_switch_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_xonar_u1_switch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i8)* @snd_xonar_u1_switch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_xonar_u1_switch_update(%struct.usb_mixer_interface* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %9 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %8, i32 0, i32 0
  %10 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %9, align 8
  store %struct.snd_usb_audio* %10, %struct.snd_usb_audio** %6, align 8
  %11 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %12 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %19 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %22 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_sndctrlpipe(i32 %23, i32 0)
  %25 = load i32, i32* @USB_DIR_OUT, align 4
  %26 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_RECIP_OTHER, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @snd_usb_ctl_msg(i32 %20, i32 %24, i32 8, i32 %29, i32 50, i32 0, i8* %5, i32 1)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %32 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %17, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
