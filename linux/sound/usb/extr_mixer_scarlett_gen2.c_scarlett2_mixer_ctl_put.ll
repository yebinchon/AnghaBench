; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mixer_ctl_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mixer_ctl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { i32*, i32, %struct.scarlett2_device_info* }
%struct.scarlett2_device_info = type { %struct.scarlett2_ports* }
%struct.scarlett2_ports = type { i32* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@SCARLETT2_PORT_TYPE_MIX = common dso_local global i64 0, align 8
@SCARLETT2_PORT_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @scarlett2_mixer_ctl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_mixer_ctl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.usb_mixer_elem_info*, align 8
  %6 = alloca %struct.usb_mixer_interface*, align 8
  %7 = alloca %struct.scarlett2_mixer_data*, align 8
  %8 = alloca %struct.scarlett2_device_info*, align 8
  %9 = alloca %struct.scarlett2_ports*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %16, align 8
  store %struct.usb_mixer_elem_info* %17, %struct.usb_mixer_elem_info** %5, align 8
  %18 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %20, align 8
  store %struct.usb_mixer_interface* %21, %struct.usb_mixer_interface** %6, align 8
  %22 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %22, i32 0, i32 0
  %24 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %23, align 8
  store %struct.scarlett2_mixer_data* %24, %struct.scarlett2_mixer_data** %7, align 8
  %25 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %26 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %25, i32 0, i32 2
  %27 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %26, align 8
  store %struct.scarlett2_device_info* %27, %struct.scarlett2_device_info** %8, align 8
  %28 = load %struct.scarlett2_device_info*, %struct.scarlett2_device_info** %8, align 8
  %29 = getelementptr inbounds %struct.scarlett2_device_info, %struct.scarlett2_device_info* %28, i32 0, i32 0
  %30 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %29, align 8
  store %struct.scarlett2_ports* %30, %struct.scarlett2_ports** %9, align 8
  store i32 0, i32* %14, align 4
  %31 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %32 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %35 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %38 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %9, align 8
  %50 = load i64, i64* @SCARLETT2_PORT_TYPE_MIX, align 8
  %51 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %49, i64 %50
  %52 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %58 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %59, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %2
  br label %84

68:                                               ; preds = %2
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %71 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %74 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %69, i32* %76, align 4
  %77 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @scarlett2_usb_set_mix(%struct.usb_mixer_interface* %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  store i32 1, i32* %14, align 4
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %67
  %85 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %86 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %14, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scarlett2_usb_set_mix(%struct.usb_mixer_interface*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
