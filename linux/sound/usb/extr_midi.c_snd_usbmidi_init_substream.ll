; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_init_substream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_midi.c_snd_usbmidi_init_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_rawmidi_substream = type { i32 }
%struct.port_info = type { i8* }

@.str = private unnamed_addr constant [27 x i8] c"substream %d:%d not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s MIDI %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi*, i32, i32, %struct.snd_rawmidi_substream**)* @snd_usbmidi_init_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_init_substream(%struct.snd_usb_midi* %0, i32 %1, i32 %2, %struct.snd_rawmidi_substream** %3) #0 {
  %5 = alloca %struct.snd_usb_midi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_rawmidi_substream**, align 8
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.snd_rawmidi_substream** %3, %struct.snd_rawmidi_substream*** %8, align 8
  %12 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.snd_rawmidi_substream* @snd_usbmidi_find_substream(%struct.snd_usb_midi* %12, i32 %13, i32 %14)
  store %struct.snd_rawmidi_substream* %15, %struct.snd_rawmidi_substream** %11, align 8
  %16 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %11, align 8
  %17 = icmp ne %struct.snd_rawmidi_substream* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %20 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.port_info* @find_port_info(%struct.snd_usb_midi* %27, i32 %28)
  store %struct.port_info* %29, %struct.port_info** %9, align 8
  %30 = load %struct.port_info*, %struct.port_info** %9, align 8
  %31 = icmp ne %struct.port_info* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.port_info*, %struct.port_info** %9, align 8
  %34 = getelementptr inbounds %struct.port_info, %struct.port_info* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %36 ]
  store i8* %38, i8** %10, align 8
  %39 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %11, align 8
  %40 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %44 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @snprintf(i32 %41, i32 4, i8* %42, i32 %47, i32 %49)
  %51 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %11, align 8
  %52 = load %struct.snd_rawmidi_substream**, %struct.snd_rawmidi_substream*** %8, align 8
  store %struct.snd_rawmidi_substream* %51, %struct.snd_rawmidi_substream** %52, align 8
  br label %53

53:                                               ; preds = %37, %18
  ret void
}

declare dso_local %struct.snd_rawmidi_substream* @snd_usbmidi_find_substream(%struct.snd_usb_midi*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local %struct.port_info* @find_port_info(%struct.snd_usb_midi*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
