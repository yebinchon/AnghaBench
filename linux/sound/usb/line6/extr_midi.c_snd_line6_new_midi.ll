; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_midi.c_snd_line6_new_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_midi.c_snd_line6_new_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_rawmidi = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Line 6 MIDI\00", align 1
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@line6_midi_output_ops = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@line6_midi_input_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*, %struct.snd_rawmidi**)* @snd_line6_new_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_line6_new_midi(%struct.usb_line6* %0, %struct.snd_rawmidi** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca %struct.snd_rawmidi**, align 8
  %6 = alloca %struct.snd_rawmidi*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %4, align 8
  store %struct.snd_rawmidi** %1, %struct.snd_rawmidi*** %5, align 8
  %8 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %9 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %5, align 8
  %12 = call i32 @snd_rawmidi_new(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_rawmidi** %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.snd_rawmidi**, %struct.snd_rawmidi*** %5, align 8
  %19 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %18, align 8
  store %struct.snd_rawmidi* %19, %struct.snd_rawmidi** %6, align 8
  %20 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %21 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %24 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcpy(i32 %22, i32 %27)
  %29 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %30 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %33 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcpy(i32 %31, i32 %36)
  %38 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %39 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %46 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %47 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %45, i32 %46, i32* @line6_midi_output_ops)
  %48 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %49 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %50 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %48, i32 %49, i32* @line6_midi_input_ops)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %17, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
