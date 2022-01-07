; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.snd_sgio2audio = type { i32, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }

@AUDIO_CONTROL_RESET = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_11__* null, align 8
@snd_sgio2_isr_table = common dso_local global %struct.TYPE_10__* null, align 8
@MACEISA_RINGBUFFERS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sgio2audio*)* @snd_sgio2audio_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_free(%struct.snd_sgio2audio* %0) #0 {
  %2 = alloca %struct.snd_sgio2audio*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_sgio2audio* %0, %struct.snd_sgio2audio** %2, align 8
  %4 = load i32, i32* @AUDIO_CONTROL_RESET, align 4
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mace, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = call i32 @writeq(i32 %4, i32* %8)
  %10 = call i32 @udelay(i32 1)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mace, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = call i32 @writeq(i32 0, i32* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %39, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @snd_sgio2_isr_table, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @snd_sgio2_isr_table, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %2, align 8
  %29 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @snd_sgio2_isr_table, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = call i32 @free_irq(i32 %27, i32* %37)
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %2, align 8
  %44 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MACEISA_RINGBUFFERS_SIZE, align 4
  %49 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %2, align 8
  %50 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %2, align 8
  %53 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_free_coherent(i32 %47, i32 %48, i32 %51, i32 %54)
  %56 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %2, align 8
  %57 = call i32 @kfree(%struct.snd_sgio2audio* %56)
  ret i32 0
}

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_sgio2audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
