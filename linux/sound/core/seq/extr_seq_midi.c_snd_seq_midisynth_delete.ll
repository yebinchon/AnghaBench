; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_delete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_midisynth = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_midisynth*)* @snd_seq_midisynth_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_seq_midisynth_delete(%struct.seq_midisynth* %0) #0 {
  %2 = alloca %struct.seq_midisynth*, align 8
  store %struct.seq_midisynth* %0, %struct.seq_midisynth** %2, align 8
  %3 = load %struct.seq_midisynth*, %struct.seq_midisynth** %2, align 8
  %4 = icmp eq %struct.seq_midisynth* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  %7 = load %struct.seq_midisynth*, %struct.seq_midisynth** %2, align 8
  %8 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.seq_midisynth*, %struct.seq_midisynth** %2, align 8
  %13 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.seq_midisynth*, %struct.seq_midisynth** %2, align 8
  %16 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snd_seq_event_port_detach(i64 %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %6
  %20 = load %struct.seq_midisynth*, %struct.seq_midisynth** %2, align 8
  %21 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_midi_event_free(i32 %22)
  br label %24

24:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @snd_seq_event_port_detach(i64, i32) #1

declare dso_local i32 @snd_midi_event_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
