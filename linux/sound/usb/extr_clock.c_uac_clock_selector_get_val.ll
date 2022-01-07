; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_uac_clock_selector_get_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_uac_clock_selector_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }

@UAC2_CS_CUR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@UAC2_CX_CLOCK_SELECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32)* @uac_clock_selector_get_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uac_clock_selector_get_val(%struct.snd_usb_audio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %9 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %12 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_rcvctrlpipe(i32 %13, i32 0)
  %15 = load i32, i32* @UAC2_CS_CUR, align 4
  %16 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %17 = load i32, i32* @USB_TYPE_CLASS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @USB_DIR_IN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @UAC2_CX_CLOCK_SELECTOR, align 4
  %22 = shl i32 %21, 8
  %23 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %24 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %23)
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %24, %26
  %28 = call i32 @snd_usb_ctl_msg(i32 %10, i32 %14, i32 %15, i32 %20, i32 %22, i32 %27, i8* %6, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
