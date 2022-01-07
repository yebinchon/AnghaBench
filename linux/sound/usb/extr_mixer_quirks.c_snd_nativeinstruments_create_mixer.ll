; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_nativeinstruments_create_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_nativeinstruments_create_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_mixer_elem_list = type { i32 }

@snd_ctl_boolean_mono_info = common dso_local global i32 0, align 4
@snd_nativeinstruments_control_put = common dso_local global i32 0, align 4
@snd_nativeinstruments_control_get = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@snd_ni_update_cur_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.snd_kcontrol_new*, i32)* @snd_nativeinstruments_create_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nativeinstruments_create_mixer(%struct.usb_mixer_interface* %0, %struct.snd_kcontrol_new* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca %struct.snd_kcontrol_new*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_kcontrol_new, align 4
  %10 = alloca %struct.usb_mixer_elem_list*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 2
  %14 = load i32, i32* @snd_ctl_boolean_mono_info, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 3
  %16 = load i32, i32* @snd_nativeinstruments_control_put, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 4
  %18 = load i32, i32* @snd_nativeinstruments_control_get, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 5
  %20 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 6
  %22 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  store i32 %22, i32* %21, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %54, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %28, i64 %30
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %35, i64 %37
  %39 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %43 = load i32, i32* @snd_ni_update_cur_val, align 4
  %44 = call i32 @add_single_ctl_with_resume(%struct.usb_mixer_interface* %42, i32 0, i32 %43, %struct.snd_kcontrol_new* %9, %struct.usb_mixer_elem_list** %10)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %57

48:                                               ; preds = %27
  %49 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %50 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %10, align 8
  %51 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snd_ni_control_init_val(%struct.usb_mixer_interface* %49, i32 %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %23

57:                                               ; preds = %47, %23
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @add_single_ctl_with_resume(%struct.usb_mixer_interface*, i32, i32, %struct.snd_kcontrol_new*, %struct.usb_mixer_elem_list**) #1

declare dso_local i32 @snd_ni_control_init_val(%struct.usb_mixer_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
