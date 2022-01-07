; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_input_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_cs46xx* }
%struct.snd_cs46xx = type { i32, i32 }

@MIDCR_RIE = common dso_local global i32 0, align 4
@BA0_MIDCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_cs46xx_midi_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_midi_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_cs46xx*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %10, align 8
  store %struct.snd_cs46xx* %11, %struct.snd_cs46xx** %6, align 8
  %12 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %13 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %12, i32 0, i32 1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %20 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MIDCR_RIE, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i32, i32* @MIDCR_RIE, align 4
  %27 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %28 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %32 = load i32, i32* @BA0_MIDCR, align 4
  %33 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %34 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %25, %18
  br label %59

38:                                               ; preds = %2
  %39 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %40 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MIDCR_RIE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load i32, i32* @MIDCR_RIE, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %49 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %53 = load i32, i32* @BA0_MIDCR, align 4
  %54 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %55 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %45, %38
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %61 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %60, i32 0, i32 1
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
