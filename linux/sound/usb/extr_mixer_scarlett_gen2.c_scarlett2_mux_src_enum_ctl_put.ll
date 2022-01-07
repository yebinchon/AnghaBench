; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mux_src_enum_ctl_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mux_src_enum_ctl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.usb_mixer_elem_info* }
%struct.usb_mixer_elem_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { i32*, i32, i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @scarlett2_mux_src_enum_ctl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_mux_src_enum_ctl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.usb_mixer_elem_info*, align 8
  %6 = alloca %struct.usb_mixer_interface*, align 8
  %7 = alloca %struct.scarlett2_mixer_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %13, align 8
  store %struct.usb_mixer_elem_info* %14, %struct.usb_mixer_elem_info** %5, align 8
  %15 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %17, align 8
  store %struct.usb_mixer_interface* %18, %struct.usb_mixer_interface** %6, align 8
  %19 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %19, i32 0, i32 0
  %21 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %20, align 8
  store %struct.scarlett2_mixer_data* %21, %struct.scarlett2_mixer_data** %7, align 8
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %5, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %26 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %29 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %43 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  %46 = call i32 @clamp(i32 %41, i64 0, i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  br label %65

51:                                               ; preds = %2
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %54 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %60 = call i32 @scarlett2_usb_set_mux(%struct.usb_mixer_interface* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %50
  %66 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %7, align 8
  %67 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp(i32, i64, i64) #1

declare dso_local i32 @scarlett2_usb_set_mux(%struct.usb_mixer_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
