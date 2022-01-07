; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_check_mapped_dB.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_check_mapped_dB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbmix_name_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_mixer_elem_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbmix_name_map*, %struct.usb_mixer_elem_info*)* @check_mapped_dB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mapped_dB(%struct.usbmix_name_map* %0, %struct.usb_mixer_elem_info* %1) #0 {
  %3 = alloca %struct.usbmix_name_map*, align 8
  %4 = alloca %struct.usb_mixer_elem_info*, align 8
  store %struct.usbmix_name_map* %0, %struct.usbmix_name_map** %3, align 8
  store %struct.usb_mixer_elem_info* %1, %struct.usb_mixer_elem_info** %4, align 8
  %5 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %3, align 8
  %6 = icmp ne %struct.usbmix_name_map* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %3, align 8
  %9 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %3, align 8
  %14 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %3, align 8
  %21 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %26 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %28 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %12, %7, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
