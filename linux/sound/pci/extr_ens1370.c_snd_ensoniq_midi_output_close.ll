; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi_output_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ens1370.c_snd_ensoniq_midi_output_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ensoniq* }
%struct.ensoniq = type { i32, i32, i32, i32*, i32 }

@ES_MODE_INPUT = common dso_local global i32 0, align 4
@UART_CONTROL = common dso_local global i32 0, align 4
@ES_UART_EN = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@ES_TXINTENM = common dso_local global i32 0, align 4
@ES_MODE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_ensoniq_midi_output_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ensoniq_midi_output_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.ensoniq*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %4 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ensoniq*, %struct.ensoniq** %7, align 8
  store %struct.ensoniq* %8, %struct.ensoniq** %3, align 8
  %9 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %10 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %13 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ES_MODE_INPUT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %1
  %19 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %20 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %22 = load i32, i32* @UART_CONTROL, align 4
  %23 = call i32 @ES_REG(%struct.ensoniq* %21, i32 %22)
  %24 = call i32 @outb(i32 0, i32 %23)
  %25 = load i32, i32* @ES_UART_EN, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %28 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %32 = load i32, i32* @CONTROL, align 4
  %33 = call i32 @ES_REG(%struct.ensoniq* %31, i32 %32)
  %34 = call i32 @outl(i32 %30, i32 %33)
  br label %46

35:                                               ; preds = %1
  %36 = load i32, i32* @ES_TXINTENM, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %39 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %43 = load i32, i32* @UART_CONTROL, align 4
  %44 = call i32 @ES_REG(%struct.ensoniq* %42, i32 %43)
  %45 = call i32 @outb(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %35, %18
  %47 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %48 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @ES_MODE_OUTPUT, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %52 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %56 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock_irq(i32* %56)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ES_REG(%struct.ensoniq*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
