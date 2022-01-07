; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_init_pitch_v2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_init_pitch_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.audioformat = type { i32 }

@UAC2_CS_CUR = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@UAC2_EP_CS_PITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%d:%d: cannot set enable PITCH (v2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*)* @init_pitch_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pitch_v2(%struct.snd_usb_audio* %0, i32 %1, %struct.usb_host_interface* %2, %struct.audioformat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.audioformat*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca [1 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %8, align 8
  store %struct.audioformat* %3, %struct.audioformat** %9, align 8
  %13 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %14 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %13, i32 0, i32 0
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  %16 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  store i8 1, i8* %16, align 1
  %17 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %19 = call i32 @usb_sndctrlpipe(%struct.usb_device* %18, i32 0)
  %20 = load i32, i32* @UAC2_CS_CUR, align 4
  %21 = load i32, i32* @USB_TYPE_CLASS, align 4
  %22 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @USB_DIR_OUT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UAC2_EP_CS_PITCH, align 4
  %27 = shl i32 %26, 8
  %28 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0
  %29 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %17, i32 %19, i32 %20, i32 %25, i32 %27, i32 0, i8* %28, i32 1)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.audioformat*, %struct.audioformat** %9, align 8
  %36 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_audio_err(%struct.snd_usb_audio* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
