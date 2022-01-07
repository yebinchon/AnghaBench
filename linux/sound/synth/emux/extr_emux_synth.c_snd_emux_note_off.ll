; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_note_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_snd_emux_note_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32 }
%struct.snd_emux = type { i32, i32, i32, %struct.TYPE_2__, i32, %struct.snd_emux_voice* }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux_voice*)* }
%struct.snd_emux_voice = type { i32, i64, i32, %struct.snd_midi_channel* }
%struct.snd_emux_port = type { %struct.snd_emux* }

@SNDRV_EMUX_ST_RELEASED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SNDRV_EMUX_ST_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_note_off(i8* %0, i32 %1, i32 %2, %struct.snd_midi_channel* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_emux*, align 8
  %11 = alloca %struct.snd_emux_voice*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.snd_emux_port*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.snd_midi_channel* %3, %struct.snd_midi_channel** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.snd_emux_port*
  store %struct.snd_emux_port* %15, %struct.snd_emux_port** %13, align 8
  %16 = load %struct.snd_emux_port*, %struct.snd_emux_port** %13, align 8
  %17 = icmp ne %struct.snd_emux_port* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %20 = icmp ne %struct.snd_midi_channel* %19, null
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ true, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @snd_BUG_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %125

28:                                               ; preds = %22
  %29 = load %struct.snd_emux_port*, %struct.snd_emux_port** %13, align 8
  %30 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %29, i32 0, i32 0
  %31 = load %struct.snd_emux*, %struct.snd_emux** %30, align 8
  store %struct.snd_emux* %31, %struct.snd_emux** %10, align 8
  %32 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %33 = icmp ne %struct.snd_emux* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %36 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %37, align 8
  %39 = icmp ne i32 (%struct.snd_emux_voice*)* %38, null
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %34, %28
  %42 = phi i1 [ true, %28 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @snd_BUG_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %125

47:                                               ; preds = %41
  %48 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %49 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %48, i32 0, i32 2
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %117, %47
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %55 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %120

58:                                               ; preds = %52
  %59 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %60 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %59, i32 0, i32 5
  %61 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %61, i64 %63
  store %struct.snd_emux_voice* %64, %struct.snd_emux_voice** %11, align 8
  %65 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %11, align 8
  %66 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @STATE_IS_PLAYING(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %58
  %71 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %11, align 8
  %72 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %71, i32 0, i32 3
  %73 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %72, align 8
  %74 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %75 = icmp eq %struct.snd_midi_channel* %73, %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %70
  %77 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %11, align 8
  %78 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %76
  %83 = load i32, i32* @SNDRV_EMUX_ST_RELEASED, align 4
  %84 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %11, align 8
  %85 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %11, align 8
  %87 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @jiffies, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %82
  %92 = load i32, i32* @SNDRV_EMUX_ST_PENDING, align 4
  %93 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %11, align 8
  %94 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %96 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %101 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %100, i32 0, i32 4
  %102 = load i64, i64* @jiffies, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i32 @mod_timer(i32* %101, i64 %103)
  %105 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %106 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %99, %91
  br label %115

108:                                              ; preds = %82
  %109 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %110 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %111, align 8
  %113 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %11, align 8
  %114 = call i32 %112(%struct.snd_emux_voice* %113)
  br label %115

115:                                              ; preds = %108, %107
  br label %116

116:                                              ; preds = %115, %76, %70, %58
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %52

120:                                              ; preds = %52
  %121 = load %struct.snd_emux*, %struct.snd_emux** %10, align 8
  %122 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %121, i32 0, i32 2
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  br label %125

125:                                              ; preds = %120, %46, %27
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @STATE_IS_PLAYING(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
