; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_exclusive_note_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_exclusive_note_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32, i32, %struct.snd_emux_voice* }
%struct.snd_emux_voice = type { %struct.TYPE_2__, %struct.snd_emux_port*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_emux_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*, %struct.snd_emux_port*, i32)* @exclusive_note_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exclusive_note_off(%struct.snd_emux* %0, %struct.snd_emux_port* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emux_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_emux_voice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %4, align 8
  store %struct.snd_emux_port* %1, %struct.snd_emux_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %11 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %10, i32 0, i32 1
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %50, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %17 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %22 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %21, i32 0, i32 2
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %23, i64 %25
  store %struct.snd_emux_voice* %26, %struct.snd_emux_voice** %7, align 8
  %27 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %7, align 8
  %28 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @STATE_IS_PLAYING(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %20
  %33 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %7, align 8
  %34 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %33, i32 0, i32 1
  %35 = load %struct.snd_emux_port*, %struct.snd_emux_port** %34, align 8
  %36 = load %struct.snd_emux_port*, %struct.snd_emux_port** %5, align 8
  %37 = icmp eq %struct.snd_emux_port* %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %7, align 8
  %40 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %47 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %7, align 8
  %48 = call i32 @terminate_voice(%struct.snd_emux* %46, %struct.snd_emux_voice* %47, i32 0)
  br label %49

49:                                               ; preds = %45, %38, %32, %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %55 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %54, i32 0, i32 1
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @STATE_IS_PLAYING(i32) #1

declare dso_local i32 @terminate_voice(%struct.snd_emux*, %struct.snd_emux_voice*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
