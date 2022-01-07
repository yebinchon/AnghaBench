; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_make_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_make_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%struct.midi_info = type { i32, i32, i64, i64 }
%struct.seq_oss_midi = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_midi_make_info(%struct.seq_oss_devinfo* %0, i32 %1, %struct.midi_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.midi_info*, align 8
  %8 = alloca %struct.seq_oss_midi*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.midi_info* %2, %struct.midi_info** %7, align 8
  %9 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo* %9, i32 %10)
  store %struct.seq_oss_midi* %11, %struct.seq_oss_midi** %8, align 8
  %12 = icmp eq %struct.seq_oss_midi* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.midi_info*, %struct.midi_info** %7, align 8
  %19 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.midi_info*, %struct.midi_info** %7, align 8
  %21 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.midi_info*, %struct.midi_info** %7, align 8
  %23 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.midi_info*, %struct.midi_info** %7, align 8
  %25 = getelementptr inbounds %struct.midi_info, %struct.midi_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %8, align 8
  %28 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlcpy(i32 %26, i32 %29, i32 4)
  %31 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %8, align 8
  %32 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %31, i32 0, i32 0
  %33 = call i32 @snd_use_lock_free(i32* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %16, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
