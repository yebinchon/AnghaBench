; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, i32, i32, %struct.snd_rawmidi* }
%struct.snd_rawmidi = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DATA_AVAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@SB_OPEN_MIDI_INPUT_TRIGGER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sb8dsp_midi_interrupt(%struct.snd_sb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sb*, align 8
  %4 = alloca %struct.snd_rawmidi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.snd_sb* %0, %struct.snd_sb** %3, align 8
  store i32 64, i32* %5, align 4
  %7 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %8 = icmp ne %struct.snd_sb* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %13 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %12, i32 0, i32 3
  %14 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %13, align 8
  store %struct.snd_rawmidi* %14, %struct.snd_rawmidi** %4, align 8
  %15 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %16 = icmp ne %struct.snd_rawmidi* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %19 = load i32, i32* @DATA_AVAIL, align 4
  %20 = call i32 @SBP(%struct.snd_sb* %18, i32 %19)
  %21 = call i32 @inb(i32 %20)
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %11
  %24 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %25 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  br label %27

27:                                               ; preds = %56, %23
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = icmp sgt i32 %28, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %33 = load i32, i32* @DATA_AVAIL, align 4
  %34 = call i32 @SBP(%struct.snd_sb* %32, i32 %33)
  %35 = call i32 @inb(i32 %34)
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %40 = load i32, i32* @READ, align 4
  %41 = call i32 @SBP(%struct.snd_sb* %39, i32 %40)
  %42 = call i32 @inb(i32 %41)
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %6, align 1
  %44 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %45 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SB_OPEN_MIDI_INPUT_TRIGGER, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %52 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snd_rawmidi_receive(i32 %53, i8* %6, i32 1)
  br label %55

55:                                               ; preds = %50, %38
  br label %56

56:                                               ; preds = %55, %31
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %59 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %17, %9
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @SBP(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_rawmidi_receive(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
