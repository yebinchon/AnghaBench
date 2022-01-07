; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ensoniq = type { %struct.snd_rawmidi*, i32 }
%struct.snd_rawmidi = type { i32, %struct.ensoniq*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ES1370/1\00", align 1
@CHIP_NAME = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_ensoniq_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_ensoniq_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ensoniq*, i32)* @snd_ensoniq_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ensoniq_midi(%struct.ensoniq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ensoniq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_rawmidi*, align 8
  %7 = alloca i32, align 4
  store %struct.ensoniq* %0, %struct.ensoniq** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ensoniq*, %struct.ensoniq** %4, align 8
  %9 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_rawmidi_new(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_rawmidi** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CHIP_NAME, align 4
  %21 = call i32 @strcpy(i32 %19, i32 %20)
  %22 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %23 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %24 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %22, i32 %23, i32* @snd_ensoniq_midi_output)
  %25 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %26 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %27 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %25, i32 %26, i32* @snd_ensoniq_midi_input)
  %28 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %29 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %34 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ensoniq*, %struct.ensoniq** %4, align 8
  %38 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %38, i32 0, i32 1
  store %struct.ensoniq* %37, %struct.ensoniq** %39, align 8
  %40 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %41 = load %struct.ensoniq*, %struct.ensoniq** %4, align 8
  %42 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %41, i32 0, i32 0
  store %struct.snd_rawmidi* %40, %struct.snd_rawmidi** %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %16, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
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
