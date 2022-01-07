; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_elem_init_std.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_snd_usb_mixer_elem_init_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_list = type { i32, i32, i32, %struct.usb_mixer_interface* }
%struct.usb_mixer_interface = type { i32 }

@snd_usb_mixer_dump_cval = common dso_local global i32 0, align 4
@restore_mixer_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_mixer_elem_init_std(%struct.usb_mixer_elem_list* %0, %struct.usb_mixer_interface* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_mixer_elem_list*, align 8
  %5 = alloca %struct.usb_mixer_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_mixer_elem_list* %0, %struct.usb_mixer_elem_list** %4, align 8
  store %struct.usb_mixer_interface* %1, %struct.usb_mixer_interface** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %5, align 8
  %8 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %9 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %8, i32 0, i32 3
  store %struct.usb_mixer_interface* %7, %struct.usb_mixer_interface** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @snd_usb_mixer_dump_cval, align 4
  %14 = load %struct.usb_mixer_elem_list*, %struct.usb_mixer_elem_list** %4, align 8
  %15 = getelementptr inbounds %struct.usb_mixer_elem_list, %struct.usb_mixer_elem_list* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
