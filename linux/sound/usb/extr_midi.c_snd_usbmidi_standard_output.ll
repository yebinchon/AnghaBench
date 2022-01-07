; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_standard_output.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_standard_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_out_endpoint = type { i64, %struct.usbmidi_out_port* }
%struct.usbmidi_out_port = type { i64, i32 }
%struct.urb = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_out_endpoint*, %struct.urb*)* @snd_usbmidi_standard_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_standard_output(%struct.snd_usb_midi_out_endpoint* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_midi_out_endpoint*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbmidi_out_port*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_usb_midi_out_endpoint* %0, %struct.snd_usb_midi_out_endpoint** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %48, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %51

11:                                               ; preds = %8
  %12 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %13 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %12, i32 0, i32 1
  %14 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %14, i64 %16
  store %struct.usbmidi_out_port* %17, %struct.usbmidi_out_port** %6, align 8
  %18 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %6, align 8
  %19 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %48

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %42, %23
  %25 = load %struct.urb*, %struct.urb** %4, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 3
  %29 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %24
  %34 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %6, align 8
  %35 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_rawmidi_transmit(i32 %36, i32* %7, i32 1)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %6, align 8
  %41 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.urb*, %struct.urb** %4, align 8
  %46 = call i32 @snd_usbmidi_transmit_byte(%struct.usbmidi_out_port* %43, i32 %44, %struct.urb* %45)
  br label %24

47:                                               ; preds = %39, %24
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %8

51:                                               ; preds = %8
  ret void
}

declare dso_local i32 @snd_rawmidi_transmit(i32, i32*, i32) #1

declare dso_local i32 @snd_usbmidi_transmit_byte(%struct.usbmidi_out_port*, i32, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
