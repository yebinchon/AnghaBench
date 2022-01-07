; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_sysex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_sysex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { %struct.snd_emu8000* }
%struct.snd_emu8000 = type { i32, i32 }
%struct.snd_midi_channel_set = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*, i8*, i32, i32, %struct.snd_midi_channel_set*)* @sysex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysex(%struct.snd_emux* %0, i8* %1, i32 %2, i32 %3, %struct.snd_midi_channel_set* %4) #0 {
  %6 = alloca %struct.snd_emux*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_midi_channel_set*, align 8
  %11 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_midi_channel_set* %4, %struct.snd_midi_channel_set** %10, align 8
  %12 = load %struct.snd_emux*, %struct.snd_emux** %6, align 8
  %13 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %12, i32 0, i32 0
  %14 = load %struct.snd_emu8000*, %struct.snd_emu8000** %13, align 8
  store %struct.snd_emu8000* %14, %struct.snd_emu8000** %11, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %32 [
    i32 129, label %16
    i32 128, label %24
  ]

16:                                               ; preds = %5
  %17 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %10, align 8
  %18 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_emu8000*, %struct.snd_emu8000** %11, align 8
  %21 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snd_emu8000*, %struct.snd_emu8000** %11, align 8
  %23 = call i32 @snd_emu8000_update_chorus_mode(%struct.snd_emu8000* %22)
  br label %32

24:                                               ; preds = %5
  %25 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %10, align 8
  %26 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_emu8000*, %struct.snd_emu8000** %11, align 8
  %29 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.snd_emu8000*, %struct.snd_emu8000** %11, align 8
  %31 = call i32 @snd_emu8000_update_reverb_mode(%struct.snd_emu8000* %30)
  br label %32

32:                                               ; preds = %5, %24, %16
  ret void
}

declare dso_local i32 @snd_emu8000_update_chorus_mode(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_update_reverb_mode(%struct.snd_emu8000*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
