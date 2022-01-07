; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_snd_echo_midi_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_snd_echo_midi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.echoaudio = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.echoaudio*, i32 }

@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_echo_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_echo_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.echoaudio*)* @snd_echo_midi_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_midi_create(%struct.snd_card* %0, %struct.echoaudio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.echoaudio* %1, %struct.echoaudio** %5, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %12 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %11, i32 0, i32 0
  %13 = call i32 @snd_rawmidi_new(%struct.snd_card* %7, i32 %10, i32 0, i32 1, i32 1, %struct.TYPE_3__** %12)
  store i32 %13, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcpy(i32 %22, i32 %25)
  %27 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %28 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %29 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.echoaudio* %27, %struct.echoaudio** %31, align 8
  %32 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %36 = call i32 @snd_rawmidi_set_ops(%struct.TYPE_3__* %34, i32 %35, i32* @snd_echo_midi_input)
  %37 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %41 = call i32 @snd_rawmidi_set_ops(%struct.TYPE_3__* %39, i32 %40, i32* @snd_echo_midi_output)
  %42 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %43 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %48 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %17, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @snd_rawmidi_new(%struct.snd_card*, i32, i32, i32, i32, %struct.TYPE_3__**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
