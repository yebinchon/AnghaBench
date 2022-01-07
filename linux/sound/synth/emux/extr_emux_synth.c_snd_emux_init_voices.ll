; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_init_voices.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_init_voices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i32, i32, %struct.snd_emux_voice* }
%struct.snd_emux_voice = type { i32, i32, %struct.snd_emux*, i64, i32*, i32*, i32 }

@SNDRV_EMUX_ST_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_init_voices(%struct.snd_emux* %0) #0 {
  %2 = alloca %struct.snd_emux*, align 8
  %3 = alloca %struct.snd_emux_voice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %2, align 8
  %6 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %7 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %42, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %13 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  %17 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %17, i32 0, i32 3
  %19 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %19, i64 %21
  store %struct.snd_emux_voice* %22, %struct.snd_emux_voice** %3, align 8
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %24 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load i32, i32* @SNDRV_EMUX_ST_OFF, align 4
  %26 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %27 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %29 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %31 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %33 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %35 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %36 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %35, i32 0, i32 2
  store %struct.snd_emux* %34, %struct.snd_emux** %36, align 8
  %37 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %38 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %41 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %16
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %10

45:                                               ; preds = %10
  %46 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %47 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %46, i32 0, i32 1
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
