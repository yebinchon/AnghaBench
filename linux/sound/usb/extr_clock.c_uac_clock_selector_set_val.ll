; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_uac_clock_selector_set_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_uac_clock_selector_set_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }

@UAC2_CS_CUR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@UAC2_CX_CLOCK_SELECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"setting selector (id %d) unexpected length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"setting selector (id %d) to %x failed (current: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, i8)* @uac_clock_selector_set_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uac_clock_selector_set_val(%struct.snd_usb_audio* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %9 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %10 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %13 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_sndctrlpipe(i32 %14, i32 0)
  %16 = load i32, i32* @UAC2_CS_CUR, align 4
  %17 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %18 = load i32, i32* @USB_TYPE_CLASS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USB_DIR_OUT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @UAC2_CX_CLOCK_SELECTOR, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %25 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %24)
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %25, %27
  %29 = call i32 @snd_usb_ctl_msg(i32 %11, i32 %15, i32 %16, i32 %21, i32 %23, i32 %28, i8* %7, i32 1)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %69

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = trunc i32 %41 to i8
  %43 = call i32 (%struct.snd_usb_audio*, i8*, i32, i8, ...) @usb_audio_err(%struct.snd_usb_audio* %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %40, i8 zeroext %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %34
  %47 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @uac_clock_selector_get_val(%struct.snd_usb_audio* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %69

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i8, i8* %7, align 1
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.snd_usb_audio*, i8*, i32, i8, ...) @usb_audio_err(%struct.snd_usb_audio* %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %61, i8 zeroext %62, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %59, %52, %38, %32
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*, i32, i8 zeroext, ...) #1

declare dso_local i32 @uac_clock_selector_get_val(%struct.snd_usb_audio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
