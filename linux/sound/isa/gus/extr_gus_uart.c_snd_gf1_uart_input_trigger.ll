; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_uart.c_snd_gf1_uart_input_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_uart.c_snd_gf1_uart_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_gus_card* }
%struct.snd_gus_card = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_gf1_uart_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_uart_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.snd_gus_card*, %struct.snd_gus_card** %10, align 8
  store %struct.snd_gus_card* %11, %struct.snd_gus_card** %5, align 8
  %12 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %13 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %20 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %27 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %28 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 128
  %32 = call i32 @snd_gf1_uart_cmd(%struct.snd_gus_card* %26, i32 %31)
  br label %33

33:                                               ; preds = %25, %18
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %36 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %43 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %44 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -129
  %48 = call i32 @snd_gf1_uart_cmd(%struct.snd_gus_card* %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %34
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %52 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %51, i32 0, i32 0
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_gf1_uart_cmd(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
