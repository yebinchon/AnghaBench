; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_cs46xx* }
%struct.snd_cs46xx = type { i32, i32, i32 (%struct.snd_cs46xx*, i32)*, i32, i32* }

@MIDCR_RXE = common dso_local global i32 0, align 4
@MIDCR_RIE = common dso_local global i32 0, align 4
@CS46XX_MODE_OUTPUT = common dso_local global i32 0, align 4
@BA0_MIDCR = common dso_local global i32 0, align 4
@CS46XX_MODE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_cs46xx_midi_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_midi_input_close(%struct.snd_rawmidi_substream* %0) #0 {
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
  %10 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %9, i32 0, i32 3
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load i32, i32* @MIDCR_RXE, align 4
  %13 = load i32, i32* @MIDCR_RIE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %17 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %21 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %23 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CS46XX_MODE_OUTPUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %30 = call i32 @snd_cs46xx_midi_reset(%struct.snd_cs46xx* %29)
  br label %38

31:                                               ; preds = %1
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %33 = load i32, i32* @BA0_MIDCR, align 4
  %34 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %35 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i32, i32* @CS46XX_MODE_INPUT, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %42 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %46 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %45, i32 0, i32 3
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %49 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %48, i32 0, i32 2
  %50 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %49, align 8
  %51 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %52 = call i32 %50(%struct.snd_cs46xx* %51, i32 -1)
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
