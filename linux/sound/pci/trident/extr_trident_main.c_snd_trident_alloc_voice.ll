; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_alloc_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_alloc_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident_voice = type { i32, i32, i32, i32, i32, i32*, i32*, i64, i64 }
%struct.snd_trident = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_trident_voice* }

@SNDRV_TRIDENT_VOICE_TYPE_PCM = common dso_local global i32 0, align 4
@SNDRV_TRIDENT_VOICE_TYPE_SYNTH = common dso_local global i32 0, align 4
@SNDRV_TRIDENT_VOICE_TYPE_MIDI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_trident_voice* @snd_trident_alloc_voice(%struct.snd_trident* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca %struct.snd_trident*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_trident_voice*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %14 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %13, i32 0, i32 0
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SNDRV_TRIDENT_VOICE_TYPE_PCM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %4
  %21 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %22 = call i32 @snd_trident_allocate_pcm_channel(%struct.snd_trident* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %27 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  store %struct.snd_trident_voice* null, %struct.snd_trident_voice** %5, align 8
  br label %104

30:                                               ; preds = %20
  %31 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %32 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %34, i64 %36
  store %struct.snd_trident_voice* %37, %struct.snd_trident_voice** %10, align 8
  %38 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %39 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %41 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %43 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %45 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %47 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %46, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %49 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %48, i32 0, i32 6
  store i32* null, i32** %49, align 8
  %50 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %51 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %50, i32 0, i32 0
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  store %struct.snd_trident_voice* %54, %struct.snd_trident_voice** %5, align 8
  br label %104

55:                                               ; preds = %4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SNDRV_TRIDENT_VOICE_TYPE_SYNTH, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %55
  %60 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %61 = call i32 @snd_trident_allocate_synth_channel(%struct.snd_trident* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %66 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %65, i32 0, i32 0
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  store %struct.snd_trident_voice* null, %struct.snd_trident_voice** %5, align 8
  br label %104

69:                                               ; preds = %59
  %70 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %71 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %73, i64 %75
  store %struct.snd_trident_voice* %76, %struct.snd_trident_voice** %10, align 8
  %77 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %78 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %80 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %83 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %86 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  %88 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %87, i32 0, i32 5
  store i32* null, i32** %88, align 8
  %89 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %90 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %89, i32 0, i32 0
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %10, align 8
  store %struct.snd_trident_voice* %93, %struct.snd_trident_voice** %5, align 8
  br label %104

94:                                               ; preds = %55
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @SNDRV_TRIDENT_VOICE_TYPE_MIDI, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98, %94
  %100 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %101 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %100, i32 0, i32 0
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  store %struct.snd_trident_voice* null, %struct.snd_trident_voice** %5, align 8
  br label %104

104:                                              ; preds = %99, %69, %64, %30, %25
  %105 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  ret %struct.snd_trident_voice* %105
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_trident_allocate_pcm_channel(%struct.snd_trident*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_trident_allocate_synth_channel(%struct.snd_trident*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
