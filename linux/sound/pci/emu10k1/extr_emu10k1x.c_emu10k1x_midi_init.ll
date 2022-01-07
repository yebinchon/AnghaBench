; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_emu10k1x_midi_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_emu10k1x_midi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu10k1x = type { i32 }
%struct.emu10k1x_midi = type { %struct.snd_rawmidi*, i32, i32, i32, %struct.emu10k1x* }
%struct.snd_rawmidi = type { i32, i32, %struct.emu10k1x_midi*, i32 }

@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_emu10k1x_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_emu10k1x_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@snd_emu10k1x_midi_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu10k1x*, %struct.emu10k1x_midi*, i32, i8*)* @emu10k1x_midi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu10k1x_midi_init(%struct.emu10k1x* %0, %struct.emu10k1x_midi* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.emu10k1x*, align 8
  %7 = alloca %struct.emu10k1x_midi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.snd_rawmidi*, align 8
  %11 = alloca i32, align 4
  store %struct.emu10k1x* %0, %struct.emu10k1x** %6, align 8
  store %struct.emu10k1x_midi* %1, %struct.emu10k1x_midi** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %13 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @snd_rawmidi_new(i32 %14, i8* %15, i32 %16, i32 1, i32 1, %struct.snd_rawmidi** %10)
  store i32 %17, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %63

21:                                               ; preds = %4
  %22 = load %struct.emu10k1x*, %struct.emu10k1x** %6, align 8
  %23 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %24 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %23, i32 0, i32 4
  store %struct.emu10k1x* %22, %struct.emu10k1x** %24, align 8
  %25 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %26 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %25, i32 0, i32 3
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %29 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %28, i32 0, i32 2
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %32 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %35 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strcpy(i32 %36, i8* %37)
  %39 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %40 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %41 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %39, i32 %40, i32* @snd_emu10k1x_midi_output)
  %42 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %43 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %44 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %42, i32 %43, i32* @snd_emu10k1x_midi_input)
  %45 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %46 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %51 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %55 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %56 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %55, i32 0, i32 2
  store %struct.emu10k1x_midi* %54, %struct.emu10k1x_midi** %56, align 8
  %57 = load i32, i32* @snd_emu10k1x_midi_free, align 4
  %58 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %59 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %61 = load %struct.emu10k1x_midi*, %struct.emu10k1x_midi** %7, align 8
  %62 = getelementptr inbounds %struct.emu10k1x_midi, %struct.emu10k1x_midi* %61, i32 0, i32 0
  store %struct.snd_rawmidi* %60, %struct.snd_rawmidi** %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %21, %19
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @snd_rawmidi_new(i32, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
