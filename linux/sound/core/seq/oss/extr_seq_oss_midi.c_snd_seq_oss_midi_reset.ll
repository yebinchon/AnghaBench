; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i64, i32, i32 }
%struct.seq_oss_midi = type { i32, i32, i32, i32 }
%struct.snd_seq_event = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@PERM_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_OSS_MODE_SYNTH = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_SENSING = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_CONTROLLER = common dso_local global i32 0, align 4
@MIDI_CTL_ALL_NOTES_OFF = common dso_local global i32 0, align 4
@SNDRV_SEQ_OSS_MODE_MUSIC = common dso_local global i64 0, align 8
@MIDI_CTL_RESET_CONTROLLERS = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_PITCHBEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_oss_midi_reset(%struct.seq_oss_devinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_oss_devinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_midi*, align 8
  %6 = alloca %struct.snd_seq_event, align 8
  %7 = alloca i32, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo* %8, i32 %9)
  store %struct.seq_oss_midi* %10, %struct.seq_oss_midi** %5, align 8
  %11 = icmp eq %struct.seq_oss_midi* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %105

13:                                               ; preds = %2
  %14 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %15 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %20 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %19, i32 0, i32 1
  %21 = call i32 @snd_use_lock_free(i32* %20)
  br label %105

22:                                               ; preds = %13
  %23 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %24 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PERM_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %101

29:                                               ; preds = %22
  %30 = call i32 @memset(%struct.snd_seq_event* %6, i32 0, i32 48)
  %31 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %32 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %37 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %42 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %46 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %51 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SNDRV_SEQ_OSS_MODE_SYNTH, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %29
  %56 = load i32, i32* @SNDRV_SEQ_EVENT_SENSING, align 4
  %57 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %59 = call i32 @snd_seq_oss_dispatch(%struct.seq_oss_devinfo* %58, %struct.snd_seq_event* %6, i32 0, i32 0)
  br label %60

60:                                               ; preds = %55, %29
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %97, %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %100

64:                                               ; preds = %61
  %65 = load i32, i32* @SNDRV_SEQ_EVENT_CONTROLLER, align 4
  %66 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @MIDI_CTL_ALL_NOTES_OFF, align 4
  %72 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %76 = call i32 @snd_seq_oss_dispatch(%struct.seq_oss_devinfo* %75, %struct.snd_seq_event* %6, i32 0, i32 0)
  %77 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %78 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SNDRV_SEQ_OSS_MODE_MUSIC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %64
  %83 = load i32, i32* @MIDI_CTL_RESET_CONTROLLERS, align 4
  %84 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %88 = call i32 @snd_seq_oss_dispatch(%struct.seq_oss_devinfo* %87, %struct.snd_seq_event* %6, i32 0, i32 0)
  %89 = load i32, i32* @SNDRV_SEQ_EVENT_PITCHBEND, align 4
  %90 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %3, align 8
  %95 = call i32 @snd_seq_oss_dispatch(%struct.seq_oss_devinfo* %94, %struct.snd_seq_event* %6, i32 0, i32 0)
  br label %96

96:                                               ; preds = %82, %64
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %61

100:                                              ; preds = %61
  br label %101

101:                                              ; preds = %100, %22
  %102 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %5, align 8
  %103 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %102, i32 0, i32 1
  %104 = call i32 @snd_use_lock_free(i32* %103)
  br label %105

105:                                              ; preds = %101, %18, %12
  ret void
}

declare dso_local %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_dispatch(%struct.seq_oss_devinfo*, %struct.snd_seq_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
