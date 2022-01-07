; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_free_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_free_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32 }
%struct.snd_trident_voice = type { void (%struct.snd_trident_voice*)*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_trident_free_voice(%struct.snd_trident* %0, %struct.snd_trident_voice* %1) #0 {
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.snd_trident_voice*, align 8
  %5 = alloca i64, align 8
  %6 = alloca void (%struct.snd_trident_voice*)*, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  store %struct.snd_trident_voice* %1, %struct.snd_trident_voice** %4, align 8
  %7 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %8 = icmp eq %struct.snd_trident_voice* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %11 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %10, i32 0, i32 9
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %84

15:                                               ; preds = %9
  %16 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %17 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %18 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %21 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snd_trident_clear_voices(%struct.snd_trident* %16, i32 %19, i32 %22)
  %24 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %25 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %29 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %28, i32 0, i32 0
  %30 = load void (%struct.snd_trident_voice*)*, void (%struct.snd_trident_voice*)** %29, align 8
  store void (%struct.snd_trident_voice*)* %30, void (%struct.snd_trident_voice*)** %6, align 8
  %31 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %32 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %31, i32 0, i32 0
  store void (%struct.snd_trident_voice*)* null, void (%struct.snd_trident_voice*)** %32, align 8
  %33 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %34 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %33, i32 0, i32 11
  store i32* null, i32** %34, align 8
  %35 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %36 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %15
  %40 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %41 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %42 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snd_trident_free_pcm_channel(%struct.snd_trident* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %15
  %46 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %47 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %52 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %53 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_trident_free_synth_channel(%struct.snd_trident* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %58 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %60 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %62 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %61, i32 0, i32 8
  store i64 0, i64* %62, align 8
  %63 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %64 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %63, i32 0, i32 9
  store i64 0, i64* %64, align 8
  %65 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %66 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %68 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %70 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  %71 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %72 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %74 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %76 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %75, i32 0, i32 0
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load void (%struct.snd_trident_voice*)*, void (%struct.snd_trident_voice*)** %6, align 8
  %80 = icmp ne void (%struct.snd_trident_voice*)* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %56
  %82 = load void (%struct.snd_trident_voice*)*, void (%struct.snd_trident_voice*)** %6, align 8
  %83 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  call void %82(%struct.snd_trident_voice* %83)
  br label %84

84:                                               ; preds = %14, %81, %56
  ret void
}

declare dso_local i32 @snd_trident_clear_voices(%struct.snd_trident*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_trident_free_pcm_channel(%struct.snd_trident*, i32) #1

declare dso_local i32 @snd_trident_free_synth_channel(%struct.snd_trident*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
