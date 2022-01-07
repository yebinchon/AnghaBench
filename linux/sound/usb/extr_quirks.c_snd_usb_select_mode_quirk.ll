; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_select_mode_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_select_mode_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { %struct.TYPE_4__*, %struct.usb_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.audioformat = type { i32, i32 }

@SNDRV_PCM_FMTBIT_DSD_U32_BE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_select_mode_quirk(%struct.snd_usb_substream* %0, %struct.audioformat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_substream*, align 8
  %5 = alloca %struct.audioformat*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %4, align 8
  store %struct.audioformat* %1, %struct.audioformat** %5, align 8
  %8 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %8, i32 0, i32 1
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_itf_usb_dsd_dac(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %2
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %23 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_set_interface(%struct.usb_device* %21, i32 %24, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %71

30:                                               ; preds = %20
  %31 = call i32 @msleep(i32 20)
  %32 = load %struct.audioformat*, %struct.audioformat** %5, align 8
  %33 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SNDRV_PCM_FMTBIT_DSD_U32_BE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %41 = call i32 @usb_sndctrlpipe(%struct.usb_device* %40, i32 0)
  %42 = load i32, i32* @USB_DIR_OUT, align 4
  %43 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %39, i32 %41, i32 0, i32 %46, i32 1, i32 1, i32* null, i32 0)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %71

52:                                               ; preds = %38
  br label %68

53:                                               ; preds = %30
  %54 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = call i32 @usb_sndctrlpipe(%struct.usb_device* %55, i32 0)
  %57 = load i32, i32* @USB_DIR_OUT, align 4
  %58 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %54, i32 %56, i32 0, i32 %61, i32 0, i32 1, i32* null, i32 0)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %52
  %69 = call i32 @msleep(i32 20)
  br label %70

70:                                               ; preds = %68, %2
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %65, %50, %28
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @is_itf_usb_dsd_dac(i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
