; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca_midi.c_ca_midi_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca_midi.c_ca_midi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca_midi = type { %struct.snd_rawmidi*, i32, i32, i32, i32, i8*, i32 (i8*)* }
%struct.snd_rawmidi = type { i32, i32, %struct.snd_ca_midi*, i32 }

@ca_midi_interrupt = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@ca_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@ca_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@ca_rmidi_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ca_midi_init(i8* %0, %struct.snd_ca_midi* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_ca_midi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.snd_rawmidi*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.snd_ca_midi* %1, %struct.snd_ca_midi** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %13 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %12, i32 0, i32 6
  %14 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  %15 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %16 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 %14(i8* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @snd_rawmidi_new(i32 %18, i8* %19, i32 %20, i32 1, i32 1, %struct.snd_rawmidi** %10)
  store i32 %21, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %70

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %28 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @ca_midi_interrupt, align 4
  %30 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %31 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %33 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %32, i32 0, i32 3
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %36 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %35, i32 0, i32 2
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %39 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %42 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strcpy(i32 %43, i8* %44)
  %46 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %47 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %48 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %46, i32 %47, i32* @ca_midi_output)
  %49 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %50 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %51 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %49, i32 %50, i32* @ca_midi_input)
  %52 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %53 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %58 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %62 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %63 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %62, i32 0, i32 2
  store %struct.snd_ca_midi* %61, %struct.snd_ca_midi** %63, align 8
  %64 = load i32, i32* @ca_rmidi_free, align 4
  %65 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %66 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %10, align 8
  %68 = load %struct.snd_ca_midi*, %struct.snd_ca_midi** %7, align 8
  %69 = getelementptr inbounds %struct.snd_ca_midi, %struct.snd_ca_midi* %68, i32 0, i32 0
  store %struct.snd_rawmidi* %67, %struct.snd_rawmidi** %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %25, %23
  %71 = load i32, i32* %5, align 4
  ret i32 %71
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
