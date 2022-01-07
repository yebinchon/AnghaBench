; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4281 = type { %struct.snd_rawmidi*, i32 }
%struct.snd_rawmidi = type { i32, %struct.cs4281*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"CS4281\00", align 1
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_cs4281_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_cs4281_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs4281*, i32)* @snd_cs4281_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4281_midi(%struct.cs4281* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs4281*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_rawmidi*, align 8
  %7 = alloca i32, align 4
  store %struct.cs4281* %0, %struct.cs4281** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cs4281*, %struct.cs4281** %4, align 8
  %9 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_rawmidi_new(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_rawmidi** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %18 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %22 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %23 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %21, i32 %22, i32* @snd_cs4281_midi_output)
  %24 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %25 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %26 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %24, i32 %25, i32* @snd_cs4281_midi_input)
  %27 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %28 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.cs4281*, %struct.cs4281** %4, align 8
  %37 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %38 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %37, i32 0, i32 1
  store %struct.cs4281* %36, %struct.cs4281** %38, align 8
  %39 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %40 = load %struct.cs4281*, %struct.cs4281** %4, align 8
  %41 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %40, i32 0, i32 0
  store %struct.snd_rawmidi* %39, %struct.snd_rawmidi** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %16, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
