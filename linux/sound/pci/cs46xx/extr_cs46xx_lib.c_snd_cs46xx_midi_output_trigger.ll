; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_cs46xx* }
%struct.snd_cs46xx = type { i32, i32 }

@MIDCR_TIE = common dso_local global i32 0, align 4
@BA0_MIDSR = common dso_local global i32 0, align 4
@MIDSR_TBF = common dso_local global i32 0, align 4
@BA0_MIDWP = common dso_local global i32 0, align 4
@BA0_MIDCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_cs46xx_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca i8, align 1
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  store %struct.snd_cs46xx* %12, %struct.snd_cs46xx** %6, align 8
  %13 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %14 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %2
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %21 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MIDCR_TIE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %73

26:                                               ; preds = %19
  %27 = load i32, i32* @MIDCR_TIE, align 4
  %28 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %29 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %64, %26
  %33 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %34 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MIDCR_TIE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %41 = load i32, i32* @BA0_MIDSR, align 4
  %42 = call i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx* %40, i32 %41)
  %43 = load i32, i32* @MIDSR_TBF, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br label %46

46:                                               ; preds = %39, %32
  %47 = phi i1 [ false, %32 ], [ %45, %39 ]
  br i1 %47, label %48, label %65

48:                                               ; preds = %46
  %49 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %50 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %49, i8* %7, i32 1)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @MIDCR_TIE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %56 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %64

59:                                               ; preds = %48
  %60 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %61 = load i32, i32* @BA0_MIDWP, align 4
  %62 = load i8, i8* %7, align 1
  %63 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %60, i32 %61, i8 zeroext %62)
  br label %64

64:                                               ; preds = %59, %52
  br label %32

65:                                               ; preds = %46
  %66 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %67 = load i32, i32* @BA0_MIDCR, align 4
  %68 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %69 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = trunc i32 %70 to i8
  %72 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %66, i32 %67, i8 zeroext %71)
  br label %73

73:                                               ; preds = %65, %19
  br label %96

74:                                               ; preds = %2
  %75 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %76 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MIDCR_TIE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load i32, i32* @MIDCR_TIE, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %85 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %89 = load i32, i32* @BA0_MIDCR, align 4
  %90 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %91 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = trunc i32 %92 to i8
  %94 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %88, i32 %89, i8 zeroext %93)
  br label %95

95:                                               ; preds = %81, %74
  br label %96

96:                                               ; preds = %95, %73
  %97 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %98 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %97, i32 0, i32 1
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs46xx_peekBA0(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
