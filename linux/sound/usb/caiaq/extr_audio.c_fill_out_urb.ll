; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_fill_out_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_fill_out_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }
%struct.usb_iso_packet_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*)* @fill_out_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_out_urb(%struct.snd_usb_caiaqdev* %0, %struct.urb* %1, %struct.usb_iso_packet_descriptor* %2) #0 {
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.usb_iso_packet_descriptor* %2, %struct.usb_iso_packet_descriptor** %6, align 8
  %7 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %8 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 0, label %11
    i32 2, label %11
    i32 3, label %16
  ]

11:                                               ; preds = %3, %3
  %12 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %15 = call i32 @fill_out_urb_mode_0(%struct.snd_usb_caiaqdev* %12, %struct.urb* %13, %struct.usb_iso_packet_descriptor* %14)
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %20 = call i32 @fill_out_urb_mode_3(%struct.snd_usb_caiaqdev* %17, %struct.urb* %18, %struct.usb_iso_packet_descriptor* %19)
  br label %21

21:                                               ; preds = %3, %16, %11
  ret void
}

declare dso_local i32 @fill_out_urb_mode_0(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*) #1

declare dso_local i32 @fill_out_urb_mode_3(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
