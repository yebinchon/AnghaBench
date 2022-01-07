; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_microii_spdif_default_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_microii_spdif_default_update.c"
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
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_list*)* @snd_microii_spdif_default_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_microii_spdif_default_update(%struct.usb_mixer_elem_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_elem_list*, align 8
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_mixer_elem_list* %0, %struct.usb_mixer_elem_list** %3, align 8
  %8 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %3, align 8
  %9 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %11, align 8
  store %struct.snd_usb_audio* %12, %struct.snd_usb_audio** %4, align 8
  %13 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %3, align 8
  %14 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %19 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %84

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = lshr i32 %25, 4
  %27 = and i32 %26, 240
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 15
  %30 = or i32 %27, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %32 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %35 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_sndctrlpipe(i32 %36, i32 0)
  %38 = load i32, i32* @UAC_SET_CUR, align 4
  %39 = load i32, i32* @USB_DIR_OUT, align 4
  %40 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @USB_RECIP_OTHER, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @snd_usb_ctl_msg(i32 %33, i32 %37, i32 %38, i32 %43, i32 %44, i32 2, i32* null, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %24
  br label %80

49:                                               ; preds = %24
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 160, i32 32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = lshr i32 %56, 12
  %58 = and i32 %57, 15
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %62 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %65 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_sndctrlpipe(i32 %66, i32 0)
  %68 = load i32, i32* @UAC_SET_CUR, align 4
  %69 = load i32, i32* @USB_DIR_OUT, align 4
  %70 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @USB_RECIP_OTHER, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @snd_usb_ctl_msg(i32 %63, i32 %67, i32 %68, i32 %73, i32 %74, i32 3, i32* null, i32 0)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %49
  br label %80

79:                                               ; preds = %49
  br label %80

80:                                               ; preds = %79, %78, %48
  %81 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %82 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %22
  %85 = load i32, i32* %2, align 4
  ret i32 %85
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
