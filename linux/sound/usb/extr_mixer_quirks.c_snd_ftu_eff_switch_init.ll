; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ftu_eff_switch_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ftu_eff_switch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.snd_kcontrol = type { i32 }

@UAC_GET_CUR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.snd_kcontrol*)* @snd_ftu_eff_switch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ftu_eff_switch_init(%struct.usb_mixer_interface* %0, %struct.snd_kcontrol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
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
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %19, align 1
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %21, i32 0)
  %23 = load i32, i32* @UAC_GET_CUR, align 4
  %24 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %25 = load i32, i32* @USB_TYPE_CLASS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 65280
  %31 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %32 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @snd_usb_ctrl_intf(%struct.TYPE_2__* %33)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  %37 = shl i32 %36, 8
  %38 = or i32 %34, %37
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %40 = call i32 @snd_usb_ctl_msg(%struct.usb_device* %20, i32 %22, i32 %23, i32 %28, i32 %30, i32 %38, i8* %39, i32 2)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %2
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 24
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %43
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @snd_usb_ctl_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
