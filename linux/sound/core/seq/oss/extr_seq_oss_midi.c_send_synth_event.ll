; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_send_synth_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_send_synth_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, i32 }
%struct.snd_seq_event = type { i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%union.evrec = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@MIDI_NOTEON = common dso_local global i32 0, align 4
@MIDI_NOTEOFF = common dso_local global i32 0, align 4
@MIDI_KEY_PRESSURE = common dso_local global i32 0, align 4
@MIDI_CTL_CHANGE = common dso_local global i32 0, align 4
@MIDI_PGM_CHANGE = common dso_local global i32 0, align 4
@MIDI_CHN_PRESSURE = common dso_local global i32 0, align 4
@MIDI_PITCH_BEND = common dso_local global i32 0, align 4
@EV_CHN_VOICE = common dso_local global i32 0, align 4
@EV_CHN_COMMON = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, %struct.snd_seq_event*, i32)* @send_synth_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_synth_event(%struct.seq_oss_devinfo* %0, %struct.snd_seq_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca %struct.snd_seq_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.evrec, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @memset(%union.evrec* %8, i32 0, i32 24)
  %10 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %11 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %41 [
    i32 130, label %13
    i32 131, label %17
    i32 132, label %21
    i32 133, label %25
    i32 129, label %29
    i32 134, label %33
    i32 128, label %37
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @MIDI_NOTEON, align 4
  %15 = bitcast %union.evrec* %8 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load i32, i32* @MIDI_NOTEOFF, align 4
  %19 = bitcast %union.evrec* %8 to %struct.TYPE_7__*
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32, i32* @MIDI_KEY_PRESSURE, align 4
  %23 = bitcast %union.evrec* %8 to %struct.TYPE_7__*
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load i32, i32* @MIDI_CTL_CHANGE, align 4
  %27 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load i32, i32* @MIDI_PGM_CHANGE, align 4
  %31 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load i32, i32* @MIDI_CHN_PRESSURE, align 4
  %35 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  br label %42

37:                                               ; preds = %3
  %38 = load i32, i32* @MIDI_PITCH_BEND, align 4
  %39 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %42

41:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %134

42:                                               ; preds = %37, %33, %29, %25, %21, %17, %13
  %43 = load i32, i32* %7, align 4
  %44 = bitcast %union.evrec* %8 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %47 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %118 [
    i32 130, label %49
    i32 131, label %49
    i32 132, label %49
    i32 133, label %74
    i32 129, label %74
    i32 134, label %74
    i32 128, label %99
  ]

49:                                               ; preds = %42, %42, %42
  %50 = load i32, i32* @EV_CHN_VOICE, align 4
  %51 = bitcast %union.evrec* %8 to %struct.TYPE_7__*
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %54 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %union.evrec* %8 to %struct.TYPE_7__*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %61 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %union.evrec* %8 to %struct.TYPE_7__*
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %68 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = bitcast %union.evrec* %8 to %struct.TYPE_7__*
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %118

74:                                               ; preds = %42, %42, %42
  %75 = load i8*, i8** @EV_CHN_COMMON, align 8
  %76 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %79 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %86 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %93 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %118

99:                                               ; preds = %42
  %100 = load i8*, i8** @EV_CHN_COMMON, align 8
  %101 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %104 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 8192
  %109 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %112 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = bitcast %union.evrec* %8 to %struct.TYPE_9__*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %42, %99, %74, %49
  %119 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %120 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.snd_seq_event*, %struct.snd_seq_event** %6, align 8
  %123 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %127 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @snd_seq_oss_readq_put_timestamp(i32 %121, i32 %125, i32 %128)
  %130 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %131 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @snd_seq_oss_readq_put_event(i32 %132, %union.evrec* %8)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %118, %41
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @memset(%union.evrec*, i32, i32) #1

declare dso_local i32 @snd_seq_oss_readq_put_timestamp(i32, i32, i32) #1

declare dso_local i32 @snd_seq_oss_readq_put_event(i32, %union.evrec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
