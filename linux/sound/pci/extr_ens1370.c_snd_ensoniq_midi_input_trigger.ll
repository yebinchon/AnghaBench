; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi_input_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ensoniq* }
%struct.ensoniq = type { i32, i32 }

@ES_RXINTEN = common dso_local global i32 0, align 4
@UART_DATA = common dso_local global i32 0, align 4
@UART_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_ensoniq_midi_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ensoniq_midi_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ensoniq*, align 8
  %7 = alloca i32, align 4
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
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %21 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ES_RXINTEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %35, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %32 = load i32, i32* @UART_DATA, align 4
  %33 = call i32 @ES_REG(%struct.ensoniq* %31, i32 %32)
  %34 = call i32 @inb(i32 %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i32, i32* @ES_RXINTEN, align 4
  %40 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %41 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %45 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %48 = load i32, i32* @UART_CONTROL, align 4
  %49 = call i32 @ES_REG(%struct.ensoniq* %47, i32 %48)
  %50 = call i32 @outb(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %38, %19
  br label %74

52:                                               ; preds = %2
  %53 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %54 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ES_RXINTEN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load i32, i32* @ES_RXINTEN, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %63 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %67 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %70 = load i32, i32* @UART_CONTROL, align 4
  %71 = call i32 @ES_REG(%struct.ensoniq* %69, i32 %70)
  %72 = call i32 @outb(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %59, %52
  br label %74

74:                                               ; preds = %73, %51
  %75 = load %struct.ensoniq*, %struct.ensoniq** %6, align 8
  %76 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %75, i32 0, i32 1
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
