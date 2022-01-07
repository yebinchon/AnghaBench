; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.emu10k1x_midi* }
%struct.emu10k1x_midi = type { i32, i32, i32, %struct.emu10k1x* }
%struct.emu10k1x = type { i32 }

@EMU10K1X_MIDI_MODE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_emu10k1x_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1x_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu10k1x*, align 8
  %6 = alloca %struct.emu10k1x_midi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %13, align 8
  store %struct.emu10k1x_midi* %14, %struct.emu10k1x_midi** %6, align 8
  %15 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %16 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %15, i32 0, i32 3
  %17 = load %struct.emu10k1x*, %struct.emu10k1x** %16, align 8
  store %struct.emu10k1x* %17, %struct.emu10k1x** %5, align 8
  %18 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %19 = icmp ne %struct.emu10k1x* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %82

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %25
  store i32 4, i32* %8, align 4
  %29 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %30 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %29, i32 0, i32 2
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %65, %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %38 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %39 = call i64 @mpu401_output_ready(%struct.emu10k1x* %37, %struct.emu10k1x_midi* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %43 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EMU10K1X_MIDI_MODE_OUTPUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %50 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %49, i8* %9, i32 1)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %41
  %53 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %54 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %53, i32 0, i32 2
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %82

57:                                               ; preds = %48
  %58 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %59 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %60 = load i8, i8* %9, align 1
  %61 = call i32 @mpu401_write_data(%struct.emu10k1x* %58, %struct.emu10k1x_midi* %59, i8 zeroext %60)
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %36
  br label %66

65:                                               ; preds = %57
  br label %33

66:                                               ; preds = %64, %33
  %67 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %68 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %67, i32 0, i32 2
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %72 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %73 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_emu10k1x_intr_enable(%struct.emu10k1x* %71, i32 %74)
  br label %82

76:                                               ; preds = %25
  %77 = load %struct.emu10k1x*, %struct.emu10k1x** %5, align 8
  %78 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %6, align 8
  %79 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x* %77, i32 %80)
  br label %82

82:                                               ; preds = %24, %52, %76, %66
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mpu401_output_ready(%struct.emu10k1x*, %struct.emu10k1x_midi*) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mpu401_write_data(%struct.emu10k1x*, %struct.emu10k1x_midi*, i8 zeroext) #1

declare dso_local i32 @snd_emu10k1x_intr_enable(%struct.emu10k1x*, i32) #1

declare dso_local i32 @snd_emu10k1x_intr_disable(%struct.emu10k1x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
