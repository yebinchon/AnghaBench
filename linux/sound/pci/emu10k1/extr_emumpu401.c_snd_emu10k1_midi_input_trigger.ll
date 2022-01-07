; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_snd_emu10k1_midi_input_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_snd_emu10k1_midi_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_midi = type { i32, %struct.snd_emu10k1* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_emu10k1_midi_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_midi_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_midi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.snd_emu10k1_midi*
  store %struct.snd_emu10k1_midi* %12, %struct.snd_emu10k1_midi** %6, align 8
  %13 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %13, i32 0, i32 1
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %14, align 8
  store %struct.snd_emu10k1* %15, %struct.snd_emu10k1** %5, align 8
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %17 = icmp ne %struct.snd_emu10k1* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %28 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1* %27, i32 %30)
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %34 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %6, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %33, i32 %36)
  br label %38

38:                                               ; preds = %22, %32, %26
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
