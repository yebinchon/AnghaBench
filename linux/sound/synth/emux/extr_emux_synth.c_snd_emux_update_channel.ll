; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_update_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_update_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_port = type { %struct.snd_emux* }
%struct.snd_emux = type { i32, i32, %struct.snd_emux_voice*, %struct.TYPE_2__ }
%struct.snd_emux_voice = type { %struct.snd_midi_channel* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_midi_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_update_channel(%struct.snd_emux_port* %0, %struct.snd_midi_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emux_port*, align 8
  %5 = alloca %struct.snd_midi_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_emux*, align 8
  %8 = alloca %struct.snd_emux_voice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_emux_port* %0, %struct.snd_emux_port** %4, align 8
  store %struct.snd_midi_channel* %1, %struct.snd_midi_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %70

14:                                               ; preds = %3
  %15 = load %struct.snd_emux_port*, %struct.snd_emux_port** %4, align 8
  %16 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %15, i32 0, i32 0
  %17 = load %struct.snd_emux*, %struct.snd_emux** %16, align 8
  store %struct.snd_emux* %17, %struct.snd_emux** %7, align 8
  %18 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %19 = icmp ne %struct.snd_emux* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %22 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %20, %14
  %28 = phi i1 [ true, %14 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @snd_BUG_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %70

33:                                               ; preds = %27
  %34 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %35 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %34, i32 0, i32 1
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %62, %33
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %41 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %46 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %45, i32 0, i32 2
  %47 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %47, i64 %49
  store %struct.snd_emux_voice* %50, %struct.snd_emux_voice** %8, align 8
  %51 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %8, align 8
  %52 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %51, i32 0, i32 0
  %53 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %52, align 8
  %54 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %55 = icmp eq %struct.snd_midi_channel* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %58 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @update_voice(%struct.snd_emux* %57, %struct.snd_emux_voice* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %67 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %66, i32 0, i32 1
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %32, %13
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_voice(%struct.snd_emux*, %struct.snd_emux_voice*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
