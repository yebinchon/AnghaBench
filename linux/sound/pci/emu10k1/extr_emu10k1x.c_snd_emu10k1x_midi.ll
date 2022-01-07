; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu10k1x = type { %struct.emu10k1x_midi }
%struct.emu10k1x_midi = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"EMU10K1X MPU-401 (UART)\00", align 1
@INTE_MIDITXENABLE = common dso_local global i32 0, align 4
@INTE_MIDIRXENABLE = common dso_local global i32 0, align 4
@MUDATA = common dso_local global i32 0, align 4
@IPR_MIDITRANSBUFEMPTY = common dso_local global i32 0, align 4
@IPR_MIDIRECVBUFEMPTY = common dso_local global i32 0, align 4
@snd_emu10k1x_midi_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu10k1x*)* @snd_emu10k1x_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_midi(%struct.emu10k1x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emu10k1x*, align 8
  %4 = alloca %struct.emu10k1x_midi*, align 8
  %5 = alloca i32, align 4
  store %struct.emu10k1x* %0, %struct.emu10k1x** %3, align 8
  %6 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %7 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %6, i32 0, i32 0
  store %struct.emu10k1x_midi* %7, %struct.emu10k1x_midi** %4, align 8
  %8 = load %struct.emu10k1x*, %struct.emu10k1x** %3, align 8
  %9 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %4, align 8
  %10 = call i32 @emu10k1x_midi_init(%struct.emu10k1x* %8, %struct.emu10k1x_midi* %9, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load i32, i32* @INTE_MIDITXENABLE, align 4
  %16 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %4, align 8
  %17 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @INTE_MIDIRXENABLE, align 4
  %19 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %4, align 8
  %20 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MUDATA, align 4
  %22 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %4, align 8
  %23 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IPR_MIDITRANSBUFEMPTY, align 4
  %25 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %4, align 8
  %26 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @IPR_MIDIRECVBUFEMPTY, align 4
  %28 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %4, align 8
  %29 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @snd_emu10k1x_midi_interrupt, align 4
  %31 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %4, align 8
  %32 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @emu10k1x_midi_init(%struct.emu10k1x*, %struct.emu10k1x_midi*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
