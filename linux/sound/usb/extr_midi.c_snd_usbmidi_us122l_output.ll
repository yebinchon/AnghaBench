; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_us122l_output.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_us122l_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_out_endpoint = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_out_endpoint*, %struct.urb*)* @snd_usbmidi_us122l_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_us122l_output(%struct.snd_usb_midi_out_endpoint* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.snd_usb_midi_out_endpoint*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_usb_midi_out_endpoint* %0, %struct.snd_usb_midi_out_endpoint** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %7 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %16 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_usb_get_speed(i32 %19)
  switch i32 %20, label %22 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %14, %14, %14
  store i32 1, i32* %5, align 4
  br label %23

22:                                               ; preds = %14
  store i32 2, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %25 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.urb*, %struct.urb** %4, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @snd_rawmidi_transmit(i32 %29, i64 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %39 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %62

43:                                               ; preds = %23
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %51 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = call i32 @memset(i64 %49, i32 253, i64 %55)
  %57 = load %struct.snd_usb_midi_out_endpoint*, %struct.snd_usb_midi_out_endpoint** %3, align 8
  %58 = getelementptr inbounds %struct.snd_usb_midi_out_endpoint, %struct.snd_usb_midi_out_endpoint* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.urb*, %struct.urb** %4, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %43, %37, %13
  ret void
}

declare dso_local i32 @snd_usb_get_speed(i32) #1

declare dso_local i32 @snd_rawmidi_transmit(i32, i64, i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
