; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_midi.c_line6_midi_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_midi.c_line6_midi_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32 }
%struct.usb_line6 = type { i32, %struct.snd_line6_midi* }
%struct.snd_line6_midi = type { %struct.midi_buffer }
%struct.midi_buffer = type { i32 }
%struct.TYPE_2__ = type { %struct.usb_line6* }

@LINE6_FALLBACK_MAXPACKETSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*)* @line6_midi_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line6_midi_transmit(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.usb_line6*, align 8
  %4 = alloca %struct.snd_line6_midi*, align 8
  %5 = alloca %struct.midi_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %11 = call %struct.TYPE_2__* @line6_rawmidi_substream_midi(%struct.snd_rawmidi_substream* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.usb_line6*, %struct.usb_line6** %12, align 8
  store %struct.usb_line6* %13, %struct.usb_line6** %3, align 8
  %14 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %15 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %14, i32 0, i32 1
  %16 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %15, align 8
  store %struct.snd_line6_midi* %16, %struct.snd_line6_midi** %4, align 8
  %17 = load %struct.snd_line6_midi*, %struct.snd_line6_midi** %4, align 8
  %18 = getelementptr inbounds %struct.snd_line6_midi, %struct.snd_line6_midi* %17, i32 0, i32 0
  store %struct.midi_buffer* %18, %struct.midi_buffer** %5, align 8
  %19 = load i32, i32* @LINE6_FALLBACK_MAXPACKETSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  br label %23

23:                                               ; preds = %36, %1
  %24 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %25 = call i32 @line6_midibuf_bytes_free(%struct.midi_buffer* %24)
  %26 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %27 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @min(i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %30, i8* %22, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %43

36:                                               ; preds = %23
  %37 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @line6_midibuf_write(%struct.midi_buffer* %37, i8* %22, i32 %38)
  %40 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %40, i32 %41)
  br label %23

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %51, %43
  %45 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %46 = load i32, i32* @LINE6_FALLBACK_MAXPACKETSIZE, align 4
  %47 = call i32 @line6_midibuf_read(%struct.midi_buffer* %45, i8* %22, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %55

51:                                               ; preds = %44
  %52 = load %struct.usb_line6*, %struct.usb_line6** %3, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @send_midi_async(%struct.usb_line6* %52, i8* %22, i32 %53)
  br label %44

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

declare dso_local %struct.TYPE_2__* @line6_rawmidi_substream_midi(%struct.snd_rawmidi_substream*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @line6_midibuf_bytes_free(%struct.midi_buffer*) #1

declare dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @line6_midibuf_write(%struct.midi_buffer*, i8*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @line6_midibuf_read(%struct.midi_buffer*, i8*, i32) #1

declare dso_local i32 @send_midi_async(%struct.usb_line6*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
