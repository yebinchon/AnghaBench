; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_audigy2nx_boot_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_audigy2nx_boot_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @snd_usb_audigy2nx_boot_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_audigy2nx_boot_quirk(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i64 1, i64* %4, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %6, i32 0)
  %8 = load i32, i32* @USB_DIR_IN, align 4
  %9 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @USB_RECIP_OTHER, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %5, i32 %7, i32 42, i32 %12, i32 0, i32 0, i64* %4, i32 1)
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = call i32 @usb_sndctrlpipe(%struct.usb_device* %18, i32 0)
  %20 = load i32, i32* @USB_DIR_OUT, align 4
  %21 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @USB_RECIP_OTHER, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %17, i32 %19, i32 41, i32 %24, i32 1, i32 2000, i64* null, i32 0)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
