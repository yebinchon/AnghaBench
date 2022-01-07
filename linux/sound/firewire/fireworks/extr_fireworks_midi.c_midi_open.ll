; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_midi.c_midi_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_midi.c_midi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_efw* }
%struct.snd_efw = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @midi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midi_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_efw*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %5 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.snd_efw*, %struct.snd_efw** %8, align 8
  store %struct.snd_efw* %9, %struct.snd_efw** %3, align 8
  %10 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %11 = call i32 @snd_efw_stream_lock_try(%struct.snd_efw* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %17 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %20 = call i32 @snd_efw_stream_reserve_duplex(%struct.snd_efw* %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %15
  %24 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %25 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %29 = call i32 @snd_efw_stream_start_duplex(%struct.snd_efw* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %34 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %23
  br label %38

38:                                               ; preds = %37, %15
  %39 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %40 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %46 = call i32 @snd_efw_stream_lock_release(%struct.snd_efw* %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @snd_efw_stream_lock_try(%struct.snd_efw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_efw_stream_reserve_duplex(%struct.snd_efw*, i32) #1

declare dso_local i32 @snd_efw_stream_start_duplex(%struct.snd_efw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_efw_stream_lock_release(%struct.snd_efw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
