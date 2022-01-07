; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_master_volume_ctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_master_volume_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { i32, i32, i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @scarlett2_master_volume_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_master_volume_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.usb_mixer_elem_info*, align 8
  %6 = alloca %struct.usb_mixer_interface*, align 8
  %7 = alloca %struct.scarlett2_mixer_data*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 0
  %10 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %9, align 8
  store %struct.usb_mixer_elem_info* %10, %struct.usb_mixer_elem_info** %5, align 8
  %11 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %13, align 8
  store %struct.usb_mixer_interface* %14, %struct.usb_mixer_interface** %6, align 8
  %15 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %15, i32 0, i32 0
  %17 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %16, align 8
  store %struct.scarlett2_mixer_data* %17, %struct.scarlett2_mixer_data** %7, align 8
  %18 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %19 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %24 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %27 = call i32 @scarlett2_update_volumes(%struct.usb_mixer_interface* %26)
  %28 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %29 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %33 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %34, i32* %40, align 4
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scarlett2_update_volumes(%struct.usb_mixer_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
