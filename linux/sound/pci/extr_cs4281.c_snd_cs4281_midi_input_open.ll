; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_midi_input_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_midi_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cs4281* }
%struct.cs4281 = type { i32, i32, i32, %struct.snd_rawmidi_substream* }

@BA0_MIDCR_RXE = common dso_local global i32 0, align 4
@CS4281_MODE_OUTPUT = common dso_local global i32 0, align 4
@BA0_MIDCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_cs4281_midi_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4281_midi_input_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.cs4281*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %4 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  store %struct.cs4281* %8, %struct.cs4281** %3, align 8
  %9 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %10 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load i32, i32* @BA0_MIDCR_RXE, align 4
  %13 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %14 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %18 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %19 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %18, i32 0, i32 3
  store %struct.snd_rawmidi_substream* %17, %struct.snd_rawmidi_substream** %19, align 8
  %20 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %21 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CS4281_MODE_OUTPUT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %28 = call i32 @snd_cs4281_midi_reset(%struct.cs4281* %27)
  br label %36

29:                                               ; preds = %1
  %30 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %31 = load i32, i32* @BA0_MIDCR, align 4
  %32 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %33 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %30, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.cs4281*, %struct.cs4281** %3, align 8
  %38 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock_irq(i32* %38)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cs4281_midi_reset(%struct.cs4281*) #1

declare dso_local i32 @snd_cs4281_pokeBA0(%struct.cs4281*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
