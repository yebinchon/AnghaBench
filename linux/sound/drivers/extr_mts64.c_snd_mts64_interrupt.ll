; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_snd_mts64_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mts64.c_snd_mts64_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mts64 = type { i32, i32*, i32, %struct.snd_rawmidi_substream**, %struct.TYPE_2__* }
%struct.snd_rawmidi_substream = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_card = type { %struct.mts64* }

@MTS64_STAT_PORT = common dso_local global i32 0, align 4
@MTS64_MODE_INPUT_TRIGGERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @snd_mts64_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mts64_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mts64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_rawmidi_substream*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.snd_card*
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 0
  %11 = load %struct.mts64*, %struct.mts64** %10, align 8
  store %struct.mts64* %11, %struct.mts64** %3, align 8
  %12 = load %struct.mts64*, %struct.mts64** %3, align 8
  %13 = getelementptr inbounds %struct.mts64, %struct.mts64* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.mts64*, %struct.mts64** %3, align 8
  %16 = getelementptr inbounds %struct.mts64, %struct.mts64* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mts64_read(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MTS64_STAT_PORT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mts64_map_midi_input(i32 %30)
  %32 = load %struct.mts64*, %struct.mts64** %3, align 8
  %33 = getelementptr inbounds %struct.mts64, %struct.mts64* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %65

34:                                               ; preds = %1
  %35 = load %struct.mts64*, %struct.mts64** %3, align 8
  %36 = getelementptr inbounds %struct.mts64, %struct.mts64* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %66

40:                                               ; preds = %34
  %41 = load %struct.mts64*, %struct.mts64** %3, align 8
  %42 = getelementptr inbounds %struct.mts64, %struct.mts64* %41, i32 0, i32 3
  %43 = load %struct.snd_rawmidi_substream**, %struct.snd_rawmidi_substream*** %42, align 8
  %44 = load %struct.mts64*, %struct.mts64** %3, align 8
  %45 = getelementptr inbounds %struct.mts64, %struct.mts64* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %43, i64 %47
  %49 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %48, align 8
  store %struct.snd_rawmidi_substream* %49, %struct.snd_rawmidi_substream** %7, align 8
  %50 = load %struct.mts64*, %struct.mts64** %3, align 8
  %51 = getelementptr inbounds %struct.mts64, %struct.mts64* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %7, align 8
  %54 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MTS64_MODE_INPUT_TRIGGERED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %7, align 8
  %63 = call i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %62, i32* %6, i32 1)
  br label %64

64:                                               ; preds = %61, %40
  br label %65

65:                                               ; preds = %64, %29
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %struct.mts64*, %struct.mts64** %3, align 8
  %68 = getelementptr inbounds %struct.mts64, %struct.mts64* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock(i32* %68)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mts64_read(i32) #1

declare dso_local i32 @mts64_map_midi_input(i32) #1

declare dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
