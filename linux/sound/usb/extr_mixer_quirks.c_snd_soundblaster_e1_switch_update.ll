; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_soundblaster_e1_switch_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_soundblaster_e1_switch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i8)* @snd_soundblaster_e1_switch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soundblaster_e1_switch_update(%struct.usb_mixer_interface* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %9, i32 0, i32 0
  %11 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  store %struct.snd_usb_audio* %11, %struct.snd_usb_audio** %6, align 8
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 2, i8* %12, align 1
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 0
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %18, i8* %19, align 1
  %20 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %21 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %28 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %31 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_sndctrlpipe(i32 %32, i32 0)
  %34 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %35 = load i32, i32* @USB_TYPE_CLASS, align 4
  %36 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @USB_DIR_OUT, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %41 = call i32 @snd_usb_ctl_msg(i32 %29, i32 %33, i32 %34, i32 %39, i32 514, i32 3, i8* %40, i32 2)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %43 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %26, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
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
