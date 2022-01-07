; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi_input_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.emu10k1x_midi* }
%struct.emu10k1x_midi = type { i32, i32, %struct.snd_rawmidi_substream*, %struct.emu10k1x* }
%struct.emu10k1x = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EMU10K1X_MIDI_MODE_INPUT = common dso_local global i32 0, align 4
@EMU10K1X_MIDI_MODE_OUTPUT = common dso_local global i32 0, align 4
@MPU401_RESET = common dso_local global i32 0, align 4
@MPU401_ENTER_UART = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_emu10k1x_midi_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_midi_input_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.emu10k1x*, align 8
  %5 = alloca %struct.emu10k1x_midi*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %10, align 8
  store %struct.emu10k1x_midi* %11, %struct.emu10k1x_midi** %5, align 8
  %12 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %13 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %12, i32 0, i32 3
  %14 = load %struct.emu10k1x*, %struct.emu10k1x** %13, align 8
  store %struct.emu10k1x* %14, %struct.emu10k1x** %4, align 8
  %15 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %16 = icmp ne %struct.emu10k1x* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %71

24:                                               ; preds = %1
  %25 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %26 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %25, i32 0, i32 1
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* @EMU10K1X_MIDI_MODE_INPUT, align 4
  %30 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %31 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %35 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %36 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %35, i32 0, i32 2
  store %struct.snd_rawmidi_substream* %34, %struct.snd_rawmidi_substream** %36, align 8
  %37 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %38 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EMU10K1X_MIDI_MODE_OUTPUT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %24
  %44 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %45 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %44, i32 0, i32 1
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %49 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %50 = load i32, i32* @MPU401_RESET, align 4
  %51 = call i64 @snd_emu10k1x_midi_cmd(%struct.emu10k1x* %48, %struct.emu10k1x_midi* %49, i32 %50, i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %68

54:                                               ; preds = %43
  %55 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %56 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %57 = load i32, i32* @MPU401_ENTER_UART, align 4
  %58 = call i64 @snd_emu10k1x_midi_cmd(%struct.emu10k1x* %55, %struct.emu10k1x_midi* %56, i32 %57, i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %68

61:                                               ; preds = %54
  br label %67

62:                                               ; preds = %24
  %63 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %5, align 8
  %64 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %63, i32 0, i32 1
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %61
  store i32 0, i32* %2, align 4
  br label %71

68:                                               ; preds = %60, %53
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %67, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @snd_emu10k1x_midi_cmd(%struct.emu10k1x*, %struct.emu10k1x_midi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
