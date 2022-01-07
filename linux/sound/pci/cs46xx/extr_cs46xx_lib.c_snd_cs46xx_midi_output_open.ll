; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_output_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_cs46xx* }
%struct.snd_cs46xx = type { i32, i32, i32, %struct.snd_rawmidi_substream*, i32 (%struct.snd_cs46xx*, i32)* }

@CS46XX_MODE_OUTPUT = common dso_local global i32 0, align 4
@MIDCR_TXE = common dso_local global i32 0, align 4
@CS46XX_MODE_INPUT = common dso_local global i32 0, align 4
@BA0_MIDCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_cs46xx_midi_output_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_midi_output_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_cs46xx*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %4 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  store %struct.snd_cs46xx* %8, %struct.snd_cs46xx** %3, align 8
  %9 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %10 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %9, i32 0, i32 4
  %11 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %10, align 8
  %12 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %13 = call i32 %11(%struct.snd_cs46xx* %12, i32 1)
  %14 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %15 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load i32, i32* @CS46XX_MODE_OUTPUT, align 4
  %18 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %19 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @MIDCR_TXE, align 4
  %23 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %24 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %28 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %29 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %28, i32 0, i32 3
  store %struct.snd_rawmidi_substream* %27, %struct.snd_rawmidi_substream** %29, align 8
  %30 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %31 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CS46XX_MODE_INPUT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %38 = call i32 @snd_cs46xx_midi_reset(%struct.snd_cs46xx* %37)
  br label %46

39:                                               ; preds = %1
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %41 = load i32, i32* @BA0_MIDCR, align 4
  %42 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %43 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  %47 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %48 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_irq(i32* %48)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cs46xx_midi_reset(%struct.snd_cs46xx*) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
