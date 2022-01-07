; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ni_control_init_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ni_control_init_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.snd_kcontrol = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unable to issue vendor read request (ret = %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.snd_kcontrol*)* @snd_ni_control_init_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ni_control_init_val(%struct.usb_mixer_interface* %0, %struct.snd_kcontrol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  %10 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %20 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %19, i32 0)
  %21 = load i32, i32* %7, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %25 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 65535
  %31 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %18, i32 %20, i32 %23, i32 %28, i32 0, i32 %30, i64* %8, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %2
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 24
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %34
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
