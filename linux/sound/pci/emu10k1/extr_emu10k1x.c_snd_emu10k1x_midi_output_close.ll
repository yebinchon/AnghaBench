; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi_output_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi_output_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.emu10k1x_midi* }
%struct.emu10k1x_midi = type { i32, i32, i32*, i32, %struct.emu10k1x* }
%struct.emu10k1x = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EMU10K1X_MIDI_MODE_OUTPUT = common dso_local global i32 0, align 4
@EMU10K1X_MIDI_MODE_INPUT = common dso_local global i32 0, align 4
@MPU401_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_emu10k1x_midi_output_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_midi_output_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.emu10k1x*, align 8
  %5 = alloca %struct.emu10k1x_midi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %11, align 8
  store %struct.emu10k1x_midi* %12, %struct.emu10k1x_midi** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %14 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %13, i32 0, i32 4
  %15 = load %struct.emu10k1x*, %struct.emu10k1x** %14, align 8
  store %struct.emu10k1x* %15, %struct.emu10k1x** %4, align 8
  %16 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %17 = icmp ne %struct.emu10k1x* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %1
  %26 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %27 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %31 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %32 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x* %30, i32 %33)
  %35 = load i32, i32* @EMU10K1X_MIDI_MODE_OUTPUT, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %38 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %42 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %44 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EMU10K1X_MIDI_MODE_INPUT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %25
  %50 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %51 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %50, i32 0, i32 1
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %55 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %56 = load i32, i32* @MPU401_RESET, align 4
  %57 = call i32 @snd_emu10k1x_midi_cmd(%struct.emu10k1x* %54, %struct.emu10k1x_midi* %55, i32 %56, i32 0)
  store i32 %57, i32* %7, align 4
  br label %63

58:                                               ; preds = %25
  %59 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %60 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %59, i32 0, i32 1
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %49
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %22
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_emu10k1x_midi_cmd(%struct.emu10k1x*, %struct.emu10k1x_midi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
