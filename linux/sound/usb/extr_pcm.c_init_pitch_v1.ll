; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_init_pitch_v1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_init_pitch_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.audioformat = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UAC_SET_CUR = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@UAC_EP_CS_ATTR_PITCH_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d:%d: cannot set enable PITCH\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, %struct.usb_host_interface*, %struct.audioformat*)* @init_pitch_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pitch_v1(%struct.snd_usb_audio* %0, i32 %1, %struct.usb_host_interface* %2, %struct.audioformat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.audioformat*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %8, align 8
  store %struct.audioformat* %3, %struct.audioformat** %9, align 8
  %14 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %15 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %14, i32 0, i32 0
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %10, align 8
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %18 = call %struct.TYPE_3__* @get_iface_desc(%struct.usb_host_interface* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %54

25:                                               ; preds = %4
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %27 = call %struct.TYPE_4__* @get_endpoint(%struct.usb_host_interface* %26, i32 0)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  store i8 1, i8* %30, align 1
  %31 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %33 = call i32 @usb_sndctrlpipe(%struct.usb_device* %32, i32 0)
  %34 = load i32, i32* @UAC_SET_CUR, align 4
  %35 = load i32, i32* @USB_TYPE_CLASS, align 4
  %36 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @USB_DIR_OUT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @UAC_EP_CS_ATTR_PITCH_CONTROL, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %44 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %31, i32 %33, i32 %34, i32 %39, i32 %41, i32 %42, i8* %43, i32 1)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %25
  %48 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @usb_audio_err(%struct.snd_usb_audio* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %5, align 4
  br label %54

53:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %47, %22
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_3__* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local %struct.TYPE_4__* @get_endpoint(%struct.usb_host_interface*, i32) #1

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
