; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_do_emu10k1_midi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emumpu401.c_do_emu10k1_midi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_midi = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i32* }

@EMU10K1_MIDI_MODE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*, i32)* @do_emu10k1_midi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_emu10k1_midi_interrupt(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_midi* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_midi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_midi* %1, %struct.snd_emu10k1_midi** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %9 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %8, i32 0, i32 9
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %14 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %15 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %13, i32 %20)
  br label %108

22:                                               ; preds = %3
  %23 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %23, i32 0, i32 7
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %22
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %34 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %35 = call i64 @mpu401_input_avail(%struct.snd_emu10k1* %33, %struct.snd_emu10k1_midi* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EMU10K1_MIDI_MODE_INPUT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %46 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %47 = call i32 @mpu401_clear_rx(%struct.snd_emu10k1* %45, %struct.snd_emu10k1_midi* %46)
  br label %62

48:                                               ; preds = %37
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %50 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %51 = call zeroext i8 @mpu401_read_data(%struct.snd_emu10k1* %49, %struct.snd_emu10k1_midi* %50)
  store i8 %51, i8* %7, align 1
  %52 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @snd_rawmidi_receive(i64 %59, i8* %7, i32 1)
  br label %61

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62, %32, %22
  %64 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %64, i32 0, i32 7
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %67, i32 0, i32 5
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %72 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %63
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %78 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %79 = call i64 @mpu401_output_ready(%struct.snd_emu10k1* %77, %struct.snd_emu10k1_midi* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %83 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %88 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @snd_rawmidi_transmit(i64 %89, i8* %7, i32 1)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %94 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %95 = load i8, i8* %7, align 1
  %96 = call i32 @mpu401_write_data(%struct.snd_emu10k1* %93, %struct.snd_emu10k1_midi* %94, i8 zeroext %95)
  br label %103

97:                                               ; preds = %86, %81
  %98 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %99 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %100 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %92
  br label %104

104:                                              ; preds = %103, %76, %63
  %105 = load %struct.snd_emu10k1_midi*, %struct.snd_emu10k1_midi** %5, align 8
  %106 = getelementptr inbounds %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi* %105, i32 0, i32 5
  %107 = call i32 @spin_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %12
  ret void
}

declare dso_local i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mpu401_input_avail(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*) #1

declare dso_local i32 @mpu401_clear_rx(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*) #1

declare dso_local zeroext i8 @mpu401_read_data(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*) #1

declare dso_local i32 @snd_rawmidi_receive(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @mpu401_output_ready(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*) #1

declare dso_local i32 @snd_rawmidi_transmit(i64, i8*, i32) #1

declare dso_local i32 @mpu401_write_data(%struct.snd_emu10k1*, %struct.snd_emu10k1_midi*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
