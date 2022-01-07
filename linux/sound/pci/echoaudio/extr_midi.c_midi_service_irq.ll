; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_midi_service_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_midi.c_midi_service_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@MIDI_IN_BUFFER_SIZE = common dso_local global i16 0, align 2
@MIDI_IN_SKIP_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @midi_service_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midi_service_irq(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %8 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call signext i16 @le16_to_cpu(i32 %14)
  store i16 %15, i16* %4, align 2
  %16 = load i16, i16* %4, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @MIDI_IN_BUFFER_SIZE, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp sge i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

25:                                               ; preds = %1
  store i16 1, i16* %6, align 2
  store i16 0, i16* %7, align 2
  store i16 1, i16* %6, align 2
  br label %26

26:                                               ; preds = %59, %25
  %27 = load i16, i16* %6, align 2
  %28 = sext i16 %27 to i32
  %29 = load i16, i16* %4, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i16, i16* %6, align 2
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call signext i16 @le16_to_cpu(i32 %41)
  store i16 %42, i16* %5, align 2
  %43 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %44 = load i16, i16* %5, align 2
  %45 = call i64 @mtc_process_data(%struct.echoaudio* %43, i16 signext %44)
  %46 = load i64, i64* @MIDI_IN_SKIP_DATA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %59

49:                                               ; preds = %32
  %50 = load i16, i16* %5, align 2
  %51 = sext i16 %50 to i64
  %52 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %53 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i16, i16* %7, align 2
  %56 = add i16 %55, 1
  store i16 %56, i16* %7, align 2
  %57 = sext i16 %55 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64 %51, i64* %58, align 8
  br label %59

59:                                               ; preds = %49, %48
  %60 = load i16, i16* %6, align 2
  %61 = add i16 %60, 1
  store i16 %61, i16* %6, align 2
  br label %26

62:                                               ; preds = %26
  %63 = load i16, i16* %7, align 2
  %64 = sext i16 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %24
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local signext i16 @le16_to_cpu(i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @mtc_process_data(%struct.echoaudio*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
