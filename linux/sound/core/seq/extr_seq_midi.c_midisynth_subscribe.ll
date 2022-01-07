; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_midisynth_subscribe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_midisynth_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { i32 }
%struct.seq_midisynth = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { %struct.seq_midisynth*, i32 }
%struct.snd_rawmidi_params = type { i32, i32 }

@SNDRV_RAWMIDI_LFLG_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ALSA: seq_midi: midi input open failed!!!\0A\00", align 1
@input_buffer_size = common dso_local global i32 0, align 4
@snd_midi_input_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @midisynth_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midisynth_subscribe(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_seq_port_subscribe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seq_midisynth*, align 8
  %8 = alloca %struct.snd_rawmidi_runtime*, align 8
  %9 = alloca %struct.snd_rawmidi_params, align 4
  store i8* %0, i8** %4, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.seq_midisynth*
  store %struct.seq_midisynth* %11, %struct.seq_midisynth** %7, align 8
  %12 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %13 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %16 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %19 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SNDRV_RAWMIDI_LFLG_INPUT, align 4
  %22 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %23 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %22, i32 0, i32 0
  %24 = call i32 @snd_rawmidi_kernel_open(i32 %14, i32 %17, i32 %20, i32 %21, %struct.TYPE_5__* %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %31 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %34, align 8
  store %struct.snd_rawmidi_runtime* %35, %struct.snd_rawmidi_runtime** %8, align 8
  %36 = call i32 @memset(%struct.snd_rawmidi_params* %9, i32 0, i32 8)
  %37 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %9, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @input_buffer_size, align 4
  %39 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %41 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @snd_rawmidi_input_params(%struct.TYPE_6__* %43, %struct.snd_rawmidi_params* %9)
  store i32 %44, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %48 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %47, i32 0, i32 0
  %49 = call i32 @snd_rawmidi_kernel_release(%struct.TYPE_5__* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %67

51:                                               ; preds = %29
  %52 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %53 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_midi_event_reset_encode(i32 %54)
  %56 = load i32, i32* @snd_midi_input_event, align 4
  %57 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %8, align 8
  %58 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %60 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %8, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %60, i32 0, i32 0
  store %struct.seq_midisynth* %59, %struct.seq_midisynth** %61, align 8
  %62 = load %struct.seq_midisynth*, %struct.seq_midisynth** %7, align 8
  %63 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @snd_rawmidi_kernel_read(%struct.TYPE_6__* %65, i32* null, i32 0)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %51, %46, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @snd_rawmidi_kernel_open(i32, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @memset(%struct.snd_rawmidi_params*, i32, i32) #1

declare dso_local i32 @snd_rawmidi_input_params(%struct.TYPE_6__*, %struct.snd_rawmidi_params*) #1

declare dso_local i32 @snd_rawmidi_kernel_release(%struct.TYPE_5__*) #1

declare dso_local i32 @snd_midi_event_reset_encode(i32) #1

declare dso_local i32 @snd_rawmidi_kernel_read(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
