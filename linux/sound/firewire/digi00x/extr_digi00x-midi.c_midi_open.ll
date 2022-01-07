; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-midi.c_midi_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-midi.c_midi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_dg00x* }
%struct.snd_dg00x = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @midi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midi_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_dg00x*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_dg00x*, %struct.snd_dg00x** %9, align 8
  store %struct.snd_dg00x* %10, %struct.snd_dg00x** %4, align 8
  %11 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %12 = call i32 @snd_dg00x_stream_lock_try(%struct.snd_dg00x* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %19 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %22 = call i32 @snd_dg00x_stream_reserve_duplex(%struct.snd_dg00x* %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %27 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %31 = call i32 @snd_dg00x_stream_start_duplex(%struct.snd_dg00x* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %36 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %25
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %42 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %48 = call i32 @snd_dg00x_stream_lock_release(%struct.snd_dg00x* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @snd_dg00x_stream_lock_try(%struct.snd_dg00x*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_dg00x_stream_reserve_duplex(%struct.snd_dg00x*, i32) #1

declare dso_local i32 @snd_dg00x_stream_start_duplex(%struct.snd_dg00x*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_dg00x_stream_lock_release(%struct.snd_dg00x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
