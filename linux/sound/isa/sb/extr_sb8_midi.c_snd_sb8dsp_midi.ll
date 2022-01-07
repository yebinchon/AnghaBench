; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i64, %struct.snd_rawmidi*, i32, i32 }
%struct.snd_rawmidi = type { i32, %struct.snd_sb*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"SB8 MIDI\00", align 1
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_sb8dsp_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_sb8dsp_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SB_HW_20 = common dso_local global i64 0, align 8
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@snd_sb8dsp_midi_output_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sb8dsp_midi(%struct.snd_sb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_rawmidi*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %9 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_rawmidi_new(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_rawmidi** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %22 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %23 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %21, i32 %22, i32* @snd_sb8dsp_midi_output)
  %24 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %25 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %26 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %24, i32 %25, i32* @snd_sb8dsp_midi_input)
  %27 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %28 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %31 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %35 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SB_HW_20, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %16
  %40 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %41 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %42 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %16
  %46 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %47 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %48 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %47, i32 0, i32 1
  store %struct.snd_sb* %46, %struct.snd_sb** %48, align 8
  %49 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %50 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %49, i32 0, i32 2
  %51 = load i32, i32* @snd_sb8dsp_midi_output_timer, align 4
  %52 = call i32 @timer_setup(i32* %50, i32 %51, i32 0)
  %53 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %54 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %55 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %54, i32 0, i32 1
  store %struct.snd_rawmidi* %53, %struct.snd_rawmidi** %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
