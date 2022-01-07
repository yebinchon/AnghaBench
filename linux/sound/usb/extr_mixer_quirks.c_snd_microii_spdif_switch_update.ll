; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_microii_spdif_switch_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_microii_spdif_switch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_list = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@UAC_SET_CUR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_list*)* @snd_microii_spdif_switch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_microii_spdif_switch_update(%struct.usb_mixer_elem_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_elem_list*, align 8
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_mixer_elem_list* %0, %struct.usb_mixer_elem_list** %3, align 8
  %7 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %3, align 8
  %8 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %10, align 8
  store %struct.snd_usb_audio* %11, %struct.snd_usb_audio** %4, align 8
  %12 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %3, align 8
  %13 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %18 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %1
  %24 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %25 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %28 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_sndctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* @UAC_SET_CUR, align 4
  %32 = load i32, i32* @USB_DIR_OUT, align 4
  %33 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_OTHER, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @snd_usb_ctl_msg(i32 %26, i32 %30, i32 %31, i32 %36, i32 %37, i32 9, i32* null, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %40 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %23, %21
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
