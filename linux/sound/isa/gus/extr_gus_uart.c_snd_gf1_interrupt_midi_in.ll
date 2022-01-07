; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_uart.c_snd_gf1_interrupt_midi_in.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_uart.c_snd_gf1_interrupt_midi_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*)* @snd_gf1_interrupt_midi_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_interrupt_midi_in(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  store i32 10, i32* %3, align 4
  br label %8

8:                                                ; preds = %79, %48, %38, %22, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %80

11:                                               ; preds = %8
  %12 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %13 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %12, i32 0, i32 2
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %17 = call zeroext i8 @snd_gf1_uart_stat(%struct.snd_gus_card* %16)
  store i8 %17, i8* %4, align 1
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %11
  %23 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %24 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %23, i32 0, i32 2
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %11
  store i32 100, i32* %3, align 4
  %30 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %31 = call zeroext i8 @snd_gf1_uart_get(%struct.snd_gus_card* %30)
  store i8 %31, i8* %5, align 1
  %32 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %33 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %40 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %39, i32 0, i32 2
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %8

43:                                               ; preds = %29
  %44 = load i8, i8* %4, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %50 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %55 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %54, i32 0, i32 2
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %8

58:                                               ; preds = %43
  %59 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %60 = call zeroext i8 @snd_gf1_uart_get(%struct.snd_gus_card* %59)
  store i8 %60, i8* %6, align 1
  %61 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %62 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %61, i32 0, i32 2
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %66 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snd_rawmidi_receive(i32 %67, i8* %6, i32 1)
  %69 = load i8, i8* %4, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %75 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %58
  br label %8

80:                                               ; preds = %8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_gf1_uart_stat(%struct.snd_gus_card*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local zeroext i8 @snd_gf1_uart_get(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_rawmidi_receive(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
