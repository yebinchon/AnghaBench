; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i32, i64, %struct.TYPE_2__, %struct.snd_emux_voice* }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux.0*, i32)*, i32 (%struct.snd_emux_voice*)* }
%struct.snd_emux.0 = type opaque
%struct.snd_emux_voice = type { i64, i64 }

@SNDRV_EMUX_ST_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_terminate_all(%struct.snd_emux* %0) #0 {
  %2 = alloca %struct.snd_emux*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emux_voice*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %2, align 8
  %6 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %7 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %70, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %13 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %10
  %17 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %17, i32 0, i32 4
  %19 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %19, i64 %21
  store %struct.snd_emux_voice* %22, %struct.snd_emux_voice** %4, align 8
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %24 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @STATE_IS_PLAYING(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %30 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %31 = call i32 @terminate_voice(%struct.snd_emux* %29, %struct.snd_emux_voice* %30, i32 0)
  br label %32

32:                                               ; preds = %28, %16
  %33 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %34 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SNDRV_EMUX_ST_OFF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %40 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %41, align 8
  %43 = icmp ne i32 (%struct.snd_emux_voice*)* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %46 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %47, align 8
  %49 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %50 = call i32 %48(%struct.snd_emux_voice* %49)
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %53 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.snd_emux.0*, i32)*, i32 (%struct.snd_emux.0*, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.snd_emux.0*, i32)* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %59 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.snd_emux.0*, i32)*, i32 (%struct.snd_emux.0*, i32)** %60, align 8
  %62 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %63 = bitcast %struct.snd_emux* %62 to %struct.snd_emux.0*
  %64 = load i32, i32* %3, align 4
  %65 = call i32 %61(%struct.snd_emux.0* %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %51
  br label %67

67:                                               ; preds = %66, %32
  %68 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %69 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %10

73:                                               ; preds = %10
  %74 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %75 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %77 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %76, i32 0, i32 1
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @STATE_IS_PLAYING(i64) #1

declare dso_local i32 @terminate_voice(%struct.snd_emux*, %struct.snd_emux_voice*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
