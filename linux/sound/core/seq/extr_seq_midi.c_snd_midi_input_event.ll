; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_snd_midi_input_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_snd_midi_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i64, %struct.seq_midisynth* }
%struct.seq_midisynth = type { i32, i32, i32* }
%struct.snd_seq_event = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SNDRV_SEQ_ADDRESS_SUBSCRIBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*)* @snd_midi_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_midi_input_event(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_rawmidi_runtime*, align 8
  %4 = alloca %struct.seq_midisynth*, align 8
  %5 = alloca %struct.snd_seq_event, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %10 = icmp eq %struct.snd_rawmidi_substream* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %14, align 8
  store %struct.snd_rawmidi_runtime* %15, %struct.snd_rawmidi_runtime** %3, align 8
  %16 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %16, i32 0, i32 1
  %18 = load %struct.seq_midisynth*, %struct.seq_midisynth** %17, align 8
  store %struct.seq_midisynth* %18, %struct.seq_midisynth** %4, align 8
  %19 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %20 = icmp eq %struct.seq_midisynth* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %74

22:                                               ; preds = %12
  %23 = call i32 @memset(%struct.snd_seq_event* %5, i32 0, i32 8)
  br label %24

24:                                               ; preds = %73, %41, %35, %22
  %25 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %24
  %30 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %32 = call i64 @snd_rawmidi_kernel_read(%struct.snd_rawmidi_substream* %30, i8* %31, i32 16)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %24

36:                                               ; preds = %29
  %37 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %38 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %24

42:                                               ; preds = %36
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %59, %58, %42
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %8, align 8
  %47 = icmp sgt i64 %45, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %50 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 @snd_midi_event_encode_byte(i32* %51, i32 %55, %struct.snd_seq_event* %5)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %44

59:                                               ; preds = %48
  %60 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %61 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %5, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @SNDRV_SEQ_ADDRESS_SUBSCRIBERS, align 4
  %66 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %5, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.seq_midisynth*, %struct.seq_midisynth** %4, align 8
  %69 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @snd_seq_kernel_client_dispatch(i32 %70, %struct.snd_seq_event* %5, i32 1, i32 0)
  %72 = call i32 @memset(%struct.snd_seq_event* %5, i32 0, i32 8)
  br label %44

73:                                               ; preds = %44
  br label %24

74:                                               ; preds = %11, %21, %24
  ret void
}

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

declare dso_local i64 @snd_rawmidi_kernel_read(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @snd_midi_event_encode_byte(i32*, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_kernel_client_dispatch(i32, %struct.snd_seq_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
