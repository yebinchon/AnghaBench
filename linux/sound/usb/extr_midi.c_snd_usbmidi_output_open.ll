; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_output_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.usbmidi_out_port* }
%struct.usbmidi_out_port = type { i32, %struct.snd_rawmidi_substream* }
%struct.TYPE_5__ = type { %struct.snd_usb_midi* }
%struct.snd_usb_midi = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usbmidi_out_port* }

@MIDI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_usbmidi_output_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usbmidi_output_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_usb_midi*, align 8
  %5 = alloca %struct.usbmidi_out_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %11, align 8
  store %struct.snd_usb_midi* %12, %struct.snd_usb_midi** %4, align 8
  store %struct.usbmidi_out_port* null, %struct.usbmidi_out_port** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %69, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MIDI_MAX_ENDPOINTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %13
  %18 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %19 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %64, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %33 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %41, i64 %43
  %45 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %44, i32 0, i32 1
  %46 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %45, align 8
  %47 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %48 = icmp eq %struct.snd_rawmidi_substream* %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %31
  %50 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %51 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %59, i64 %61
  store %struct.usbmidi_out_port* %62, %struct.usbmidi_out_port** %5, align 8
  br label %67

63:                                               ; preds = %31
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %28

67:                                               ; preds = %49, %28
  br label %68

68:                                               ; preds = %67, %17
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %13

72:                                               ; preds = %13
  %73 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %5, align 8
  %74 = icmp ne %struct.usbmidi_out_port* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = call i32 (...) @snd_BUG()
  %77 = load i32, i32* @ENXIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %90

79:                                               ; preds = %72
  %80 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %5, align 8
  %81 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %82 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store %struct.usbmidi_out_port* %80, %struct.usbmidi_out_port** %84, align 8
  %85 = load i32, i32* @STATE_UNKNOWN, align 4
  %86 = load %struct.usbmidi_out_port*, %struct.usbmidi_out_port** %5, align 8
  %87 = getelementptr inbounds %struct.usbmidi_out_port, %struct.usbmidi_out_port* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %89 = call i32 @substream_open(%struct.snd_rawmidi_substream* %88, i32 0, i32 1)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %79, %75
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @substream_open(%struct.snd_rawmidi_substream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
