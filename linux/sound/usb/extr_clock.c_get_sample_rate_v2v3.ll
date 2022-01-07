; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_get_sample_rate_v2v3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_clock.c_get_sample_rate_v2v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@UAC2_CS_CUR = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@UAC2_CS_CONTROL_SAM_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%d:%d: cannot get freq (v2/v3): err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, i32, i32, i32)* @get_sample_rate_v2v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sample_rate_v2v3(%struct.snd_usb_audio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %14 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %13, i32 0, i32 0
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %18 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %17, i32 0)
  %19 = load i32, i32* @UAC2_CS_CUR, align 4
  %20 = load i32, i32* @USB_TYPE_CLASS, align 4
  %21 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @UAC2_CS_CONTROL_SAM_FREQ, align 4
  %26 = shl i32 %25, 8
  %27 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %28 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %27)
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %28, %30
  %32 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %16, i32 %18, i32 %19, i32 %24, i32 %26, i32 %31, i32* %11, i32 4)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %5, align 4
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
