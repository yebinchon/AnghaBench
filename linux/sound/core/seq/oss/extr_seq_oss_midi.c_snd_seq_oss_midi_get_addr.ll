; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%struct.snd_seq_addr = type { i32, i32 }
%struct.seq_oss_midi = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_oss_midi_get_addr(%struct.seq_oss_devinfo* %0, i32 %1, %struct.snd_seq_addr* %2) #0 {
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_addr*, align 8
  %7 = alloca %struct.seq_oss_midi*, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_seq_addr* %2, %struct.snd_seq_addr** %6, align 8
  %8 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo* %8, i32 %9)
  store %struct.seq_oss_midi* %10, %struct.seq_oss_midi** %7, align 8
  %11 = icmp eq %struct.seq_oss_midi* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %27

13:                                               ; preds = %3
  %14 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %7, align 8
  %15 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_seq_addr*, %struct.snd_seq_addr** %6, align 8
  %18 = getelementptr inbounds %struct.snd_seq_addr, %struct.snd_seq_addr* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %7, align 8
  %20 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_seq_addr*, %struct.snd_seq_addr** %6, align 8
  %23 = getelementptr inbounds %struct.snd_seq_addr, %struct.snd_seq_addr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.seq_oss_midi*, %struct.seq_oss_midi** %7, align 8
  %25 = getelementptr inbounds %struct.seq_oss_midi, %struct.seq_oss_midi* %24, i32 0, i32 0
  %26 = call i32 @snd_use_lock_free(i32* %25)
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.seq_oss_midi* @get_mididev(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i32 @snd_use_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
