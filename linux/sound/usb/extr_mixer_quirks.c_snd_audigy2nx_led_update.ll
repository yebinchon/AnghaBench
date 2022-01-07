; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_audigy2nx_led_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_audigy2nx_led_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i64, i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i32, i32)* @snd_audigy2nx_led_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_audigy2nx_led_update(%struct.usb_mixer_interface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_mixer_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_usb_audio*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %5, align 8
  %11 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %10, i32 0, i32 0
  %12 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %11, align 8
  store %struct.snd_usb_audio* %12, %struct.snd_usb_audio** %8, align 8
  %13 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %14 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %88

19:                                               ; preds = %3
  %20 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %21 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @USB_ID(i32 1054, i32 12354)
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %27 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %30 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_sndctrlpipe(i32 %31, i32 0)
  %33 = load i32, i32* @USB_DIR_OUT, align 4
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @USB_RECIP_OTHER, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @snd_usb_ctl_msg(i32 %28, i32 %32, i32 36, i32 %37, i32 %41, i32 0, i32* null, i32 0)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %25, %19
  %44 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %45 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @USB_ID(i32 1054, i32 12511)
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %51 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %54 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @usb_sndctrlpipe(i32 %55, i32 0)
  %57 = load i32, i32* @USB_DIR_OUT, align 4
  %58 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @USB_RECIP_OTHER, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @snd_usb_ctl_msg(i32 %52, i32 %56, i32 36, i32 %61, i32 %65, i32 0, i32* null, i32 0)
  store i32 %66, i32* %9, align 4
  br label %84

67:                                               ; preds = %43
  %68 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %69 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %72 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @usb_sndctrlpipe(i32 %73, i32 0)
  %75 = load i32, i32* @USB_DIR_OUT, align 4
  %76 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @USB_RECIP_OTHER, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 2
  %83 = call i32 @snd_usb_ctl_msg(i32 %70, i32 %74, i32 36, i32 %79, i32 %80, i32 %82, i32* null, i32 0)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %67, %49
  %85 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %8, align 8
  %86 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
