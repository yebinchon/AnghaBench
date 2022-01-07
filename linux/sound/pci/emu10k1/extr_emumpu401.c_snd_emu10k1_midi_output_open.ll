; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_snd_emu10k1_midi_output_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_snd_emu10k1_midi_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_midi = type { i32, i32, %struct.snd_rawmidi_substream*, %struct.snd_emu10k1* }

@ENXIO = common dso_local global i32 0, align 4
@EMU10K1_MIDI_MODE_OUTPUT = common dso_local global i32 0, align 4
@EMU10K1_MIDI_MODE_INPUT = common dso_local global i32 0, align 4
@MPU401_RESET = common dso_local global i32 0, align 4
@MPU401_ENTER_UART = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_emu10k1_midi_output_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_midi_output_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_midi*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.snd_emu10k1_midi*
  store %struct.snd_emu10k1_midi* %12, %struct.snd_emu10k1_midi** %5, align 8
  %13 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %13, i32 0, i32 3
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %14, align 8
  store %struct.snd_emu10k1* %15, %struct.snd_emu10k1** %4, align 8
  %16 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %17 = icmp ne %struct.snd_emu10k1* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %72

25:                                               ; preds = %1
  %26 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* @EMU10K1_MIDI_MODE_OUTPUT, align 4
  %31 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %36 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %36, i32 0, i32 2
  store %struct.snd_rawmidi_substream* %35, %struct.snd_rawmidi_substream** %37, align 8
  %38 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EMU10K1_MIDI_MODE_INPUT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %25
  %45 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %45, i32 0, i32 1
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %50 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %51 = load i32, i32* @MPU401_RESET, align 4
  %52 = call i64 @snd_emu10k1_midi_cmd(%struct.snd_emu10k1* %49, %struct.snd_emu10k1_midi* %50, i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %69

55:                                               ; preds = %44
  %56 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %57 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %58 = load i32, i32* @MPU401_ENTER_UART, align 4
  %59 = call i64 @snd_emu10k1_midi_cmd(%struct.snd_emu10k1* %56, %struct.snd_emu10k1_midi* %57, i32 %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %69

62:                                               ; preds = %55
  br label %68

63:                                               ; preds = %25
  %64 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %64, i32 0, i32 1
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %62
  store i32 0, i32* %2, align 4
  br label %72

69:                                               ; preds = %61, %54
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %68, %22
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @snd_emu10k1_midi_cmd(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
