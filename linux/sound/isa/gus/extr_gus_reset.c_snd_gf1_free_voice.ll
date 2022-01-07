; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_reset.c_snd_gf1_free_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_reset.c_snd_gf1_free_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_gus_voice = type { i32, void (%struct.snd_gus_voice*)*, i32*, i64, i64, i32* }

@SNDRV_GF1_HANDLER_VOICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_gf1_free_voice(%struct.snd_gus_card* %0, %struct.snd_gus_voice* %1) #0 {
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca %struct.snd_gus_voice*, align 8
  %5 = alloca i64, align 8
  %6 = alloca void (%struct.snd_gus_voice*)*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  store %struct.snd_gus_voice* %1, %struct.snd_gus_voice** %4, align 8
  %7 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %8 = icmp eq %struct.snd_gus_voice* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %11 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %68

15:                                               ; preds = %9
  %16 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %17 = load i32, i32* @SNDRV_GF1_HANDLER_VOICE, align 4
  %18 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %19 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  %22 = call i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card* %16, i32 %21)
  %23 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %24 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %25 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %28 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @snd_gf1_clear_voices(%struct.snd_gus_card* %23, i32 %26, i32 %29)
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %32 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %36 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %35, i32 0, i32 1
  %37 = load void (%struct.snd_gus_voice*)*, void (%struct.snd_gus_voice*)** %36, align 8
  store void (%struct.snd_gus_voice*)* %37, void (%struct.snd_gus_voice*)** %6, align 8
  %38 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %39 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %38, i32 0, i32 1
  store void (%struct.snd_gus_voice*)* null, void (%struct.snd_gus_voice*)** %39, align 8
  %40 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %41 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %43 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %15
  %47 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %48 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %15
  %53 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %54 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %56 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  %58 = getelementptr inbounds %struct.snd_gus_voice, %struct.snd_gus_voice* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %60 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %59, i32 0, i32 0
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load void (%struct.snd_gus_voice*)*, void (%struct.snd_gus_voice*)** %6, align 8
  %64 = icmp ne void (%struct.snd_gus_voice*)* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load void (%struct.snd_gus_voice*)*, void (%struct.snd_gus_voice*)** %6, align 8
  %67 = load %struct.snd_gus_voice*, %struct.snd_gus_voice** %4, align 8
  call void %66(%struct.snd_gus_voice* %67)
  br label %68

68:                                               ; preds = %14, %65, %52
  ret void
}

declare dso_local i32 @snd_gf1_set_default_handlers(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_clear_voices(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
