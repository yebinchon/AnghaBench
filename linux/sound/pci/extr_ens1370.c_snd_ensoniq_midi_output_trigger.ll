; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ensoniq* }
%struct.ensoniq = type { i8, i32 }

@UART_STATUS = common dso_local global i32 0, align 4
@ES_TXRDY = common dso_local global i32 0, align 4
@ES_TXINTENM = common dso_local global i8 0, align 1
@UART_DATA = common dso_local global i32 0, align 4
@UART_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_ensoniq_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ensoniq_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ensoniq*, align 8
  %7 = alloca i8, align 1
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ensoniq*, %struct.ensoniq** %11, align 8
  store %struct.ensoniq* %12, %struct.ensoniq** %6, align 8
  %13 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %14 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %13, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %2
  %20 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %21 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 4
  %23 = call i32 @ES_TXINTENI(i8 zeroext %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %79

25:                                               ; preds = %19
  %26 = call zeroext i8 @ES_TXINTENO(i32 1)
  %27 = zext i8 %26 to i32
  %28 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %29 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, %27
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 4
  br label %34

34:                                               ; preds = %70, %25
  %35 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %36 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 4
  %38 = call i32 @ES_TXINTENI(i8 zeroext %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %42 = load i32, i32* @UART_STATUS, align 4
  %43 = call i32 @ES_REG(%struct.ensoniq* %41, i32 %42)
  %44 = call i32 @inb(i32 %43)
  %45 = load i32, i32* @ES_TXRDY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %40, %34
  %49 = phi i1 [ false, %34 ], [ %47, %40 ]
  br i1 %49, label %50, label %71

50:                                               ; preds = %48
  %51 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %52 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %51, i8* %7, i32 1)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i8, i8* @ES_TXINTENM, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, -1
  %58 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %59 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 4
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, %57
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 4
  br label %70

64:                                               ; preds = %50
  %65 = load i8, i8* %7, align 1
  %66 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %67 = load i32, i32* @UART_DATA, align 4
  %68 = call i32 @ES_REG(%struct.ensoniq* %66, i32 %67)
  %69 = call i32 @outb(i8 zeroext %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %54
  br label %34

71:                                               ; preds = %48
  %72 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %73 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 4
  %75 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %76 = load i32, i32* @UART_CONTROL, align 4
  %77 = call i32 @ES_REG(%struct.ensoniq* %75, i32 %76)
  %78 = call i32 @outb(i8 zeroext %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %19
  br label %104

80:                                               ; preds = %2
  %81 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %82 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 4
  %84 = call i32 @ES_TXINTENI(i8 zeroext %83)
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i8, i8* @ES_TXINTENM, align 1
  %88 = zext i8 %87 to i32
  %89 = xor i32 %88, -1
  %90 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %91 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %90, i32 0, i32 0
  %92 = load i8, i8* %91, align 4
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, %89
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 4
  %96 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %97 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 4
  %99 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %100 = load i32, i32* @UART_CONTROL, align 4
  %101 = call i32 @ES_REG(%struct.ensoniq* %99, i32 %100)
  %102 = call i32 @outb(i8 zeroext %98, i32 %101)
  br label %103

103:                                              ; preds = %86, %80
  br label %104

104:                                              ; preds = %103, %79
  %105 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %106 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %105, i32 0, i32 1
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ES_TXINTENI(i8 zeroext) #1

declare dso_local zeroext i8 @ES_TXINTENO(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
