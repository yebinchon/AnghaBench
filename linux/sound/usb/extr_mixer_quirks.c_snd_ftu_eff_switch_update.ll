; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ftu_eff_switch_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_ftu_eff_switch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_list = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_usb_audio* }
%struct.snd_usb_audio = type { i32 }

@UAC_SET_CUR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_list*)* @snd_ftu_eff_switch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ftu_eff_switch_update(%struct.usb_mixer_elem_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_elem_list*, align 8
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
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
  %18 = load i32, i32* %5, align 4
  %19 = lshr i32 %18, 24
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %22, align 1
  %23 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %24 = call i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %56

29:                                               ; preds = %1
  %30 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %31 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %34 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_sndctrlpipe(i32 %35, i32 0)
  %37 = load i32, i32* @UAC_SET_CUR, align 4
  %38 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %39 = load i32, i32* @USB_TYPE_CLASS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USB_DIR_OUT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 65280
  %45 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %46 = call i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio* %45)
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 255
  %49 = shl i32 %48, 8
  %50 = or i32 %46, %49
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %52 = call i32 @snd_usb_ctl_msg(i32 %32, i32 %36, i32 %37, i32 %42, i32 %44, i32 %50, i8* %51, i32 2)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %54 = call i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %29, %27
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @snd_usb_lock_shutdown(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_ctl_msg(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @snd_usb_ctrl_intf(%struct.snd_usb_audio*) #1

declare dso_local i32 @snd_usb_unlock_shutdown(%struct.snd_usb_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
